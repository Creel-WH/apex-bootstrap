#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
AI_CONTEXT_COPY="$(mktemp)"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${AI_CONTEXT_COPY}"
}

trap cleanup EXIT

cp "${ROOT_DIR}/ai-context.json" "${AI_CONTEXT_COPY}"
printf ']\n}\n' >> "${AI_CONTEXT_COPY}"

capture_main() {
  local status

  set +e
  AI_CONTEXT_FILE="${AI_CONTEXT_COPY}" main "$@" >"${CAPTURE_FILE}" 2>&1
  status=$?
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${status}"
}

require_dispatch_env_alias() {
  printf '%s\n' "$2"
}

require_dispatch_app_dir() {
  return 0
}

run_dispatch_script() {
  return 0
}

capture_main import-page dev@oci 100 10

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected import-page to exit 0 when state sync fails after a successful dispatch, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'current task activity sync failed'* ]]; then
  printf 'Expected warning about current task activity sync failure, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai import-page tolerates state sync failure test passed\n'
