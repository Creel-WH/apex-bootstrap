#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/browser_smoke_apex.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
RUN_ID="test-browser-smoke-apex-wrapper"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
RUNNER="$(mktemp)"

cleanup() {
  rm -rf "${RESULT_DIR}"
  rm -f "${RUNNER}"

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

cat > "${CONN_FILE}" <<'JSON'
{
  "oci": {
    "DB_CONNECTION_MODE": "direct",
    "DB_CONNECT_STRING": "user/\"password\"@//127.0.0.1:1528/ORCLPDB1",
    "DB_SCHEMA": "dev",
    "DB_SQLCL_BIN": "true",
    "APEX_WORKSPACE": "dev",
    "APEX_BUILDER_LOGIN_URL": "https://example.test/login",
    "APEX_BUILDER_USERNAME": "admin",
    "APEX_BUILDER_PASSWORD": "secret",
    "APEX_BROWSER_SMOKE_URL": "https://example.test/runtime",
    "APEX_BROWSER_EXPECT_TEXT": "Ready"
  }
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
assert spec["url"] == "https://example.test/runtime"
assert spec["login_url"] == "https://example.test/login"
assert spec["workspace"] == "dev"
assert spec["username"] == "admin"
assert spec["password"] == "secret"
assert spec["contains_text"] == "Ready"

payload = {
    "status": "success",
    "message": "ok",
    "attachments": [],
}
(pathlib.Path(sys.argv[2]) / "result.json").write_text(json.dumps(payload, indent=2) + "\n")
PY
SH
chmod +x "${RUNNER}"

OMX_RUN_ID="${RUN_ID}" BROWSER_SMOKE_RUNNER="${RUNNER}" bash "${SCRIPT}" oci --label "oci-runtime"

python3 - "${RESULT_DIR}/browser/summary.json" "${RESULT_DIR}/contract/summary.json" <<'PY'
import json
import pathlib
import sys

summary = json.loads(pathlib.Path(sys.argv[1]).read_text())
contract = json.loads(pathlib.Path(sys.argv[2]).read_text())
assert summary["status"] == "success", summary
assert summary["target"] == "oci-runtime:https://example.test/runtime", summary
assert 'secret' not in contract["command"], contract
assert 'REDACTED' in contract["command"], contract
PY

printf 'browser smoke apex wrapper test passed\n'
