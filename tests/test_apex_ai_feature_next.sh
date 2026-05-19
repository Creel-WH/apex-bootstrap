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

python3 - "${ROOT_DIR}/ai-context.json" "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys
ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
ctx["current_task"]["status"] = "NEW"
ctx["current_task"]["stage_status"] = {
    "connectivity": "PENDING",
    "scope_confirmation": "PENDING",
    "implementation": "PENDING",
    "verification": "PENDING",
    "delivery": "PENDING"
}
pathlib.Path(sys.argv[2]).write_text(json.dumps(ctx, indent=2) + "\n")
PY

capture_main() {
  local status

  set +e
  AI_CONTEXT_FILE="${AI_CONTEXT_COPY}" main "$@" >"${CAPTURE_FILE}" 2>&1
  status=$?
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${status}"
}

capture_main feature-next

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected feature-next to exit 0, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'Next action: fix connectivity first, then continue feature analysis.'* ]]; then
  printf 'Expected NEW/PENDING connectivity guidance, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys
ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
ctx["current_task"]["status"] = "DONE"
ctx["current_task"]["stage_status"]["connectivity"] = "PASSED"
pathlib.Path(sys.argv[1]).write_text(json.dumps(ctx, indent=2) + "\n")
PY

capture_main feature-next

if [[ "${CAPTURED_OUTPUT}" != *'Next action: optional manual browser-based final verification by developer.'* ]]; then
  printf 'Expected DONE guidance, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

printf 'apex_ai feature-next test passed\n'
