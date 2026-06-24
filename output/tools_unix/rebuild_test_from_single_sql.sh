#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/rebuild_test_from_single_sql.sh <source_app_id> <target_app_id>

Fixed source/target environments:
  source = dev@oci
  target = test@oci

Workflow:
  1. Export source app as a single SQL file to export/dev@oci/f<APP_ID>/release-single/
  2. Import that single SQL file into test@oci target app id
  3. Re-export target app so export/test@oci/f<TARGET>/ becomes canonicalized
  4. Immediately compare imported supporting objects/runtime state against dev@oci
  5. Run test db gate, browser, and browser-functional

Notes:
  - This script is intentionally non-production only.
  - It validates only the dev@oci -> test@oci rebuild lane.
EOF
}

export_single_sql() {
  local source_app_id="$1"
  local source_app_code=""
  local release_dir=""
  local sql_file=""
  local temp_sql=""
  local export_output=""

  source_app_code="$(resolve_app_code_from_app_id "${source_app_id}")"
  release_dir="${ROOT_DIR}/export/dev@oci/${source_app_code}/release-single"
  sql_file="${release_dir}/${source_app_code}.sql"
  mkdir -p "${release_dir}"

  temp_sql="$(mktemp "${TMPDIR:-/tmp}/export_single_sql.XXXXXX").sql"
  cat > "${temp_sql}" <<SQL
begin
  apex_util.set_security_group_id(apex_util.find_security_group_id(p_workspace => 'DEV'));
end;
/
set define off
apex export -applicationid ${source_app_id} -expOriginalIds -skipExportDate -overwrite-files -dir ${release_dir}
SQL

  export_output="$(bash "${SCRIPT_DIR}/sql_as.sh" dev@oci "${source_app_id}" @"${temp_sql}")"
  printf '%s\n' "${export_output}" >&2
  rm -f "${temp_sql}"

  [[ -f "${sql_file}" ]] || {
    printf 'Single SQL export not found: %s\n' "${sql_file}" >&2
    return 1
  }

  printf '%s\n' "${sql_file}"
}

import_single_sql_to_test() {
  local source_sql="$1"
  local target_app_id="$2"
  local temp_sql=""

  temp_sql="$(mktemp "${TMPDIR:-/tmp}/import_single_sql.XXXXXX").sql"
  cat > "${temp_sql}" <<SQL
set define off
begin
  apex_util.set_security_group_id(apex_util.find_security_group_id(p_workspace => 'TEST'));
  apex_application_install.set_workspace('TEST');
  apex_application_install.set_application_id(${target_app_id});
  apex_application_install.set_application_alias('APEX-FORUMS101');
  apex_application_install.set_auto_install_sup_obj(true);
  apex_application_install.generate_offset;
end;
/
@${source_sql}
SQL

  bash "${SCRIPT_DIR}/sql_as.sh" test@oci "${target_app_id}" @"${temp_sql}"
  rm -f "${temp_sql}"
}

main() {
  local source_app_id="${1:-}"
  local target_app_id="${2:-}"
  local source_sql=""

  if [[ "${source_app_id}" == "-h" || "${source_app_id}" == "--help" || -z "${source_app_id}" || -z "${target_app_id}" ]]; then
    usage
    exit $([[ -n "${source_app_id}" && -n "${target_app_id}" ]] && echo 0 || echo 1)
  fi

  source_app_id="$(require_numeric_app_id "${source_app_id}")" || return 1
  target_app_id="$(require_numeric_app_id "${target_app_id}")" || return 1

  printf 'Rebuilding test@oci app %s from dev@oci app %s via single SQL import\n' "${target_app_id}" "${source_app_id}"

  source_sql="$(export_single_sql "${source_app_id}")"
  printf 'Single SQL export ready: %s\n' "${source_sql}"

  import_single_sql_to_test "${source_sql}" "${target_app_id}"
  printf 'Single SQL import completed into test@oci/%s\n' "${target_app_id}"

  bash "${SCRIPT_DIR}/export_apex_app.sh" test@oci "${target_app_id}"
  bash "${SCRIPT_DIR}/run_gate.sh" test@oci "${target_app_id}" db
  RUN_GATE_COMPARE_SOURCE_ENV=dev@oci \
    RUN_GATE_COMPARE_SOURCE_APP_ID="${source_app_id}" \
    bash "${SCRIPT_DIR}/run_gate.sh" test@oci "${target_app_id}" deploy
  bash "${SCRIPT_DIR}/apex_ai.sh" gate test@oci "${target_app_id}" browser
  bash "${SCRIPT_DIR}/apex_ai.sh" gate test@oci "${target_app_id}" browser-functional
}

main "$@"
