#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"
TEST_CONN_JSON_FILE="$(mktemp)"
SOURCE_APP_DIR="${ROOT_DIR}/export/source@oci/f100"
MISSING_APP_DIR="${ROOT_DIR}/export/source@oci/f91009"

cat > "${TEST_CONN_JSON_FILE}" <<'JSON'
{
  "source@oci": {
    "env_name": "source@oci"
  },
  "dev@oci": {
    "env_name": "dev@oci"
  }
}
JSON

root_conn_json_file() {
  printf '%s\n' "${TEST_CONN_JSON_FILE}"
}

cleanup() {
  rm -f "${CAPTURE_FILE}" "${TRACE_FILE}" "${TEST_CONN_JSON_FILE}"
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

capture_main import-app

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Missing environment alias for import-app.'* ]]; then
  printf 'Expected import-app without env to fail with actionable env error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main import-app source@oci abc dev@oci 108

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Source app id must be numeric: abc'* ]]; then
  printf 'Expected import-app source app numeric validation error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main import-app source@oci 100 dev@oci abc

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Target app id must be numeric: abc'* ]]; then
  printf 'Expected import-app target app numeric validation error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main import-app source@oci 91009 dev@oci 108

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *"Missing application directory: ${MISSING_APP_DIR}"* ]]; then
  printf 'Expected import-app missing source app directory error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main import-app missing@oci 100 dev@oci 108

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Missing environment config for alias: missing@oci'* ]]; then
  printf 'Expected import-app missing source env alias error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'Dispatching import-app'* ]]; then
  printf 'Expected no import-app summary before env validation, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

mkdir -p "${SOURCE_APP_DIR}"

capture_main import-app source@oci 100 dev@oci 108

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected import-app dispatch to exit 0, got %s\n' "${CAPTURED_STATUS}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/import_apex_app.sh source@oci 100 dev@oci 108" ]]; then
  printf 'Expected import-app route to import_apex_app.sh, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'Dispatching import-app from source@oci/f100 to dev@oci/f108'* ]]; then
  printf 'Expected import-app execution summary, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai import-app args test passed\n'
