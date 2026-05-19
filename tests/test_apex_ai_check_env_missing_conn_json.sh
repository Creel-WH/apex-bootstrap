#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

CAPTURE_FILE="$(mktemp)"
TMP_DIR="$(mktemp -d)"

cleanup() {
  rm -f "${CAPTURE_FILE}"
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

mv "${ROOT_DIR}/conn.json" "${TMP_DIR}/conn.json"

set +e
bash "${ROOT_DIR}/tools/apex_ai.sh" check >"${CAPTURE_FILE}" 2>&1
CAPTURED_STATUS=$?
set -e

mv "${TMP_DIR}/conn.json" "${ROOT_DIR}/conn.json"

CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"

if [[ "${CAPTURED_STATUS}" -eq 0 ]]; then
  printf 'Expected batch check to fail cleanly when conn.json is missing\n' >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'Connection inventory file not found'* ]]; then
  printf 'Expected actionable missing-conn.json error, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'unbound variable'* ]]; then
  printf 'Expected missing-conn.json batch path to avoid nounset crashes, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai check missing conn.json test passed\n'
