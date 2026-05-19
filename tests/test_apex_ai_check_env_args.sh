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

check_env_quick_probe() {
  printf 'quick:%s\n' "$1" >> "${TRACE_FILE}"
  printf 'environment|%s|||OK|0|Quick checks passed|Run sql-check for a live connection check\n' "$1"
}

check_env_deep_probe() {
  printf 'deep:%s\n' "$1" >> "${TRACE_FILE}"
  printf 'environment|%s|||WARN|1|Missing wallet files for deep check|Add the wallet locally or rerun without --deep\n' "$1"
}

capture_main check dev@oci

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected check dev@oci to exit 0, got %s\n' "${CAPTURED_STATUS}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != $'quick:dev@oci' ]]; then
  printf 'Expected quick probe trace for dev@oci, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

if [[ ! "${CAPTURED_OUTPUT}" =~ ^OK[[:space:]] ]]; then
  printf 'Expected human output to start with OK, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *WARN* || "${CAPTURED_OUTPUT}" == *FAIL* ]]; then
  printf 'Expected quick human output to use only OK status, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main check dev@oci --deep

if [[ "${CAPTURED_STATUS}" -ne 1 ]]; then
  printf 'Expected check dev@oci --deep to exit 1 for WARN, got %s\n' "${CAPTURED_STATUS}" >&2
  exit 1
fi

if [[ "$(tail -n 1 "${TRACE_FILE}")" != 'deep:dev@oci' ]]; then
  printf 'Expected deep probe trace for dev@oci, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

if [[ ! "${CAPTURED_OUTPUT}" =~ ^WARN[[:space:]] ]]; then
  printf 'Expected deep human output to start with WARN, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *OK* || "${CAPTURED_OUTPUT}" == *FAIL* ]]; then
  printf 'Expected deep human output to use only WARN status, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai check args test passed\n'
