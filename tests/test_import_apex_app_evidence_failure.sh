#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/import_apex_app.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
RUN_ID="test-import-app-evidence-failure"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
APP_DIR="${ROOT_DIR}/export/ci/f100"
APEX_DIR="${APP_DIR}/apex"

cleanup() {
  rm -rf "${RESULT_DIR}" "${APP_DIR}"

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

cat > "${CONN_FILE}" <<'JSON'
{
  "ci": {
    "DB_CONNECTION_MODE": "direct",
    "DB_CONNECT_STRING": "user/password@host:1521/service",
    "DB_SCHEMA": "lab",
    "DB_SQLCL_BIN": "false",
    "APEX_WORKSPACE": "WORKSPACE_NAME"
  }
}
JSON

if OMX_RUN_ID="${RUN_ID}" bash "${SCRIPT}" ci 100; then
  printf 'Expected import_apex_app to fail\n' >&2
  exit 1
fi

python3 - "${RESULT_DIR}/contract/summary.json" "${RESULT_DIR}/deploy/app.summary.json" <<'PY'
import json
import pathlib
import sys

contract_path = pathlib.Path(sys.argv[1])
app_path = pathlib.Path(sys.argv[2])

assert contract_path.exists(), "missing contract summary"
assert app_path.exists(), "missing app deploy summary"

contract = json.loads(contract_path.read_text())
app = json.loads(app_path.read_text())

assert contract["status"] == "failure", contract
assert contract["action"] == "deploy-app", contract
assert contract["message"] in {"SQLcl validation failed", "Missing APEX install script"}, contract

assert app["status"] == "failure", app
assert app["action"] == "deploy-app", app
PY

printf 'import_apex_app evidence failure test passed\n'
