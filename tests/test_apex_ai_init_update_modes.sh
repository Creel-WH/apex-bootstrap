#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

detect_init_java_preview() {
  return 1
}

detect_init_sqlcl_bin() {
  return 1
}

unset JAVA_HOME || true
unset DB_SQLCL_BIN || true

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

persisted_entry_json() {
  local env_alias="$1"

  python3 - "${ROOT_DIR}/conn.json" "${env_alias}" <<'PY'
import json
import sys

with open(sys.argv[1], 'r', encoding='utf-8') as handle:
    payload = json.load(handle)

entry = payload.get(sys.argv[2])
if not isinstance(entry, dict):
    raise SystemExit('missing {}'.format(sys.argv[2]))

print(json.dumps(entry, sort_keys=True, separators=(',', ':')))
PY
}

write_conn_json_fixture() {
  local json_payload="$1"
  printf '%s\n' "${json_payload}" > "${ROOT_DIR}/conn.json"
}

assert_persisted_entry() {
  local env_alias="$1"
  local expected_json="$2"
  local actual_json
  local rc

  set +e
  actual_json="$(persisted_entry_json "${env_alias}")"
  rc=$?
  set -e

  if [[ "${rc}" -ne 0 ]]; then
    printf 'Failed to read persisted %s entry\n' "${env_alias}" >&2
    exit 1
  fi

  if [[ "${actual_json}" != "${expected_json}" ]]; then
    printf 'Expected persisted %s entry %s, got %s\n' "${env_alias}" "${expected_json}" "${actual_json}" >&2
    exit 1
  fi
}

assert_trace_content() {
  local expected_trace="$1"
  local actual_trace=""
  local actual_lines=""
  local expected_lines=""

  actual_trace="$(/bin/cat "${TRACE_FILE}")"
  actual_lines="$(/usr/bin/wc -l < "${TRACE_FILE}")"
  actual_lines="${actual_lines//[[:space:]]/}"
  expected_lines="$(printf '%s' "${expected_trace}" | /usr/bin/python3 -c 'import sys; print(len(sys.stdin.read().splitlines()))')"

  if [[ "${actual_lines}" != "${expected_lines}" || "${actual_trace}" != "${expected_trace}" ]]; then
    printf 'Expected exact post-write deep verification command, got: %s\n' "${actual_trace}" >&2
    exit 1
  fi
}

capture_main_with_input() {
  local input="$1"
  shift
  local rc

  set +e
  (
    main "$@" <<<"${input}"
  ) >"${CAPTURE_FILE}" 2>&1
  rc=$?
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${rc}"
}

VERIFICATION_STATUS=0
VERIFICATION_OUTPUT='OK dev@oci Deep checks passed'
SQL_CHECK_OUTPUT='OK dev@oci SQLcl connectivity check passed'

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
      printf '%s\n' "${VERIFICATION_OUTPUT}"
      return "${VERIFICATION_STATUS}"
      ;;
    sql-check)
      [[ "$#" -eq 3 ]] || {
        printf 'Unexpected sql-check invocation: %s\n' "$*" >&2
        return 96
      }
      printf '%s\n' "${SQL_CHECK_OUTPUT}"
      return 0
      ;;
    *)
      printf 'Unexpected bash invocation: %s\n' "$*" >&2
      return 95
      ;;
  esac
}

write_conn_json_fixture '{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "tns",
    "db_username": "legacy_user",
    "db_password": "legacy-secret",
    "db_tns_alias": "LEGACY_HIGH",
    "db_tns_admin": "wallet/legacy",
    "db_schema": "legacy",
    "apex_workspace": "LEGACY_WS",
    "ssh_key_path": "/Users/shared/.ssh/legacy.key",
    "oci_profile": "DEFAULT",
    "notes": "keep-me"
  }
}'

VERIFICATION_STATUS=1
VERIFICATION_OUTPUT='WARN dev@oci Credentials still contain __fill_me__ placeholders Resolve the warning details or rerun without --deep'

capture_main_with_input $'overwrite-minimal\ndirect\nlocalhost\ndev_user/__fill_me__@127.0.0.1:1521/NEWPDB1\ndev_new\nDEV_NEW\n' init dev@oci

if [[ "${CAPTURED_STATUS}" -ne 1 ]]; then
  printf 'Expected overwrite-minimal flow to surface WARN exit 1, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_ordered_sections "${CAPTURED_OUTPUT}"
