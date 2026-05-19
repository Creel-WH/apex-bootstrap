#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"

cleanup() {
  rm -f "${CAPTURE_FILE}"
}

trap cleanup EXIT

capture_main() {
  local status

  set +e
  main "$@" >"${CAPTURE_FILE}" 2>&1
  status=$?
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${status}"
}

check_env_quick_probe() {
  printf 'environment|%s|||OK|0|Quick checks passed|Run sql-check for a live connection check\n' "$1"
}

prepare_env_context() {
  DB_CONNECTION_MODE='tns'
  DB_PASSWORD='__fill_me__'
  DB_TNS_ADMIN="${ROOT_DIR}/missing-wallet-for-deep-check"
  return 0
}

capture_main check dev@adb --deep

if [[ "${CAPTURED_STATUS}" -ne 1 ]]; then
  printf 'Expected deep check to warn when prepared env context has placeholders, got status %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'WARN dev@adb'* ]]; then
  printf 'Expected deep check WARN output, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'Credentials still contain __fill_me__ placeholders'* ]]; then
  printf 'Expected deep check to inspect env loaded after quick probe, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai deep check preserves env context test passed\n'
