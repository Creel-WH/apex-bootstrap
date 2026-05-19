#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"
APP_DIR="${ROOT_DIR}/export/dev@oci/f108"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${TRACE_FILE}"
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

require_dispatch_env_alias() {
  [[ -n "${2:-}" ]] || {
    printf 'Missing environment alias for %s.\n' "$1" >&2
    apex_ai_usage >&2
    return 1
  }
  printf '%s\n' "$2"
}

capture_main gate

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Missing environment alias for gate.'* ]]; then
  printf 'Expected gate without env to fail with actionable env error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main gate dev@oci abc all

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Application id must be numeric: abc'* ]]; then
  printf 'Expected gate numeric validation error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main gate dev@oci 108 weird

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Unsupported gate: weird'* ]]; then
  printf 'Expected unsupported gate validation error, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

mkdir -p "${APP_DIR}/docs/pages"

capture_main gate dev@oci 108 all

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected gate dispatch to exit 0, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/run_gate.sh dev@oci 108 all" ]]; then
  printf 'Expected gate route to run_gate.sh, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

printf 'apex_ai gate args test passed\n'
