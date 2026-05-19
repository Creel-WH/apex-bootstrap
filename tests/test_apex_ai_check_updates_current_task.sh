#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"
AI_CONTEXT_COPY="$(mktemp)"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${TRACE_FILE}" "${AI_CONTEXT_COPY}"
}

trap cleanup EXIT

python3 - "${ROOT_DIR}/ai-context.json" "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys
src = json.loads(pathlib.Path(sys.argv[1]).read_text())
src["current_task"] = {
    "feature_file": "export/dev@oci/f108/docs/2026-04-13-test.md",
    "env_alias": "dev@oci",
    "app_id": "108",
    "status": "NEW",
    "source_of_truth": "ai-context.json",
    "stage_status": {
        "connectivity": "PENDING",
        "scope_confirmation": "PENDING",
        "implementation": "PENDING",
        "verification": "PENDING",
        "delivery": "PENDING"
    },
    "resume_rule": "If status is not DONE, continue troubleshooting, implementation, and verification until DONE."
}
pathlib.Path(sys.argv[2]).write_text(json.dumps(src, indent=2) + "\n")
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

check_env_quick_probe() {
  printf 'quick:%s\n' "$1" >> "${TRACE_FILE}"
  printf 'environment|%s|||OK|0|Quick checks passed|Run sql-check for a live connection check\n' "$1"
}

capture_main check dev@oci

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected check dev@oci to exit 0, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys
ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
assert ctx["current_task"]["stage_status"]["connectivity"] == "PASSED", ctx["current_task"]
PY

printf 'apex_ai check updates current task test passed\n'
