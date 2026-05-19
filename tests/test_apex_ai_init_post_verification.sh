#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

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
printf '{"dev@oci":{"env_name":"dev@oci"}}\n' > "${ROOT_DIR}/conn.json"

CHECK_OUTPUT='OK dev@oci Deep checks passed'
SQL_CHECK_OUTPUT='OK dev@oci SQLcl connectivity check passed'

bash() {
  local arg4="${4-}"

  printf '%s\037%s\037%s\037%s\n' "$1" "$2" "$3" "${arg4}" >> "${TRACE_FILE}"

  if [[ "$1" != "${ROOT_DIR}/tools/apex_ai.sh" || "$3" != 'dev@oci' ]]; then
    printf 'Unexpected bash invocation: %s\n' "$*" >&2
    return 99
  fi

  case "$2" in
    check)
      [[ "$#" -eq 4 ]] || {
        printf 'Expected four args for check, got: %s\n' "$*" >&2
        return 97
      }
      printf '%s\n' "${CHECK_OUTPUT}"
      ;;
    sql-check)
      [[ "$#" -eq 3 ]] || {
        printf 'Expected three args for sql-check, got: %s\n' "$*" >&2
        return 96
      }
      printf '%s\n' "${SQL_CHECK_OUTPUT}"
      ;;
    *)
      printf 'Unexpected action: %s\n' "$2" >&2
      return 98
      ;;
  esac
}

capture_post_init_verification() {
  local rc

  : > "${TRACE_FILE}"
  set +e
  run_post_init_verification 'dev@oci' >"${CAPTURE_FILE}" 2>&1
  rc=$?
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${rc}"
}

assert_first_line_equals() {
  local expected_line="$1"
  local actual_line

  actual_line="$(/usr/bin/python3 -c 'import sys; print(sys.stdin.read().splitlines()[0])' < "${CAPTURE_FILE}")"
  if [[ "${actual_line}" != "${expected_line}" ]]; then
    printf 'Expected first line %s, got %s\n' "${expected_line}" "${actual_line}" >&2
    exit 1
  fi
}

assert_exact_trace() {
  local expected_trace="$1"
  local actual_trace

  actual_trace="$(/bin/cat "${TRACE_FILE}")"
  if [[ "${actual_trace}" != "${expected_trace}" ]]; then
    printf 'Expected trace %s, got %s\n' "${expected_trace}" "${actual_trace}" >&2
    exit 1
  fi
}

CHECK_OUTPUT=$'OK dev@oci Deep checks passed\nadditional detail ignored'
SQL_CHECK_OUTPUT='OK dev@oci SQLcl connectivity check passed'
capture_post_init_verification

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected OK + OK verification to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'OK dev@oci Deep checks passed'* || "${CAPTURED_OUTPUT}" != *'OK dev@oci SQLcl connectivity check passed'* || "${CAPTURED_OUTPUT}" != *'Combined status: OK'* ]]; then
  printf 'Expected successful verification summaries and OK combined status, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_first_line_equals 'OK dev@oci post-init verification passed'

assert_exact_trace "${ROOT_DIR}/tools/apex_ai.sh"$'\037''check'$'\037''dev@oci'$'\037''--deep'$'\n'"${ROOT_DIR}/tools/apex_ai.sh"$'\037''sql-check'$'\037''dev@oci'$'\037'

CHECK_OUTPUT='WARN dev@oci Credentials still contain __fill_me__ placeholders'
SQL_CHECK_OUTPUT='OK dev@oci SQLcl connectivity check passed'
capture_post_init_verification

if [[ "${CAPTURED_STATUS}" -ne 1 ]]; then
  printf 'Expected WARN deep verification to exit 1, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'WARN dev@oci Credentials still contain __fill_me__ placeholders'* || "${CAPTURED_OUTPUT}" != *'Combined status: WARN'* ]]; then
  printf 'Expected WARN verification summaries, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_first_line_equals 'WARN dev@oci post-init verification requires attention'

if [[ "${CAPTURED_OUTPUT}" == *'SQLcl connectivity check passed'* ]]; then
  printf 'Did not expect sql-check summary after WARN deep check, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_exact_trace "${ROOT_DIR}/tools/apex_ai.sh"$'\037''check'$'\037''dev@oci'$'\037''--deep'

CHECK_OUTPUT='FAIL dev@oci Missing wallet files for wallet/dev_adb'
capture_post_init_verification

if [[ "${CAPTURED_STATUS}" -ne 2 ]]; then
  printf 'Expected FAIL deep verification to exit 2, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'FAIL dev@oci Missing wallet files for wallet/dev_adb'* || "${CAPTURED_OUTPUT}" != *'Combined status: FAIL'* ]]; then
  printf 'Expected FAIL verification summaries, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_first_line_equals 'FAIL dev@oci post-init verification failed'

if [[ "${CAPTURED_OUTPUT}" == *'SQLcl connectivity check passed'* ]]; then
  printf 'Did not expect sql-check summary after FAIL deep check, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_exact_trace "${ROOT_DIR}/tools/apex_ai.sh"$'\037''check'$'\037''dev@oci'$'\037''--deep'

printf 'apex_ai init post verification test passed\n'
