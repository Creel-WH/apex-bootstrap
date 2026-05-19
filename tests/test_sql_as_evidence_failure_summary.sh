#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/sql_as.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
RUN_ID="test-sql-as-evidence-failure"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
APP_DIR="${ROOT_DIR}/export/ci/f100"

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

mkdir -p "${APP_DIR}/db"

cat > "${APP_DIR}/db/install.sql" <<'SQL'
prompt install
SQL

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

if OMX_RUN_ID="${RUN_ID}" bash "${SCRIPT}" ci 100 @export/ci/f100/db/install.sql; then
  printf 'Expected sql_as script execution to fail\n' >&2
  exit 1
fi

python3 - "${RESULT_DIR}/contract/summary.json" "${RESULT_DIR}/db/summary.json" "${RESULT_DIR}/db/install.summary.json" <<'PY'
import json
import pathlib
import sys

contract_path = pathlib.Path(sys.argv[1])
db_path = pathlib.Path(sys.argv[2])
install_path = pathlib.Path(sys.argv[3])

assert contract_path.exists(), "missing contract summary"
assert db_path.exists(), "missing db summary"
assert install_path.exists(), "missing install summary"

contract = json.loads(contract_path.read_text())
db = json.loads(db_path.read_text())
install = json.loads(install_path.read_text())

assert contract["status"] == "failure", contract
assert contract["action"] == "script", contract
assert contract["message"] == "Application SQL script execution failed", contract

assert db["status"] == "failure", db
assert db["action"] == "script", db
assert db["message"] == "Application SQL script execution failed", db

assert install["status"] == "failure", install
assert install["action"] == "install", install
assert install["message"] == "Application SQL script execution failed", install
PY

printf 'sql_as evidence failure summary test passed\n'
