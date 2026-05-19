#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"

# shellcheck source=../../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TEMP_CONN_JSON="$(mktemp)"
TEMP_LOCAL_CONN_JSON="$(mktemp)"
TEMP_USQL_BIN="$(mktemp)"

cleanup() {
  rm -f "${CAPTURE_FILE}"
  rm -f "${TEMP_CONN_JSON}"
  rm -f "${TEMP_LOCAL_CONN_JSON}"
  rm -f "${TEMP_USQL_BIN}"
}

trap cleanup EXIT

cat > "${TEMP_USQL_BIN}" <<'EOF'
#!/usr/bin/env bash
exit 0
EOF
chmod +x "${TEMP_USQL_BIN}"

cat > "${TEMP_CONN_JSON}" <<JSON
{
  "晶鱼@prod": {
    "env_name": "晶鱼@prod",
    "db_connection_mode": "generic",
    "driver": "oracle",
    "jdbc_url": "jdbc:oracle:thin:@//10.2.8.109:1523/TDDPDB",
    "host": "10.2.8.109",
    "port": 1523,
    "service": "TDDPDB",
    "username": "MPF_READ",
    "password": "__fill_me__",
    "db_usql_bin": "${TEMP_USQL_BIN}"
  }
}
JSON

cat > "${TEMP_LOCAL_CONN_JSON}" <<JSON
{
  "晶鱼@prod": {
    "password": "local-secret"
  },
  "本地@prod": {
    "env_name": "本地@prod",
    "db_connection_mode": "generic",
    "driver": "mysql",
    "host": "127.0.0.1",
    "port": 3306,
    "database": "local_db",
    "username": "local_user",
    "password": "local-secret",
    "db_usql_bin": "${TEMP_USQL_BIN}"
  }
}
JSON

root_conn_json_file() {
  printf '%s\n' "${TEMP_CONN_JSON}"
}

LOCAL_CONFIG_FILE="${TEMP_LOCAL_CONN_JSON}"

capture_main() {
  local status

  set +e
  main "$@" >"${CAPTURE_FILE}" 2>&1
  status=$?
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${status}"
}

capture_main check --json

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected quick generic env check to pass, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

JSON_PAYLOAD="${CAPTURED_OUTPUT}" python3 - <<'PY'
import json
import os

payload = json.loads(os.environ["JSON_PAYLOAD"])
result = payload.get("results", [payload])[0]

assert payload["status"] == "OK", payload
assert result["env_alias"] == "晶鱼@prod", result
assert result["status"] == "OK", result
assert result["reason"] == "Generic database metadata checks passed", result
PY

capture_main check '晶鱼@prod' --deep --json

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected deep generic env check to use ignored local password overlay, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

JSON_PAYLOAD="${CAPTURED_OUTPUT}" python3 - <<'PY'
import json
import os

payload = json.loads(os.environ["JSON_PAYLOAD"])
result = payload.get("results", [payload])[0]

assert payload["status"] == "OK", payload
assert result["env_alias"] == "晶鱼@prod", result
assert result["status"] == "OK", result
assert result["reason"] == "Generic database metadata checks passed", result
PY

capture_main sql-check '晶鱼@prod' --json

if [[ "${CAPTURED_STATUS}" -ne 2 ]]; then
  printf 'Expected SQLcl check for generic env to fail cleanly, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

JSON_PAYLOAD="${CAPTURED_OUTPUT}" python3 - <<'PY'
import json
import os

payload = json.loads(os.environ["JSON_PAYLOAD"])
result = payload.get("results", [payload])[0]

assert payload["status"] == "FAIL", payload
assert result["env_alias"] == "晶鱼@prod", result
assert result["status"] == "FAIL", result
assert "Unsupported DB_CONNECTION_MODE: generic" in result["reason"], result
PY

capture_main usql-check '晶鱼@prod' --json

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected usql-check for generic env to pass, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

JSON_PAYLOAD="${CAPTURED_OUTPUT}" python3 - <<'PY'
import json
import os

payload = json.loads(os.environ["JSON_PAYLOAD"])
result = payload.get("results", [payload])[0]

assert payload["status"] == "OK", payload
assert result["env_alias"] == "晶鱼@prod", result
assert result["status"] == "OK", result
assert result["reason"] == "usql connectivity check passed", result
PY

capture_main usql-check '本地@prod' --json

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected usql-check for local-only generic env to pass, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

JSON_PAYLOAD="${CAPTURED_OUTPUT}" python3 - <<'PY'
import json
import os

payload = json.loads(os.environ["JSON_PAYLOAD"])
result = payload.get("results", [payload])[0]

assert payload["status"] == "OK", payload
assert result["env_alias"] == "本地@prod", result
assert result["status"] == "OK", result
assert result["reason"] == "usql connectivity check passed", result
PY

printf 'apex_ai generic env check test passed\n'
