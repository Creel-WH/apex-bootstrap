#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/import_apex_app.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
RUN_ID="test-import-app-evidence-success"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
APP_DIR="${ROOT_DIR}/export/ci/f100"
APEX_DIR="${APP_DIR}/apex"
FAKE_BIN_DIR="$(mktemp -d)"
FAKE_SQL="${FAKE_BIN_DIR}/sql"

cleanup() {
  rm -rf "${RESULT_DIR}" "${APP_DIR}" "${FAKE_BIN_DIR}"

  if [[ -f "${CONN_BACKUP_FILE}" ]]; then
    mv "${CONN_BACKUP_FILE}" "${CONN_FILE}"
  else
    rm -f "${CONN_FILE}"
  fi
}

trap cleanup EXIT

if [[ -f "${CONN_FILE}" ]]; then
  mv "${CONN_FILE}" "${CONN_BACKUP_FILE}"
fi

mkdir -p "${APEX_DIR}"

cat > "${APEX_DIR}/install.sql" <<'SQL'
prompt install
SQL

cat > "${FAKE_SQL}" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
cat >/dev/null
SH
chmod +x "${FAKE_SQL}"

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
    }
}
Path("${CONN_FILE}").write_text(json.dumps(config, indent=2) + "\n")
PY

OMX_RUN_ID="${RUN_ID}" bash "${SCRIPT}" ci 100

python3 - "${RESULT_DIR}/summary.json" "${RESULT_DIR}/contract/summary.json" "${RESULT_DIR}/deploy/summary.json" "${RESULT_DIR}/deploy/app.summary.json" <<'PY'
import json
import pathlib
import sys

run_path = pathlib.Path(sys.argv[1])
contract_path = pathlib.Path(sys.argv[2])
deploy_path = pathlib.Path(sys.argv[3])
app_path = pathlib.Path(sys.argv[4])

assert run_path.exists(), "missing run summary"
assert contract_path.exists(), "missing contract summary"
assert deploy_path.exists(), "missing deploy summary"
assert app_path.exists(), "missing app deploy summary"

run = json.loads(run_path.read_text())
contract = json.loads(contract_path.read_text())
deploy = json.loads(deploy_path.read_text())
app = json.loads(app_path.read_text())

assert run["status"] == "success", run
assert run["executed_gates"] == ["contract", "deploy"], run
assert run["gates"]["deploy"]["status"] == "success", run
assert "deploy/app.summary.json" in run["artifacts"], run

assert contract["status"] == "success", contract
assert contract["action"] == "deploy-app", contract
assert contract["target"] == "app:ci:100->ci:100", contract

assert deploy["status"] == "success", deploy
assert deploy["action"] == "deploy-app", deploy
assert deploy["env_alias"] == "ci", deploy

assert app["status"] == "success", app
assert app["action"] == "deploy-app", app
assert app["target"] == "app:ci:100->ci:100", app
PY

printf 'import_apex_app evidence summary test passed\n'
