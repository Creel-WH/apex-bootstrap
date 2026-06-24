#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/install_utplsql.sh --app f100 <utplsql_release_dir>
EOF
}

resolve_utplsql_source_dir() {
  local candidate="$1"

  if [[ -f "${candidate}/install_headless.sql" ]]; then
    printf '%s\n' "${candidate}"
    return 0
  fi

  if [[ -f "${candidate}/source/install_headless.sql" ]]; then
    printf '%s/source\n' "${candidate}"
    return 0
  fi

  printf 'Could not find install_headless.sql under %s\n' "${candidate}" >&2
  return 1
}

resolve_utplsql_admin_connect_string() {
  if [[ -n "${UTPLSQL_ADMIN_CONNECT_STRING:-}" ]]; then
    printf '%s\n' "${UTPLSQL_ADMIN_CONNECT_STRING}"
    return 0
  fi

  if [[ -n "${UTPLSQL_ADMIN_USERNAME:-}" && -n "${UTPLSQL_ADMIN_PASSWORD:-}" ]]; then
    local tns_alias
    tns_alias="${UTPLSQL_ADMIN_TNS_ALIAS:-${DB_TNS_ALIAS:-}}"
    [[ -n "${tns_alias}" ]] || {
      printf 'UTPLSQL_ADMIN_TNS_ALIAS is required when deriving admin TNS connect string.\n' >&2
      return 1
    }
    printf '%s/"%s"@%s\n' "${UTPLSQL_ADMIN_USERNAME}" "${UTPLSQL_ADMIN_PASSWORD}" "${tns_alias}"
    return 0
  fi

  printf 'Missing utPLSQL admin credentials.\n' >&2
  return 1
}

main() {
  local selected_app=""
  local release_dir=""
  local source_dir
  local admin_connect_string

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --app)
        selected_app="${2:-}"
        shift 2
        ;;
      -h|--help)
        usage
        exit 0
        ;;
      *)
        release_dir="$1"
        shift
        ;;
    esac
  done

  [[ -n "${release_dir}" ]] || {
    printf 'Missing utPLSQL release directory.\n' >&2
    exit 1
  }

  load_db_env "${selected_app}"
  ensure_sqlcl
  validate_tns_config

  source_dir="$(resolve_utplsql_source_dir "${release_dir}")"
  admin_connect_string="$(resolve_utplsql_admin_connect_string)"

  "${DB_SQLCL_BIN}" -L -s "${admin_connect_string}" \
    @"${SCRIPT_DIR}/install_utplsql.sql" \
    "${source_dir}" \
    "${UTPLSQL_OWNER:-UT3}" \
    "${UTPLSQL_PASSWORD:-UT3}" \
    "${UTPLSQL_TABLESPACE:-USERS}" \
    "${UTPLSQL_TEMP_TABLESPACE:-TEMP}"

  printf "set define off\nselect owner, object_name from all_objects where object_name = 'UT' and object_type = 'PACKAGE';\n" | run_sqlcl
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
