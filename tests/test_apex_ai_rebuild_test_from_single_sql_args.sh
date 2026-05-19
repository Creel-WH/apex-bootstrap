#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"
APP_DIR="${ROOT_DIR}/export/dev@oci/f101"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${TRACE_FILE}"
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

run_dispatch_script() {
  printf '%s\n' "$*" > "${TRACE_FILE}"
}

capture_main rebuild-test-from-single-sql

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Missing source app id for rebuild-test-from-single-sql.'* ]]; then
  printf 'Expected missing source app id error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main rebuild-test-from-single-sql abc 900

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Source app id must be numeric: abc'* ]]; then
  printf 'Expected numeric validation for source app id, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main rebuild-test-from-single-sql 101 xyz

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Target app id must be numeric: xyz'* ]]; then
  printf 'Expected numeric validation for target app id, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main rebuild-test-from-single-sql 101 900 extra

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Unsupported invocation for rebuild-test-from-single-sql.'* ]]; then
  printf 'Expected unsupported invocation error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

mkdir -p "${APP_DIR}"
capture_main rebuild-test-from-single-sql 101 900

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected rebuild-test-from-single-sql dispatch to exit 0, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/rebuild_test_from_single_sql.sh 101 900" ]]; then
  printf 'Expected route to rebuild_test_from_single_sql.sh, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'Dispatching rebuild-test-from-single-sql from dev@oci/f101 to test@oci/f900'* ]]; then
  printf 'Expected execution summary, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai rebuild-test-from-single-sql args test passed\n'
