#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"

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

sql_check_probe() {
  local env_alias="$1"
  local app_id="${2:-}"

  printf '%s:%s\n' "${env_alias}" "${app_id:-none}" >> "${TRACE_FILE}"

  if [[ -n "${app_id}" ]]; then
    printf 'application|%s|%s||OK|0|SQLcl connectivity check passed|Proceed with the requested application action\n' "${env_alias}" "${app_id}"
    return 0
  fi

  printf 'environment|%s|||OK|0|SQLcl connectivity check passed|Proceed with the requested environment action\n' "${env_alias}"
}

capture_main sql-check dev@oci

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected sql-check dev@oci to exit 0, got %s\n' "${CAPTURED_STATUS}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != $'dev@oci:none' ]]; then
  printf 'Expected env-only sql-check target, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

if [[ ! "${CAPTURED_OUTPUT}" =~ ^OK[[:space:]] ]]; then
  printf 'Expected env-only sql-check output to start with OK, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

: > "${TRACE_FILE}"
capture_main sql-check dev@oci 108

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected sql-check dev@oci 108 to exit 0, got %s\n' "${CAPTURED_STATUS}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != $'dev@oci:108' ]]; then
  printf 'Expected app-targeted sql-check probe, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

if [[ ! "${CAPTURED_OUTPUT}" =~ ^OK[[:space:]] || "${CAPTURED_OUTPUT}" != *'app=108'* ]]; then
  printf 'Expected app-targeted sql-check output to include app=108, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai sql-check args test passed\n'
