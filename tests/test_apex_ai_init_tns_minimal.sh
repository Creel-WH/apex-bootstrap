#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

unset JAVA_HOME || true
unset DB_SQLCL_BIN || true

TMP_DIR="$(mktemp -d)"
CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"

cleanup() {
  /bin/rm -rf "${TMP_DIR}"
  /bin/rm -f "${CAPTURE_FILE}" "${TRACE_FILE}"
}

trap cleanup EXIT

ROOT_DIR="${TMP_DIR}"
PROJECT_CONFIG_DIR="${ROOT_DIR}"
CONFIG_FILE="${ROOT_DIR}/conn.json"
PYTHON3_BIN="$(command -v python3)"
TR_BIN="$(command -v tr)"
PATH="${ROOT_DIR}/empty-bin"

/bin/mkdir -p "${ROOT_DIR}/empty-bin"
/bin/ln -sf /bin/cat "${ROOT_DIR}/empty-bin/cat"
/bin/ln -sf "${PYTHON3_BIN}" "${ROOT_DIR}/empty-bin/python3"
/bin/ln -sf "${TR_BIN}" "${ROOT_DIR}/empty-bin/tr"

bash() {
  local arg1="${1-}"
  local arg2="${2-}"
  local arg3="${3-}"
  local arg4="${4-}"

  printf '%s\037%s\037%s\037%s\n' "${arg1}" "${arg2}" "${arg3}" "${arg4}" >> "${TRACE_FILE}"

  if [[ "${arg1}" != "${ROOT_DIR}/tools/apex_ai.sh" || "${arg3}" == '' ]]; then
    printf 'Unexpected bash invocation: %s\n' "$*" >&2
    return 99
  fi

  case "${arg2}" in
    check)
      [[ "$#" -eq 4 ]] || {
        printf 'Unexpected check invocation: %s\n' "$*" >&2
        return 98
      }
      [[ "$4" == '--deep' ]] || {
        printf 'Unexpected check invocation: %s\n' "$*" >&2
        return 97
      }
      printf 'OK %s Deep checks passed\n' "$3"
      ;;
    sql-check)
      [[ "$#" -eq 3 ]] || {
        printf 'Unexpected sql-check invocation: %s\n' "$*" >&2
        return 96
      }
      [[ "${arg4}" == '' ]] || {
        printf 'Unexpected sql-check invocation: %s\n' "$*" >&2
        return 95
      }
      printf 'OK %s SQLcl connectivity check passed\n' "$3"
      ;;
    *)
      printf 'Unexpected bash invocation: %s\n' "$*" >&2
      return 94
      ;;
  esac
}

cat > "${ROOT_DIR}/conn.json" <<'JSON'
{
  "dev@adb": {
    "env_name": "dev@adb",
    "db_connection_mode": "tns",
    "db_username": "old_user",
    "db_password": "old_password",
    "db_tns_alias": "OLD_ALIAS",
    "db_tns_admin": "wallet/old",
    "db_schema": "old_schema",
    "apex_workspace": "OLD",
    "adb_service_name": "OLD_ALIAS",
    "notes": "preserve me",
    "adb": {
      "connection_type": "tns_wallet"
    }
  }
}
JSON

capture_main_with_input() {
  local input="$1"
  shift
  local status

  set +e
  (main "$@") <<<"${input}" >"${CAPTURE_FILE}" 2>&1
  status=$?
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${status}"
}

capture_main_with_input $'merge-preserve-advanced\ndev_user\n__fill_me__\nDEVADB_HIGH\nwallet/dev_adb\ndev\nDEV\n' init dev@adb tns

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected tns flow to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_username - Purpose: database username used for login. Examples: dev_user, app_user'* ]]; then
  printf 'Expected db_username prompt with purpose/examples, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_password - Purpose: database password for the selected username. Examples: use __fill_me__ now, paste the real password later'* ]]; then
  printf 'Expected db_password prompt with purpose/examples, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_tns_alias - Purpose: wallet TNS service name. Examples: DEVADB_HIGH, MYADB_LOW'* ]]; then
  printf 'Expected db_tns_alias prompt, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_tns_admin - Purpose: wallet directory used by SQLcl. Examples: wallet/dev_adb, /opt/oracle/wallets/dev_adb'* ]]; then
  printf 'Expected db_tns_admin prompt, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'direct_access_path - Purpose:'* || "${CAPTURED_OUTPUT}" == *'ssh_host - Purpose:'* || "${CAPTURED_OUTPUT}" == *'db_connect_string - Purpose:'* ]]; then
  printf 'Did not expect direct-mode prompts during tns flow, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_connection_mode=tns'* || "${CAPTURED_OUTPUT}" != *'db_password=***'* || "${CAPTURED_OUTPUT}" != *'apex_workspace=DEV'* ]]; then
  printf 'Expected collected tns values in output, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'Autofill fields for dev@adb'* || "${CAPTURED_OUTPUT}" != *'db_connection_type=tns_wallet (preview only)'* || "${CAPTURED_OUTPUT}" != *'db_wallet_dir=wallet/dev_adb (preview only)'* || "${CAPTURED_OUTPUT}" != *'db_service_name=DEVADB_HIGH (preview only)'* ]]; then
  printf 'Expected generic tns preview-only lines, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'java_home='* || "${CAPTURED_OUTPUT}" == *'db_sqlcl_bin='* ]]; then
  printf 'Did not expect runtime autofill preview in minimal tns test, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'db_password=__fill_me__'* ]]; then
  printf 'Did not expect raw password in tns output, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/apex_ai.sh"$'\037''check'$'\037''dev@adb'$'\037''--deep'$'\n'"${ROOT_DIR}/tools/apex_ai.sh"$'\037''sql-check'$'\037''dev@adb'$'\037' ]]; then
  printf 'Expected deep check then sql-check after tns write, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

PERSISTED_TNS_JSON="$(python3 - "${ROOT_DIR}/conn.json" <<'PY'
import json
import sys

with open(sys.argv[1], 'r', encoding='utf-8') as handle:
    payload = json.load(handle)

entry = payload.get('dev@adb')
if not isinstance(entry, dict):
    raise SystemExit('missing dev@adb entry')

expected = {
    'env_name': 'dev@adb',
    'db_connection_mode': 'tns',
    'db_username': 'dev_user',
    'db_password': '__fill_me__',
    'db_tns_alias': 'DEVADB_HIGH',
    'db_tns_admin': 'wallet/dev_adb',
    'db_schema': 'dev',
    'apex_workspace': 'DEV',
    'adb_service_name': 'OLD_ALIAS',
    'notes': 'preserve me',
    'adb': {'connection_type': 'tns_wallet'},
}

if entry != expected:
    raise SystemExit(json.dumps(entry, sort_keys=True))

adb = entry.get('adb')
if adb.get('wallet_dir') is not None or adb.get('service_name') is not None:
    raise SystemExit(json.dumps(entry, sort_keys=True))

if entry.get('adb.connection_type') is not None or entry.get('adb.wallet_dir') is not None or entry.get('adb.service_name') is not None:
    raise SystemExit(json.dumps(entry, sort_keys=True))

print('ok')
PY
)"

if [[ "${PERSISTED_TNS_JSON}" != 'ok' ]]; then
  printf 'Expected minimal tns conn.json entry, got: %s\n' "${PERSISTED_TNS_JSON}" >&2
  exit 1
fi

printf 'apex_ai init tns wizard test passed\n'
