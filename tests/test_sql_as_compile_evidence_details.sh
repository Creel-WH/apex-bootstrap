#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/sql_as.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
RUN_ID="test-sql-as-compile-evidence"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
APP_DIR="${ROOT_DIR}/export/ci/f100"
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

mkdir -p "${APP_DIR}/db"

cat > "${APP_DIR}/db/compile_all.sql" <<'SQL'
prompt compile
SQL

cat > "${FAKE_SQL}" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
input="$(cat)"
if [[ "${input}" == *"from user_objects where status = 'INVALID'"* ]]; then
  printf 'PACKAGE BODY|CUX_RAG_PKG\n'
  printf 'VIEW|CUX_RAG_V\n'
fi
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

OMX_RUN_ID="${RUN_ID}" bash "${SCRIPT}" ci 100 @export/ci/f100/db/compile_all.sql

python3 - "${RESULT_DIR}/db/compile.summary.json" "${RESULT_DIR}/db/invalid_objects.summary.json" <<'PY'
import json
import pathlib
import sys

compile_path = pathlib.Path(sys.argv[1])
invalid_path = pathlib.Path(sys.argv[2])

assert compile_path.exists(), "missing compile summary"
assert invalid_path.exists(), "missing invalid object summary"

compile_summary = json.loads(compile_path.read_text())
invalid_summary = json.loads(invalid_path.read_text())

assert compile_summary["status"] == "success", compile_summary
assert compile_summary["action"] == "compile", compile_summary
assert compile_summary["target"] == "@export/ci/f100/db/compile_all.sql", compile_summary

assert invalid_summary["status"] == "success", invalid_summary
assert invalid_summary["action"] == "invalid-objects", invalid_summary
assert invalid_summary["invalid_object_count"] == 2, invalid_summary
assert invalid_summary["invalid_objects"][0]["object_type"] == "PACKAGE BODY", invalid_summary
assert invalid_summary["invalid_objects"][1]["object_name"] == "CUX_RAG_V", invalid_summary
PY

printf 'sql_as compile evidence details test passed\n'
