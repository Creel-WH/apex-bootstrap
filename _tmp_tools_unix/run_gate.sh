#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/run_gate.sh <env_alias> <app_id> contract
  tools/run_gate.sh <env_alias> <app_id> db
  tools/run_gate.sh <env_alias> <app_id> deploy
  tools/run_gate.sh <env_alias> <app_id> browser
  tools/run_gate.sh <env_alias> <app_id> browser-functional
  tools/run_gate.sh <env_alias> <app_id> all

Environment:
  RUN_GATE_DEPLOY_TARGET_APP_ID  Optional target application id for deploy
  RUN_GATE_COMPARE_SOURCE_ENV    Optional source env alias for post-deploy state comparison
  RUN_GATE_COMPARE_SOURCE_APP_ID Optional source app id for post-deploy state comparison
  RUN_GATE_BROWSER_TARGET_APP_ID Optional runtime application id for browser smoke
  RUN_GATE_BROWSER_LABEL         Optional browser smoke evidence label
  BROWSER_SMOKE_RUNNER           Optional browser smoke runner override
  RUN_GATE_BROWSER_FUNCTIONAL_LABEL Optional browser functional evidence label
  BROWSER_FUNCTIONAL_RUNNER      Optional browser functional runner override
EOF
}

build_command_text() {
  local text="tools/run_gate.sh"
  local arg

  for arg in "$@"; do
    printf -v text '%s %q' "${text}" "${arg}"
  done

  printf '%s\n' "${text}"
}

record_run_gate_evidence() {
  local gate="$1"
  local status="$2"
  local target="$3"
  local message="$4"
  local command_text="$5"

  initialize_evidence_context "run_gate.sh" || return 0
  write_evidence_summary_file "contract" "run_gate.summary.json" "${gate}" "${status}" "${target}" "${message}" "${command_text}"
}

record_run_gate_phase_evidence() {
  local sequence="$1"
  local gate="$2"
  local status="$3"
  local target="$4"
  local message="$5"
  local command_text="$6"
  local file_name=""

  printf -v file_name 'gate-%02d-%s.summary.json' "${sequence}" "${gate}"
  initialize_evidence_context "run_gate.sh" || return 0
  write_evidence_summary_file "contract" "${file_name}" "${gate}" "${status}" "${target}" "${message}" "${command_text}"
}

ai_context_file() {
  printf '%s\n' "${AI_CONTEXT_FILE:-${ROOT_DIR}/ai-context.json}"
}

update_run_gate_task_state_if_matches() {
  local env_alias="$1"
  local app_id="$2"
  local gate="$3"
  local result="$4"
  local ai_context=""

  ai_context="$(ai_context_file)"
  [[ -f "${ai_context}" ]] || return 0

  python3 - "${ai_context}" "${env_alias}" "${app_id}" "${gate}" "${result}" <<'PY'
import json
from pathlib import Path
import sys

path = Path(sys.argv[1])
env_alias, app_id, gate, result = sys.argv[2:6]
ctx = json.loads(path.read_text())
current = ctx.get("current_task") or {}

if current.get("env_alias") != env_alias or current.get("app_id") != app_id:
    raise SystemExit(0)

stage_status = current.setdefault("stage_status", {})

if gate == "db":
    stage_status["implementation"] = "PASSED" if result == "success" else "FAILED"
    current["status"] = "IMPLEMENTING"
elif gate == "deploy":
    stage_status["delivery"] = "PASSED" if result == "success" else "FAILED"
    current["status"] = "IMPLEMENTING"
elif gate == "browser":
    stage_status["verification"] = "IN_PROGRESS" if result == "success" else "FAILED"
    current["status"] = "TESTED"
elif gate == "browser-functional":
    stage_status["verification"] = "PASSED" if result == "success" else "FAILED"
    current["status"] = "TESTED"
else:
    raise SystemExit(0)

ctx["current_task"] = current
path.write_text(json.dumps(ctx, indent=2) + "\n")
PY
}

