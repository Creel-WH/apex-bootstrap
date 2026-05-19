#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TEMP_CONN_JSON="$(mktemp)"

cleanup() {
  rm -f "${CAPTURE_FILE}"
  rm -f "${TEMP_CONN_JSON}"
}

trap cleanup EXIT

printf '{}\n' >"${TEMP_CONN_JSON}"

root_conn_json_file() {
  printf '%s\n' "${TEMP_CONN_JSON}"
}

capture_main() {
  local status

  set +e
  main "$@" >"${CAPTURE_FILE}" 2>&1
  status=$?
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${status}"
}

DIRECT_TEST_ENV_ALIAS="dev@oci"
TNS_TEST_ENV_ALIAS="dev@adb"

capture_main init --help

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected init --help to exit 0, got %s\n' "${CAPTURED_STATUS}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'tools/apex_ai.sh init <env_alias>'* ]]; then
  printf 'Expected init help usage line, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'direct'* || "${CAPTURED_OUTPUT}" != *'Direct host, port, service, username, and password values'* ]]; then
  printf 'Expected init help to describe direct mode, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'tns'* || "${CAPTURED_OUTPUT}" != *'TNS alias plus wallet/TNS admin metadata'* ]]; then
  printf 'Expected init help to describe tns mode, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'tools/apex_ai.sh init dev@oci direct'* || "${CAPTURED_OUTPUT}" != *'tools/apex_ai.sh init dev@adb tns'* ]]; then
  printf 'Expected init help examples, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main init

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Missing environment alias for init.'* ]]; then
  printf 'Expected init without args to fail with actionable error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main init invalid=format

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Unsupported environment alias: invalid=format'* ]]; then
  printf 'Expected init invalid env alias format error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main init "${DIRECT_TEST_ENV_ALIAS}" direct

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'direct_access_path - Purpose: choose how direct mode reaches the database. Examples: localhost, ssh, custom'* ]]; then
  printf 'Expected init direct mode to enter the wizard and prompt for direct access path, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main init "${TNS_TEST_ENV_ALIAS}" tns

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'db_username - Purpose: database username used for login. Examples: dev_user, app_user'* ]]; then
  printf 'Expected init tns mode to enter the wizard and prompt for db_username, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main init "${DIRECT_TEST_ENV_ALIAS}" unsupported

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Unsupported init mode: unsupported'* || "${CAPTURED_OUTPUT}" != *'Use direct or tns.'* ]]; then
  printf 'Expected init unsupported mode error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main init "${DIRECT_TEST_ENV_ALIAS}" direct extra

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Unsupported invocation for init.'* || "${CAPTURED_OUTPUT}" != *'Usage:'* ]]; then
  printf 'Expected init extra arg error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai init args test passed\n'
