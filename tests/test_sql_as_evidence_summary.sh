#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/sql_as.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
RUN_ID="test-sql-as-evidence-success"
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
    "DB_SQLCL_BIN": "true",
    "APEX_WORKSPACE": "WORKSPACE_NAME"
  }
}
JSON

OMX_RUN_ID="${RUN_ID}" bash "${SCRIPT}" ci 100 @export/ci/f100/db/install.sql

python3 - "${RESULT_DIR}/summary.json" "${RESULT_DIR}/contract/summary.json" "${RESULT_DIR}/db/summary.json" "${RESULT_DIR}/db/install.summary.json" <<'PY'
import json
import pathlib
import sys

run_path = pathlib.Path(sys.argv[1])
contract_path = pathlib.Path(sys.argv[2])
db_path = pathlib.Path(sys.argv[3])
install_path = pathlib.Path(sys.argv[4])

assert run_path.exists(), "missing run summary"
assert contract_path.exists(), "missing contract summary"
assert db_path.exists(), "missing db summary"
assert install_path.exists(), "missing install summary"

run = json.loads(run_path.read_text())
contract = json.loads(contract_path.read_text())
db = json.loads(db_path.read_text())
install = json.loads(install_path.read_text())

assert run["status"] == "success", run
assert run["executed_gates"] == ["contract", "db"], run
assert run["gates"]["contract"]["status"] == "success", run
assert run["gates"]["db"]["status"] == "success", run
assert "db/install.summary.json" in run["artifacts"], run

assert contract["status"] == "success", contract
assert contract["action"] == "script", contract
assert contract["env_alias"] == "ci", contract
assert contract["app_id"] == "100", contract
assert contract["target"] == "@export/ci/f100/db/install.sql", contract

assert db["status"] == "success", db
assert db["action"] == "script", db
assert db["db_schema"] == "lab", db
assert db["target"] == "@export/ci/f100/db/install.sql", db

assert install["status"] == "success", install
assert install["action"] == "install", install
assert install["target"] == "@export/ci/f100/db/install.sql", install
PY

printf 'sql_as evidence summary test passed\n'
