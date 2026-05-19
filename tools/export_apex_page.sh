#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/export_apex_page.sh dev@oci 100 10
EOF
}

build_workspace_init_sql() {
  local workspace_name="$1"
  cat <<EOF
begin
  apex_util.set_security_group_id(apex_util.find_security_group_id(p_workspace => '${workspace_name}'));
end;
/
EOF
}

main() {
  local env_file_name=""
  local app_id=""
  local page_id=""

  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    usage
    exit 0
  fi

  env_file_name="${1:-}"
  app_id="${2:-}"
  page_id="${3:-}"

  [[ -n "${env_file_name}" && -n "${app_id}" && -n "${page_id}" ]] || {
    usage >&2
    exit 1
  }

  load_target_env "${env_file_name}" "${app_id}"
  ensure_sqlcl

  [[ -n "${app_id}" && "${app_id}" != "00000" ]] || {
    printf 'A real APEX App ID is required before export.\n' >&2
    exit 1
  }
  [[ -n "${page_id}" ]] || {
    printf 'Missing page ID.\n' >&2
    exit 1
  }

  mkdir -p "${APEX_EXPORT_DIR}"

  {
    build_workspace_init_sql "${APEX_WORKSPACE}"
    cat <<EOF
set define off
apex export -applicationid ${app_id} -split -expcomponents "PAGE:${page_id}" -skipExportDate -expOriginalIds -overwrite-files -dir ${APEX_EXPORT_DIR}
EOF
  } | run_sqlcl
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
