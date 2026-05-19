#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/run_gate.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
RUN_ID="test-run-gate-db-failure"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
AI_CONTEXT_COPY="$(mktemp)"
APP_ID="124"
APP_CODE="f${APP_ID}"
APP_DIR="${ROOT_DIR}/export/ci/${APP_CODE}"
FAKE_BIN_DIR="$(mktemp -d)"
FAKE_SQL="${FAKE_BIN_DIR}/sql"
RUNNER="${FAKE_BIN_DIR}/browser-runner"

cleanup() {
  rm -rf "${RESULT_DIR}" "${APP_DIR}" "${FAKE_BIN_DIR}"
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
    "feature_file": "export/ci/f124/docs/2026-04-13-test.md",
    "env_alias": "ci",
    "app_id": "124",
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
mkdir -p "${APP_DIR}/db" "${APP_DIR}/apex"

cat > "${APP_DIR}/db/install.sql" <<'SQL'
prompt install
SQL

cat > "${APP_DIR}/db/compile_all.sql" <<'SQL'
prompt compile
SQL

cat > "${APP_DIR}/apex/install.sql" <<'SQL'
prompt apex install
SQL

cat > "${FAKE_SQL}" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
cat >/dev/null
exit 1
SH
chmod +x "${FAKE_SQL}"

cat > "${RUNNER}" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
echo "browser runner should not be called" >&2
exit 1
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
        "APEX_BROWSER_SMOKE_URL": "https://example.test/ords/r/workspace/app/home",
        "APEX_BROWSER_EXPECT_TEXT": "Home",
    }
}
Path("${CONN_FILE}").write_text(json.dumps(config, indent=2) + "\n")
PY

if AI_CONTEXT_FILE="${AI_CONTEXT_COPY}" OMX_RUN_ID="${RUN_ID}" BROWSER_SMOKE_RUNNER="${RUNNER}" bash "${SCRIPT}" ci "${APP_ID}" all; then
  printf 'run_gate all should fail when DB install fails\n' >&2
  exit 1
fi

python3 - "${RESULT_DIR}/summary.json" "${RESULT_DIR}" <<'PY'
import json
import pathlib
import sys

summary = json.loads(pathlib.Path(sys.argv[1]).read_text())
result_dir = pathlib.Path(sys.argv[2])

assert summary["status"] == "failure", summary
assert summary["gates"]["db"]["status"] == "failure", summary
assert "deploy" not in summary["gates"], summary
assert "browser" not in summary["gates"], summary
assert (result_dir / "db/install.summary.json").exists(), summary
assert not (result_dir / "deploy/app.summary.json").exists(), summary
assert not (result_dir / "browser/summary.json").exists(), summary
PY

python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys

ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
current = ctx["current_task"]
assert current["status"] == "IMPLEMENTING", current
assert current["stage_status"]["implementation"] == "FAILED", current
assert current["stage_status"]["delivery"] == "PENDING", current
assert current["stage_status"]["verification"] == "PENDING", current
PY

printf 'run_gate stops on db failure test passed\n'
