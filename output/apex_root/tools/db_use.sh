#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/db_use.sh dev@oci 100 show
  tools/db_use.sh dev@oci 100 check
  tools/db_use.sh dev@oci 100 list
EOF
}

main() {
  local env_file_name=""
  local selected_app=""
  local command="show"

  [[ $# -gt 0 ]] || {
    usage
    exit 1
  }

  case "${1:-}" in
    -h|--help)
      usage
      exit 0
      ;;
  esac

  env_file_name="${1:-}"
  selected_app="${2:-}"
  shift 2

  [[ -n "${env_file_name}" && -n "${selected_app}" ]] || {
    usage
    exit 1
  }

  [[ "${selected_app}" =~ ^[0-9]+$ ]] || {
    printf 'App id must be numeric: %s\n' "${selected_app}" >&2
    exit 1
  }

  selected_app="f${selected_app}"

  if [[ $# -gt 0 ]]; then
    command="$1"
    shift
  fi

  load_db_env "${selected_app}" "${env_file_name}"

  case "${command}" in
    show|current)
      printf '%s\n' "${APP_CODE}"
      ;;
    list)
      printf '%-12s %s\n' "${APP_CODE}" "configured"
      ;;
    check)
      ensure_sqlcl
      show_env_summary
      ;;
    *)
      printf 'Unsupported command: %s\n' "${command}" >&2
      exit 1
      ;;
  esac
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
