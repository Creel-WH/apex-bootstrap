#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"
TEST_CONN_JSON_FILE="$(mktemp)"
APP_DIR="${ROOT_DIR}/export/sample@dev/f321"

cat > "${TEST_CONN_JSON_FILE}" <<'JSON'
{
  "sample@dev": {
    "env_name": "sample@dev",
    "apex_app_id": "321"
  },
  "no-app@dev": {
    "env_name": "no-app@dev"
  }
}
JSON

root_conn_json_file() {
  printf '%s\n' "${TEST_CONN_JSON_FILE}"
}

cleanup() {
  rm -f "${CAPTURE_FILE}" "${TRACE_FILE}" "${TEST_CONN_JSON_FILE}"
  rm -rf "${APP_DIR}"
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

mkdir -p "${APP_DIR}/docs/pages"

capture_main export-app sample@dev

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected export-app to use default app id, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/export_apex_app.sh sample@dev 321" ]]; then
  printf 'Expected export-app default app id route, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

capture_main export-page sample@dev 014

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected export-page to use default app id, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/export_apex_page.sh sample@dev 321 014" ]]; then
  printf 'Expected export-page default app id route, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

capture_main gate sample@dev all

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected gate to use default app id, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/run_gate.sh sample@dev 321 all" ]]; then
  printf 'Expected gate default app id route, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

capture_main export-app no-app@dev

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'no apex_app_id is configured for alias: no-app@dev'* ]]; then
  printf 'Expected missing default app id error, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai default app id from conn.json test passed\n'