assert_verification_first_line_starts_with_status 'WARN' "${CAPTURED_OUTPUT}"

if [[ "${CAPTURED_OUTPUT}" != *'existing_env_action - Purpose: choose how to update this existing environment. Examples: overwrite-minimal, merge-preserve-advanced, cancel'* ]]; then
  printf 'Expected existing env action prompt, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'WARN dev@oci Credentials still contain __fill_me__ placeholders'* || "${CAPTURED_OUTPUT}" != *'Combined status: WARN'* ]]; then
  printf 'Expected post-write WARN verification output, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'SQLcl connectivity check passed'* ]]; then
  printf 'Did not expect sql-check summary after WARN deep check, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_trace_content "${ROOT_DIR}/tools/apex_ai.sh"$'\037''check'$'\037''dev@oci'$'\037''--deep'

assert_persisted_entry 'dev@oci' '{"apex_workspace":"DEV_NEW","db_connect_string":"dev_user/__fill_me__@127.0.0.1:1521/NEWPDB1","db_connection_mode":"direct","db_schema":"dev_new","env_name":"dev@oci","notes":"keep-me","oci_profile":"DEFAULT"}'

: > "${TRACE_FILE}"

write_conn_json_fixture '{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "tns",
    "db_username": "legacy_user",
    "db_password": "legacy-secret",
    "db_tns_alias": "LEGACY_HIGH",
    "db_tns_admin": "wallet/legacy",
    "db_schema": "legacy",
    "apex_workspace": "LEGACY_WS",
    "ssh_key_path": "/Users/shared/.ssh/legacy.key",
    "oci_profile": "DEFAULT",
    "notes": "keep-me"
  }
}'

VERIFICATION_STATUS=0
VERIFICATION_OUTPUT='OK dev@oci Deep checks passed'

capture_main_with_input $'merge-preserve-advanced\ndirect\nlocalhost\ndev_user/final-secret@127.0.0.1:1521/NEWPDB1\ndev_new\nDEV_NEW\n' init dev@oci

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected merge-preserve-advanced flow to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_ordered_sections "${CAPTURED_OUTPUT}"
assert_verification_first_line_starts_with_status 'OK' "${CAPTURED_OUTPUT}"

if [[ "${CAPTURED_OUTPUT}" != *'OK dev@oci Deep checks passed'* || "${CAPTURED_OUTPUT}" != *'OK dev@oci SQLcl connectivity check passed'* || "${CAPTURED_OUTPUT}" != *'Combined status: OK'* ]]; then
  printf 'Expected deep and sql-check OK summaries, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' '{"apex_workspace":"DEV_NEW","db_connect_string":"dev_user/final-secret@127.0.0.1:1521/NEWPDB1","db_connection_mode":"direct","db_password":"legacy-secret","db_schema":"dev_new","db_tns_admin":"wallet/legacy","db_tns_alias":"LEGACY_HIGH","db_username":"legacy_user","env_name":"dev@oci","notes":"keep-me","oci_profile":"DEFAULT","ssh_key_path":"/Users/shared/.ssh/legacy.key"}'

assert_trace_content "${ROOT_DIR}/tools/apex_ai.sh"$'\037''check'$'\037''dev@oci'$'\037''--deep'$'\n'"${ROOT_DIR}/tools/apex_ai.sh"$'\037''sql-check'$'\037''dev@oci'$'\037'

: > "${TRACE_FILE}"

write_conn_json_fixture '{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "tns",
    "db_username": "legacy_user",
    "db_password": "legacy-secret",
    "db_tns_alias": "LEGACY_HIGH",
    "db_tns_admin": "wallet/legacy",
    "db_schema": "legacy",
    "apex_workspace": "LEGACY_WS",
    "oci_profile": "DEFAULT",
    "notes": "keep-me"
  }
}'

capture_main_with_input $'cancel\n' init dev@oci

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Cancelled init for existing environment: dev@oci'* ]]; then
  printf 'Expected cancel flow to stop without writing, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' '{"apex_workspace":"LEGACY_WS","db_connection_mode":"tns","db_password":"legacy-secret","db_schema":"legacy","db_tns_admin":"wallet/legacy","db_tns_alias":"LEGACY_HIGH","db_username":"legacy_user","env_name":"dev@oci","notes":"keep-me","oci_profile":"DEFAULT"}'

if [[ -n "$(<"${TRACE_FILE}")" ]]; then
  printf 'Did not expect verification command after cancel, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

printf 'apex_ai init update modes test passed\n'