mark_task_done_if_eligible() {
  local env_alias="$1"
  local app_id="$2"
  local ai_context=""

  ai_context="$(ai_context_file)"
  [[ -f "${ai_context}" ]] || return 0

  python3 - "${ai_context}" "${env_alias}" "${app_id}" <<'PY' || return 0
import json
from pathlib import Path
import sys

path = Path(sys.argv[1])
env_alias, app_id = sys.argv[2:4]
current = (json.loads(path.read_text()).get("current_task") or {})
if current.get("env_alias") != env_alias or current.get("app_id") != app_id:
    raise SystemExit(1)
PY

  task_done_eligibility_check "${ai_context}" >/dev/null || return 0

  python3 - "${ai_context}" <<'PY'
import json
from pathlib import Path
import sys

path = Path(sys.argv[1])
ctx = json.loads(path.read_text())
current = ctx.setdefault("current_task", {})
current["status"] = "DONE"
ctx["current_task"] = current
path.write_text(json.dumps(ctx, indent=2) + "\n")
PY
}

validate_inputs() {
  local env_alias="$1"
  local app_id="$2"
  local gate="$3"

  normalize_env_alias "${env_alias}" >/dev/null
  resolve_app_code_from_app_id "${app_id}" >/dev/null

  case "${gate}" in
    contract|db|deploy|browser|browser-functional|all)
      ;;
    *)
      printf 'Unsupported gate: %s\n' "${gate}" >&2
      return 1
      ;;
  esac
}

run_contract_gate() {
  bash "${ROOT_DIR}/tests/check_contract_drift.sh" || return 1
  bash "${ROOT_DIR}/tests/check_repository_layout.sh" || return 1

  if [[ -f "${ROOT_DIR}/tests/check_ci_gate_layering.sh" ]]; then
    bash "${ROOT_DIR}/tests/check_ci_gate_layering.sh" || return 1
  fi

  while IFS= read -r script; do
    bash -n "${script}" || return 1
  done < <(find "${ROOT_DIR}/tools" "${ROOT_DIR}/tests" -maxdepth 1 -name '*.sh' -type f | sort)
}

run_db_gate() {
  local env_alias="$1"
  local app_id="$2"
  local app_code=""
  local app_dir=""
  local install_script=""
  local compile_script=""
  local utplsql_script=""

  app_code="$(resolve_app_code_from_app_id "${app_id}")"
  app_dir="${ROOT_DIR}/export/${env_alias}/${app_code}"
  install_script="export/${env_alias}/${app_code}/db/install.sql"
  compile_script="export/${env_alias}/${app_code}/db/compile_all.sql"
  utplsql_script="export/${env_alias}/${app_code}/db/tests/test_complete_suite.sql"

  [[ -d "${app_dir}" ]] || {
    printf 'Missing application directory: %s\n' "${app_dir}" >&2
    return 1
  }

  [[ -f "${ROOT_DIR}/${install_script}" ]] || {
    printf 'Missing DB install script: %s\n' "${install_script}" >&2
    return 1
  }

  [[ -f "${ROOT_DIR}/${compile_script}" ]] || {
    printf 'Missing DB compile script: %s\n' "${compile_script}" >&2
    return 1
  }

  bash "${SCRIPT_DIR}/sql_as.sh" "${env_alias}" "${app_id}" "@${install_script}" || return 1
  bash "${SCRIPT_DIR}/sql_as.sh" "${env_alias}" "${app_id}" "@${compile_script}" || return 1

  if [[ -f "${ROOT_DIR}/${utplsql_script}" ]]; then
    bash "${SCRIPT_DIR}/sql_as.sh" "${env_alias}" "${app_id}" "@${utplsql_script}" || return 1
  fi

  bash "${SCRIPT_DIR}/check_release_config_guardrails.sh" "${env_alias}" "${app_id}" || return 1
}

