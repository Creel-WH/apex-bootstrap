#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

TMP_DIR="$(mktemp -d)"
CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"

assert_ordered_sections() {
  local content="$1"

  python3 - <<'PY' "${content}"
import sys

content = sys.argv[1]
sections = [
    'Minimal fields for ',
    'Autofill fields for ',
    'Final write summary for ',
    'Verification summaries for ',
    'Next-step guidance for ',
]

position = -1
for section in sections:
    next_position = content.find(section)
    if next_position == -1:
        raise SystemExit(section)
    if next_position <= position:
        raise SystemExit('order')
    position = next_position
PY
}

assert_verification_first_line_starts_with_status() {
  local expected_status="$1"
  local content="$2"

  python3 - <<'PY' "${expected_status}" "${content}"
import sys

expected_status = sys.argv[1]
lines = sys.argv[2].splitlines()
for index, line in enumerate(lines):
    if line.startswith('Verification summaries for '):
        if index + 1 >= len(lines):
            raise SystemExit('missing verification line')
        if not lines[index + 1].startswith(expected_status + ' '):
            raise SystemExit(lines[index + 1])
        break
else:
    raise SystemExit('missing verification header')
PY
}

cleanup() {
  rm -rf "${TMP_DIR}"
  rm -f "${CAPTURE_FILE}" "${TRACE_FILE}"
}

trap cleanup EXIT

ROOT_DIR="${TMP_DIR}"
PROJECT_CONFIG_DIR="${ROOT_DIR}"
CONFIG_FILE="${ROOT_DIR}/conn.json"
printf '{}\n' > "${ROOT_DIR}/conn.json"

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
      printf 'OK %s SQLcl connectivity check passed\n' "$3"
      ;;
    *)
      printf 'Unexpected bash invocation: %s\n' "$*" >&2
      return 95
      ;;
  esac
}

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

capture_main_with_input $'direct\nlocalhost\ndev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\ndev\nDEV\n' init dev@oci

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected init dev@oci wizard flow to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_ordered_sections "${CAPTURED_OUTPUT}"
assert_verification_first_line_starts_with_status 'OK' "${CAPTURED_OUTPUT}"

if [[ "${CAPTURED_OUTPUT}" != *'Combined status: OK'* || "${CAPTURED_OUTPUT}" != *'OK dev@oci Deep checks passed'* || "${CAPTURED_OUTPUT}" != *'OK dev@oci SQLcl connectivity check passed'* ]]; then
  printf 'Expected verification summaries and combined OK status, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_connection_mode - Purpose: choose how this environment connects. Examples: direct, tns'* ]]; then
  printf 'Expected db_connection_mode prompt with purpose/examples, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'direct_access_path - Purpose: choose how direct mode reaches the database. Examples: localhost, ssh, custom'* ]]; then
  printf 'Expected direct_access_path prompt with purpose/examples, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_connect_string - Purpose: EZ Connect string for local database access. Examples: dev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1, app_user/__fill_me__@localhost:1521/FREEPDB1'* ]]; then
  printf 'Expected localhost db_connect_string prompt, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'db_tns_alias - Purpose:'* ]]; then
  printf 'Did not expect TNS prompt during direct localhost flow, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_connection_mode=direct'* || "${CAPTURED_OUTPUT}" != *'db_connect_string=dev_user/***@127.0.0.1:1521/ORCLPDB1'* ]]; then
  printf 'Expected collected direct answers in output, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'db_username - Purpose: database username used for login. Examples: dev_user, app_user'* || "${CAPTURED_OUTPUT}" == *'db_connect_string=dev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1'* ]]; then
  printf 'Did not expect overlapping username prompt or unmasked password in localhost direct flow, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main_with_input $'tns\ndev_user\n__fill_me__\nDEVADB_HIGH\nwallet/dev_adb\ndev\nDEV\n' init dev@adb

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected init dev@adb wizard flow to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_ordered_sections "${CAPTURED_OUTPUT}"
assert_verification_first_line_starts_with_status 'OK' "${CAPTURED_OUTPUT}"

if [[ "${CAPTURED_OUTPUT}" != *'Combined status: OK'* || "${CAPTURED_OUTPUT}" != *'OK dev@adb Deep checks passed'* || "${CAPTURED_OUTPUT}" != *'OK dev@adb SQLcl connectivity check passed'* ]]; then
  printf 'Expected verification summaries and combined OK status, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_tns_alias - Purpose: wallet TNS service name. Examples: DEVADB_HIGH, MYADB_LOW'* ]]; then
  printf 'Expected db_tns_alias prompt with purpose/examples, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_tns_admin - Purpose: wallet directory used by SQLcl. Examples: wallet/dev_adb, /opt/oracle/wallets/dev_adb'* ]]; then
  printf 'Expected db_tns_admin prompt with purpose/examples, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'direct_access_path - Purpose:'* ]]; then
  printf 'Did not expect direct access prompt during tns flow, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_connection_mode=tns'* || "${CAPTURED_OUTPUT}" != *'db_tns_alias=DEVADB_HIGH'* || "${CAPTURED_OUTPUT}" != *'db_password=***'* ]]; then
  printf 'Expected collected tns answers in output, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'db_password=__fill_me__'* ]]; then
  printf 'Did not expect raw db_password in tns output, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "$(wc -l < "${TRACE_FILE}" | tr -d ' ')" != '4' ]]; then
  printf 'Expected deep check plus sql-check for both flows, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

printf 'apex_ai init mode wizard test passed\n'
