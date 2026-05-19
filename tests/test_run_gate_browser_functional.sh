#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/run_gate.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
LOCAL_CONN_FILE="${ROOT_DIR}/.conn.json"
LOCAL_CONN_BACKUP_FILE="${ROOT_DIR}/.conn.json.test-backup"
RUN_ID="test-run-gate-browser-functional"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
AI_CONTEXT_COPY="$(mktemp)"
APP_ID="123"
TARGET_APP_ID="456"
APP_DIR="${ROOT_DIR}/export/ci/f${APP_ID}"
RUNNER="$(mktemp)"

cleanup() {
  rm -rf "${RESULT_DIR}" "${APP_DIR}"
  rm -f "${RUNNER}" "${AI_CONTEXT_COPY}"

  if [[ -f "${CONN_BACKUP_FILE}" ]]; then
    mv "${CONN_BACKUP_FILE}" "${CONN_FILE}"
  else
    rm -f "${CONN_FILE}"
  fi

  if [[ -f "${LOCAL_CONN_BACKUP_FILE}" ]]; then
    mv "${LOCAL_CONN_BACKUP_FILE}" "${LOCAL_CONN_FILE}"
  fi
}

trap cleanup EXIT

python3 - "${ROOT_DIR}/ai-context.json" "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys

ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
ctx["current_task"] = {
    "feature_file": "export/ci/f123/docs/2026-04-13-test.md",
    "env_alias": "ci",
    "app_id": "123",
    "status": "TESTED",
    "source_of_truth": "ai-context.json",
    "stage_status": {
        "connectivity": "PASSED",
        "scope_confirmation": "PASSED",
        "implementation": "PASSED",
        "verification": "IN_PROGRESS",
        "delivery": "PASSED"
    },
    "resume_rule": "If status is not DONE, continue troubleshooting, implementation, and verification until DONE."
}
pathlib.Path(sys.argv[2]).write_text(json.dumps(ctx, indent=2) + "\n")
PY

if [[ -f "${CONN_FILE}" ]]; then
  mv "${CONN_FILE}" "${CONN_BACKUP_FILE}"
fi

if [[ -f "${LOCAL_CONN_FILE}" ]]; then
  mv "${LOCAL_CONN_FILE}" "${LOCAL_CONN_BACKUP_FILE}"
fi

mkdir -p "${APP_DIR}/docs"

cat > "${CONN_FILE}" <<'JSON'
{
  "ci": {
    "DB_CONNECTION_MODE": "direct",
    "DB_CONNECT_STRING": "user/password@host:1521/service",
    "DB_SCHEMA": "lab",
    "DB_SQLCL_BIN": "sql",
    "APEX_WORKSPACE": "WORKSPACE_NAME",
    "APEX_BUILDER_LOGIN_URL": "https://example.test/login",
    "APEX_BUILDER_USERNAME": "admin",
    "APEX_BUILDER_PASSWORD": "secret"
  }
}
JSON

cat > "${APP_DIR}/docs/browser-functional.json" <<'JSON'
{
  "label": "functional-{app_id}",
  "url": "https://example.test/ords/r/workspace/app-{app_id}/home",
  "steps": [
    { "type": "click", "selector": "#open" }
  ],
  "assertions": [
    { "type": "selector_visible", "selector": "#dialog-{spec_app_id}" }
  ]
}
JSON

cat > "${RUNNER}" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
spec="$1"
out_dir="$2"
mkdir -p "${out_dir}"
python3 - "${spec}" "${out_dir}" <<'PY'
import json
import pathlib
import sys

spec = json.loads(pathlib.Path(sys.argv[1]).read_text())
assert spec["mode"] == "functional", spec
assert spec["label"] == "functional-456", spec
assert spec["url"] == "https://example.test/ords/r/workspace/app-456/home", spec
assert spec["assertions"][0]["selector"] == "#dialog-123", spec
(pathlib.Path(sys.argv[2]) / "result.json").write_text(json.dumps({
    "status": "success",
    "message": "functional ok",
    "attachments": [],
}, indent=2) + "\n")
PY
SH
chmod +x "${RUNNER}"

AI_CONTEXT_FILE="${AI_CONTEXT_COPY}" RUN_GATE_BROWSER_TARGET_APP_ID="${TARGET_APP_ID}" OMX_RUN_ID="${RUN_ID}" BROWSER_FUNCTIONAL_RUNNER="${RUNNER}" bash "${SCRIPT}" ci "${APP_ID}" browser-functional

python3 - "${RESULT_DIR}/summary.json" "${RESULT_DIR}/browser/functional.summary.json" <<'PY'
import json
import pathlib
import sys

summary = json.loads(pathlib.Path(sys.argv[1]).read_text())
functional = json.loads(pathlib.Path(sys.argv[2]).read_text())

assert summary["status"] == "success", summary
assert summary["executed_gates"] == ["contract", "browser"], summary
assert summary["executed_gate_actions"] == ["browser-functional"], summary
assert summary["gate_runs"][0]["gate"] == "browser-functional", summary
assert summary["gates"]["browser"]["status"] == "success", summary
assert functional["action"] == "functional", functional
assert functional["target"] == "functional-456:https://example.test/ords/r/workspace/app-456/home", functional
PY

python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys

ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
current = ctx["current_task"]
assert current["status"] == "DONE", current
assert current["stage_status"]["verification"] == "PASSED", current
assert current["stage_status"]["implementation"] == "PASSED", current
assert current["stage_status"]["delivery"] == "PASSED", current
PY

printf 'run_gate browser functional test passed\n'
