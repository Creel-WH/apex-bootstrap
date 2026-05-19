#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/import_apex_page.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
RUN_ID="test-import-page-evidence-failure"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
APP_DIR="${ROOT_DIR}/export/ci/f100"
EXPORT_DIR="${APP_DIR}/apex/application"
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

mkdir -p "${EXPORT_DIR}/pages"
touch "${EXPORT_DIR}/set_environment.sql" "${EXPORT_DIR}/end_environment.sql" "${EXPORT_DIR}/pages/page_00010.sql"

cat > "${FAKE_SQL}" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
input="$(cat)"
if [[ "${input}" == *"from apex_applications"* ]]; then
  printf '0\n'
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

if OMX_RUN_ID="${RUN_ID}" bash "${SCRIPT}" ci 100 10; then
  printf 'Expected import_apex_page to fail\n' >&2
  exit 1
fi

python3 - "${RESULT_DIR}/contract/summary.json" "${RESULT_DIR}/deploy/page.summary.json" <<'PY'
import json
import pathlib
import sys

contract_path = pathlib.Path(sys.argv[1])
page_path = pathlib.Path(sys.argv[2])

assert contract_path.exists(), "missing contract summary"
assert page_path.exists(), "missing page deploy summary"

contract = json.loads(contract_path.read_text())
page = json.loads(page_path.read_text())

assert contract["status"] == "failure", contract
assert contract["action"] == "deploy-page", contract
assert contract["message"] == "Target APEX application does not exist", contract

assert page["status"] == "failure", page
assert page["action"] == "deploy-page", page
assert page["message"] == "Target APEX application does not exist", page
PY

printf 'import_apex_page evidence failure test passed\n'
