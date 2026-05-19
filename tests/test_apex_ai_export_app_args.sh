#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"
APP_DIR="${ROOT_DIR}/export/dev@oci/f108"
MISSING_APP_DIR="${ROOT_DIR}/export/dev@oci/f91008"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${TRACE_FILE}"
  rm -rf "${APP_DIR}" "${MISSING_APP_DIR}"
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

capture_main export-app

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Missing environment alias for export-app.'* ]]; then
  printf 'Expected export-app without env to fail with actionable env error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main export-app dev@oci abc

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Application id must be numeric: abc'* ]]; then
  printf 'Expected export-app numeric validation error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main export-app missing@oci 108

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Missing environment config for alias: missing@oci'* ]]; then
  printf 'Expected export-app missing env alias error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'Dispatching export-app'* ]]; then
  printf 'Expected no export-app summary before env validation, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

mkdir -p "${APP_DIR}"

capture_main export-app dev@oci 108

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected export-app dispatch to exit 0, got %s\n' "${CAPTURED_STATUS}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/export_apex_app.sh dev@oci 108" ]]; then
  printf 'Expected export-app route to export_apex_app.sh, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'Dispatching export-app for dev@oci/f108'* ]]; then
  printf 'Expected export-app execution summary, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai export-app args test passed\n'