run_deploy_gate() {
  local env_alias="$1"
  local app_id="$2"
  local target_app_id="${RUN_GATE_DEPLOY_TARGET_APP_ID:-}"
  local compare_source_env="${RUN_GATE_COMPARE_SOURCE_ENV:-}"
  local compare_source_app_id="${RUN_GATE_COMPARE_SOURCE_APP_ID:-}"
  local compare_target_app_id=""

  if [[ -n "${target_app_id}" ]]; then
    resolve_app_code_from_app_id "${target_app_id}" >/dev/null
    bash "${SCRIPT_DIR}/import_apex_app.sh" "${env_alias}" "${app_id}" "${target_app_id}" || return 1
    compare_target_app_id="${target_app_id}"
  else
    bash "${SCRIPT_DIR}/import_apex_app.sh" "${env_alias}" "${app_id}" || return 1
    compare_target_app_id="${app_id}"
  fi

  if bash "${SCRIPT_DIR}/sql_as.sh" "${env_alias}" "${compare_target_app_id}" -c "select 1 from user_mviews where mview_name = 'APEXCN_THREAD_FS_BASE_MV';" >/dev/null 2>&1; then
    local mv_fix_sql=""
    local mv_fix_sql_for_sqlcl=""
    mv_fix_sql="$(mktemp "${TMPDIR:-/tmp}/run_gate_mv_fix.XXXXXX").sql"
    cat > "${mv_fix_sql}" <<'SQL'
begin
  begin
    execute immediate 'alter materialized view apexcn_thread_fs_base_mv compile';
  exception
    when others then null;
  end;
  begin
    dbms_mview.refresh('APEXCN_THREAD_FS_BASE_MV', 'C');
  exception
    when others then null;
  end;
end;
/
SQL
    mv_fix_sql_for_sqlcl="${mv_fix_sql}"
    if [[ "${DB_SQLCL_BIN:-}" == *.exe && "${mv_fix_sql}" == /tmp/* ]] && command -v wslpath >/dev/null 2>&1; then
      mv_fix_sql_for_sqlcl="$(wslpath -w "${mv_fix_sql}")"
    fi
    bash "${SCRIPT_DIR}/sql_as.sh" "${env_alias}" "${compare_target_app_id}" "@${mv_fix_sql_for_sqlcl}" || {
      rm -f "${mv_fix_sql}"
      return 1
    }
    rm -f "${mv_fix_sql}"
  fi

  bash "${SCRIPT_DIR}/check_release_config_guardrails.sh" "${env_alias}" "${compare_target_app_id}" || return 1

  if [[ -n "${compare_source_env}" && -n "${compare_source_app_id}" ]]; then
    bash "${SCRIPT_DIR}/compare_apex_release_state.sh" \
      "${compare_source_env}" "${compare_source_app_id}" \
      "${env_alias}" "${compare_target_app_id}" || return 1
  fi
}

run_browser_gate() {
  local env_alias="$1"
  local app_id="$2"
  local label="${RUN_GATE_BROWSER_LABEL:-}"
  local runtime_app_id="${RUN_GATE_BROWSER_TARGET_APP_ID:-${RUN_GATE_DEPLOY_TARGET_APP_ID:-${app_id}}}"
  local browser_args=("${env_alias}" "${app_id}" --runtime-app-id "${runtime_app_id}")

  resolve_app_code_from_app_id "${runtime_app_id}" >/dev/null

  if [[ -n "${label}" ]]; then
    browser_args+=(--label "${label}")
  fi

  bash "${SCRIPT_DIR}/browser_smoke_apex.sh" "${browser_args[@]}" || return 1
}

run_browser_functional_gate() {
  local env_alias="$1"
  local app_id="$2"
  local runtime_app_id="${RUN_GATE_BROWSER_TARGET_APP_ID:-${RUN_GATE_DEPLOY_TARGET_APP_ID:-${app_id}}}"
  local label="${RUN_GATE_BROWSER_FUNCTIONAL_LABEL:-}"
  local functional_args=("${env_alias}" "${app_id}" --runtime-app-id "${runtime_app_id}")

  resolve_app_code_from_app_id "${runtime_app_id}" >/dev/null

  if [[ -n "${label}" ]]; then
    functional_args+=(--label "${label}")
  fi

  BROWSER_FUNCTIONAL_RUNNER="${BROWSER_FUNCTIONAL_RUNNER:-${BROWSER_SMOKE_RUNNER:-}}" \
    bash "${SCRIPT_DIR}/browser_functional_apex.sh" "${functional_args[@]}" || return 1
}

run_single_gate() {
  local env_alias="$1"
  local app_id="$2"
  local gate="$3"

  case "${gate}" in
    contract)
      run_contract_gate
      ;;
    db)
      run_db_gate "${env_alias}" "${app_id}"
      ;;
    deploy)
      run_deploy_gate "${env_alias}" "${app_id}"
      ;;
    browser)
      run_browser_gate "${env_alias}" "${app_id}"
      ;;
    browser-functional)
      run_browser_functional_gate "${env_alias}" "${app_id}"
      ;;
  esac
}

execute_gate_with_task_state() {
  local env_alias="$1"
  local app_id="$2"
  local gate="$3"
  local sequence="$4"
  local target="$5"
  local command_text="$6"

  if run_single_gate "${env_alias}" "${app_id}" "${gate}"; then
    update_run_gate_task_state_if_matches "${env_alias}" "${app_id}" "${gate}" "success"
    record_run_gate_phase_evidence "${sequence}" "${gate}" "success" "${target}" "" "${command_text}"
    if [[ "${gate}" == "browser-functional" ]]; then
      mark_task_done_if_eligible "${env_alias}" "${app_id}"
    fi
    return 0
  fi

  update_run_gate_task_state_if_matches "${env_alias}" "${app_id}" "${gate}" "failure"
  record_run_gate_phase_evidence "${sequence}" "${gate}" "failure" "${target}" "Gate execution failed" "${command_text}"
  return 1
}

run_requested_gates() {
  local env_alias="$1"
  local app_id="$2"
  local gate="$3"
  local target="$4"
  local command_text="$5"

  if [[ "${gate}" == "all" ]]; then
    execute_gate_with_task_state "${env_alias}" "${app_id}" "contract" 1 "${target}" "${command_text}" || return 1
    execute_gate_with_task_state "${env_alias}" "${app_id}" "db" 2 "${target}" "${command_text}" || return 1
    execute_gate_with_task_state "${env_alias}" "${app_id}" "deploy" 3 "${target}" "${command_text}" || return 1
    execute_gate_with_task_state "${env_alias}" "${app_id}" "browser" 4 "${target}" "${command_text}" || return 1
    execute_gate_with_task_state "${env_alias}" "${app_id}" "browser-functional" 5 "${target}" "${command_text}" || return 1
    return 0
  fi

  execute_gate_with_task_state "${env_alias}" "${app_id}" "${gate}" 1 "${target}" "${command_text}" || return 1
}

main() {
  local env_alias="${1:-}"
  local app_id="${2:-}"
  local gate="${3:-}"
  local normalized_env_alias=""
  local app_code=""
  local command_text=""
  local target=""
  local original_args=("$@")

  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    usage
    exit 0
  fi

  [[ -n "${env_alias}" && -n "${app_id}" && -n "${gate}" ]] || {
    usage >&2
    exit 1
  }

  command_text="$(build_command_text "${original_args[@]}")"
  validate_inputs "${env_alias}" "${app_id}" "${gate}"

  normalized_env_alias="$(normalize_env_alias "${env_alias}")"
  app_code="$(resolve_app_code_from_app_id "${app_id}")"
  target="${normalized_env_alias}/${app_code}:${gate}"
  export DB_ENV_NAME="${normalized_env_alias}"
  export APEX_APP_ID="${app_id}"
  export APP_CODE="${app_code}"

  initialize_evidence_context "run_gate.sh" || true
  record_run_gate_evidence "${gate}" "running" "${target}" "" "${command_text}"

  if run_requested_gates "${normalized_env_alias}" "${app_id}" "${gate}" "${target}" "${command_text}"; then
    record_run_gate_evidence "${gate}" "success" "${target}" "" "${command_text}"
    printf 'Gate %s passed for %s/%s. Evidence: %s\n' "${gate}" "${normalized_env_alias}" "${app_code}" "${OMX_RESULTS_DIR:-}"
    return 0
  fi

  record_run_gate_evidence "${gate}" "failure" "${target}" "Gate execution failed" "${command_text}"
  printf 'Gate %s failed for %s/%s. Evidence: %s\n' "${gate}" "${normalized_env_alias}" "${app_code}" "${OMX_RESULTS_DIR:-}" >&2
  return 1
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  export OMX_EVIDENCE_ENABLED="${OMX_EVIDENCE_ENABLED:-1}"
  main "$@"
fi
