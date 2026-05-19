#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/run_gate.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
RUN_ID="test-run-gate-all"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
AI_CONTEXT_COPY="$(mktemp)"
APP_ID="123"
APP_CODE="f${APP_ID}"
APP_DIR="${ROOT_DIR}/export/ci/${APP_CODE}"
TARGET_APP_ID="456"
TARGET_APP_DIR="${ROOT_DIR}/export/ci/f${TARGET_APP_ID}"
FAKE_BIN_DIR="$(mktemp -d)"
FAKE_SQL="${FAKE_BIN_DIR}/sql"
RUNNER="${FAKE_BIN_DIR}/browser-runner"

cleanup() {
  rm -rf "${RESULT_DIR}" "${APP_DIR}" "${TARGET_APP_DIR}" "${FAKE_BIN_DIR}"
  rm -f "${AI_CONTEXT_COPY}"
  rmdir "${ROOT_DIR}/export/ci" 2>/dev/null || true

  if [[ -f "${CONN_BACKUP_FILE}" ]]; then
    mv "${CONN_BACKUP_FILE}" "${CONN_FILE}"
  else
    rm -f "${CONN_FILE}"
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
    "status": "IMPLEMENTING",
    "source_of_truth": "ai-context.json",
    "stage_status": {
        "connectivity": "PASSED",
        "scope_confirmation": "PASSED",
        "implementation": "PENDING",
        "verification": "PENDING",
        "delivery": "PENDING"
    },
    "resume_rule": "If status is not DONE, continue troubleshooting, implementation, and verification until DONE."
}
pathlib.Path(sys.argv[2]).write_text(json.dumps(ctx, indent=2) + "\n")
PY

if [[ -f "${CONN_FILE}" ]]; then
  mv "${CONN_FILE}" "${CONN_BACKUP_FILE}"
fi

rm -rf "${ROOT_DIR}/export/dev"
mkdir -p "${APP_DIR}/db/tests" "${APP_DIR}/apex" "${APP_DIR}/docs" "${TARGET_APP_DIR}/apex"

cat > "${APP_DIR}/db/install.sql" <<'SQL'
prompt install
SQL

cat > "${APP_DIR}/db/compile_all.sql" <<'SQL'
prompt compile
SQL

cat > "${APP_DIR}/db/tests/test_complete_suite.sql" <<'SQL'
prompt utplsql
SQL

cat > "${APP_DIR}/apex/install.sql" <<'SQL'
prompt apex install
SQL

cat > "${TARGET_APP_DIR}/apex/install.sql" <<'SQL'
prompt target apex install
SQL

cat > "${APP_DIR}/docs/browser-smoke.json" <<'JSON'
{
  "label": "thin-slice-{app_id}",
  "url": "https://example.test/ords/r/workspace/app-{app_id}/home",
  "contains_text": "App {app_id} Home"
}
JSON

cat > "${APP_DIR}/docs/browser-functional.json" <<'JSON'
{
  "label": "thin-functional-{app_id}",
  "url": "https://example.test/ords/r/workspace/app-{app_id}/home",
  "steps": [
    { "type": "click", "selector": "#open-{spec_app_id}" }
  ],
  "assertions": [
    { "type": "selector_visible", "selector": "#dialog-{spec_app_id}" }
  ]
}
JSON

cat > "${FAKE_SQL}" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
input="$(cat)"
if grep -q 'release_config_guardrails' <<<"${input}"; then
  printf 'CONFIG_PLACEHOLDERS\n'
  printf 'GEETEST_STATUS\nGEETEST_ACTIVE|N\n'
  printf 'CURRENT_RELEASE_ROWS\n1.0|Y|456\n'
  printf 'OPTIONAL_CONFIGS\n'
fi
SH
chmod +x "${FAKE_SQL}"

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
assert spec["url"] == "https://example.test/ords/r/workspace/app-456/home", spec
if spec.get("mode") == "functional":
    assert spec["label"] == "thin-functional-456", spec
    assert spec["steps"][0]["selector"] == "#open-123", spec
    assert spec["assertions"][0]["selector"] == "#dialog-123", spec
else:
    assert spec["contains_text"] == "App 456 Home", spec
    assert spec["label"] == "thin-slice-456", spec
out_dir = pathlib.Path(sys.argv[2])
screenshot = out_dir / ("functional.png" if spec.get("mode") == "functional" else "smoke.png")
screenshot.write_bytes(b"fake-png")
(out_dir / "result.json").write_text(json.dumps({
    "status": "success",
    "message": f"Opened {spec['url']}",
    "attachments": [str(screenshot)],
}, indent=2) + "\n")
PY
SH
chmod +x "${RUNNER}"

python3 - <<PY
import json
from pathlib import Path

config = {
    "ci": {
        "DB_CONNECTION_MODE": "direct",
        "DB_CONNECT_STRING": "user/password@host:1521/service",
        "DB_SCHEMA": "lab",
        "DB_SQLCL_BIN": str(Path("${FAKE_SQL}")),
        "APEX_WORKSPACE": "WORKSPACE_NAME",
        "APEX_BUILDER_LOGIN_URL": "https://example.test/ords/apex_authentication.login",
        "APEX_BUILDER_USERNAME": "admin",
        "APEX_BUILDER_PASSWORD": "secret",
        "APEX_BROWSER_EXPECT_SELECTOR": "#app",
    }
}
Path("${CONN_FILE}").write_text(json.dumps(config, indent=2) + "\n")
PY

AI_CONTEXT_FILE="${AI_CONTEXT_COPY}" RUN_GATE_DEPLOY_TARGET_APP_ID="${TARGET_APP_ID}" OMX_RUN_ID="${RUN_ID}" BROWSER_SMOKE_RUNNER="${RUNNER}" bash "${SCRIPT}" ci "${APP_ID}" all

python3 - "${RESULT_DIR}/summary.json" <<'PY'
import json
import pathlib
import sys

summary = json.loads(pathlib.Path(sys.argv[1]).read_text())

assert summary["status"] == "success", summary
assert summary["app_id"] == "123", summary
assert summary["app_code"] == "f123", summary
assert summary["executed_gates"] == ["contract", "db", "deploy", "browser"], summary
assert summary["executed_gate_actions"] == ["contract", "db", "deploy", "browser", "browser-functional"], summary
assert summary["gates"]["browser"]["status"] == "success", summary
assert summary["done_eligible"] is True, summary

for gate in ("contract", "db", "deploy", "browser"):
    assert summary["gates"][gate]["status"] == "success", summary

for artifact in (
    "contract/run_gate.summary.json",
    "db/install.summary.json",
    "db/compile.summary.json",
    "db/utplsql.summary.json",
    "deploy/app.summary.json",
    "browser/summary.json",
    "browser/functional.summary.json",
):
    assert artifact in summary["artifacts"], summary

browser = json.loads((pathlib.Path(sys.argv[1]).parent / "browser" / "summary.json").read_text())
assert browser["target"] == "thin-functional-456:https://example.test/ords/r/workspace/app-456/home", browser
functional = json.loads((pathlib.Path(sys.argv[1]).parent / "browser" / "functional.summary.json").read_text())
assert functional["action"] == "functional", functional
PY

python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys

ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
current = ctx["current_task"]
assert current["status"] == "DONE", current
assert current["stage_status"]["implementation"] == "PASSED", current
assert current["stage_status"]["delivery"] == "PASSED", current
assert current["stage_status"]["verification"] == "PASSED", current
PY

printf 'run_gate all test passed\n'
