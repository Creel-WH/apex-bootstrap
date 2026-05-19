#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

CAPTURE_FILE="$(mktemp)"

cleanup() {
  rm -f "${CAPTURE_FILE}"
}

trap cleanup EXIT

set +e
bash "${ROOT_DIR}/tools/apex_ai.sh" check-env dev@oci >"${CAPTURE_FILE}" 2>&1
CAPTURED_STATUS=$?
set -e

CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"

if [[ "${CAPTURED_STATUS}" -eq 0 ]]; then
  printf 'Expected removed check-env command to fail non-zero\n' >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'check-env has been removed. Use tools/apex_ai.sh check ... instead.'* ]]; then
  printf 'Expected exact migration hint for removed check-env, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai removed check-env command test passed\n'
