#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/list_apex_apps.sh lab@adb
  tools/list_apex_apps.sh lab@adb LAB
EOF
}

finish() {
  local status="$1"

  return "${status}" 2>/dev/null || exit "${status}"
}

escape_sql_literal() {
  local value="$1"

  value="${value//\'/\'\'}"
  printf '%s' "${value}"
}

main() {
  local env_alias="${1:-}"
  local workspace_override="${2:-}"
  local workspace_name=""
  local escaped_workspace=""

  [[ -n "${env_alias}" ]] || {
    usage >&2
    finish 1
  }

  case "${env_alias}" in
    -h|--help)
      usage
      finish 0
      ;;
  esac

  load_env_context "${env_alias}"
  ensure_sqlcl

  workspace_name="${workspace_override:-${APEX_WORKSPACE:-}}"
  [[ -n "${workspace_name}" ]] || {
    printf 'Missing APEX workspace for %s. Pass it explicitly as argument 2 or configure APEX_WORKSPACE in conn.json.\n' "${env_alias}" >&2
    finish 1
  }

  escaped_workspace="$(escape_sql_literal "${workspace_name}")"

  cat <<EOF | run_sqlcl
set heading off
set feedback off
set verify off
set pages 0
set trimspool on
set lines 32767
select application_id || '|' || application_name
  from apex_applications
 where workspace = '${escaped_workspace}'
 order by application_id;
EOF

  return 0
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
