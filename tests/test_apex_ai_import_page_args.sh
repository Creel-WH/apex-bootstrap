#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"
SOURCE_APP_DIR="${ROOT_DIR}/export/dev@oci/f108"
MISSING_APP_DIR="${ROOT_DIR}/export/dev@oci/f91010"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${TRACE_FILE}"
  rm -rf "${SOURCE_APP_DIR}" "${MISSING_APP_DIR}"
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

capture_main import-page

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Missing environment alias for import-page.'* ]]; then
  printf 'Expected import-page without env to fail with actionable env error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main import-page dev@oci abc 014

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Source app id must be numeric: abc'* ]]; then
  printf 'Expected import-page source app numeric validation error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main import-page dev@oci 108 abc

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Page id must be numeric: abc'* ]]; then
  printf 'Expected import-page page numeric validation error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main import-page dev@oci 91010 014

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *"Missing application directory: ${MISSING_APP_DIR}"* ]]; then
  printf 'Expected import-page missing source app directory error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main import-page missing@oci 108 014

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Missing environment config for alias: missing@oci'* ]]; then
  printf 'Expected import-page missing env alias error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'Dispatching import-page'* ]]; then
  printf 'Expected no import-page summary before env validation, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

mkdir -p "${SOURCE_APP_DIR}"

capture_main import-page dev@oci 108 014

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected import-page dispatch to exit 0, got %s\n' "${CAPTURED_STATUS}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/import_apex_page.sh dev@oci 108 014" ]]; then
  printf 'Expected import-page route to import_apex_page.sh, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'Dispatching import-page for dev@oci/f108 page 014'* ]]; then
  printf 'Expected import-page execution summary, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai import-page args test passed\n'
