#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
AI_CONTEXT_COPY="$(mktemp)"
RESULT_DIR="$(mktemp -d)"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${AI_CONTEXT_COPY}"
  rm -rf "${RESULT_DIR}"
}

trap cleanup EXIT

cp "${ROOT_DIR}/ai-context.json" "${AI_CONTEXT_COPY}"

python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys

path = pathlib.Path(sys.argv[1])
ctx = json.loads(path.read_text())
ctx["current_task"] = {
    "feature_file": "export/ci/f123/docs/2026-04-13-test.md",
    "env_alias": "ci",
    "app_id": "123",
    "status": "NEW",
    "source_of_truth": "ai-context.json",
    "confirmed_pages": "",
    "confirmed_db_objects": "",
    "stage_status": {
        "connectivity": "PENDING",
        "scope_confirmation": "PENDING",
        "implementation": "PENDING",
        "verification": "PENDING",
        "delivery": "PENDING",
    },
    "resume_rule": "If status is not DONE, continue troubleshooting, implementation, and verification until DONE.",
}
path.write_text(json.dumps(ctx, indent=2) + "\n")
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

capture_main task-state TESTED --connectivity PASSED --verification FAILED --delivery IN_PROGRESS

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected task-state to exit 0, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys

ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
current = ctx["current_task"]
assert current["status"] == "TESTED", current
assert current["stage_status"]["connectivity"] == "PASSED", current
assert current["stage_status"]["verification"] == "FAILED", current
assert current["stage_status"]["delivery"] == "IN_PROGRESS", current
assert current["stage_status"]["scope_confirmation"] == "PENDING", current
PY

capture_main task-state broken

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Unsupported task status: broken'* ]]; then
  printf 'Expected invalid task-state status failure, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

capture_main task-state DONE --scope-confirmation PASSED --implementation PASSED --delivery PASSED --verification PASSED

if [[ "${CAPTURED_STATUS}" -eq 0 || "${CAPTURED_OUTPUT}" != *'Task is not DONE-eligible'* ]]; then
  printf 'Expected DONE without evidence to fail, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

mkdir -p "${RESULT_DIR}/browser"
cat > "${RESULT_DIR}/summary.json" <<'JSON'
{
  "status": "success",
  "executed_gate_actions": ["browser-functional"],
  "gate_runs": [
    { "gate": "browser-functional", "status": "success", "artifact": "browser/functional.summary.json" }
  ]
}
JSON
cat > "${RESULT_DIR}/browser/functional.summary.json" <<'JSON'
{
  "status": "success",
  "action": "functional"
}
JSON

set +e
AI_CONTEXT_FILE="${AI_CONTEXT_COPY}" OMX_RESULTS_DIR="${RESULT_DIR}" main task-state DONE --scope-confirmation PASSED --implementation PASSED --delivery PASSED --verification PASSED >"${CAPTURE_FILE}" 2>&1
CAPTURED_STATUS=$?
set -e
CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected DONE with evidence to pass, got (%s): %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys

ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
current = ctx["current_task"]
assert current["status"] == "DONE", current
assert current["stage_status"]["scope_confirmation"] == "PASSED", current
assert current["stage_status"]["implementation"] == "PASSED", current
assert current["stage_status"]["delivery"] == "PASSED", current
assert current["stage_status"]["verification"] == "PASSED", current
PY

printf 'apex_ai task-state test passed\n'
