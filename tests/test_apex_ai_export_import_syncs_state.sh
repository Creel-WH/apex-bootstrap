#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"
AI_CONTEXT_COPY="$(mktemp)"
APP_ID="91038"
APP_DIR="${ROOT_DIR}/export/dev@oci/f${APP_ID}"
FEATURE_FILE="${APP_DIR}/docs/2026-04-13-thread-reply-mentions.md"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${TRACE_FILE}" "${AI_CONTEXT_COPY}"
  rm -rf "${APP_DIR}"
}

trap cleanup EXIT

mkdir -p "${APP_DIR}/docs/pages"

cat > "${FEATURE_FILE}" <<'MD'
# Thread Reply Mentions

## Request
- Original Request: Add mentions in thread replies
- AI Summary: Add mentions in thread replies
- Business Goal: Add mentions in thread replies
- Acceptance Criteria: Users can mention other users when posting replies

## Execution Plan
- Impacted Pages (AI Proposed): P120
- Impacted DB Objects (AI Proposed): thread_pkg
- Confirmed Pages: P120
- Confirmed DB Objects: thread_pkg
- Planned Steps:

## Implementation Log
- Changes Made:
- Updated Files:
- Updated DB Objects:
- Updated Page Docs:
- Updated Browser Specs:

## Verification
- Connectivity Check:
- DB / APEX Check:
- Deploy Result:
- Browser Smoke:
- Browser Functional:
- Evidence Paths:
- Manual Verification Entry:

## Current Status
- Status: IMPLEMENTING
- Current Step:
- Open Issues:
- Next Action:
- Resume Notes:
MD

python3 - "${ROOT_DIR}/ai-context.json" "${AI_CONTEXT_COPY}" "${FEATURE_FILE}" <<'PY'
import json
import pathlib
import sys

ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
ctx["current_task"] = {
    "feature_file": sys.argv[3],
    "env_alias": "dev@oci",
    "app_id": "91038",
    "status": "IMPLEMENTING",
    "source_of_truth": "ai-context.json",
    "confirmed_pages": "P120",
    "confirmed_db_objects": "thread_pkg",
    "stage_status": {
        "connectivity": "PASSED",
        "scope_confirmation": "PASSED",
        "implementation": "PENDING",
        "verification": "PENDING",
        "delivery": "PENDING"
    },
    "resume_rule": "If status is not DONE, continue troubleshooting, implementation, and verification until DONE."
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

require_dispatch_env_alias() {
  printf '%s\n' "$2"
}

run_dispatch_script() {
  printf '%s\n' "$*" >> "${TRACE_FILE}"
}

capture_main export-app dev@oci "${APP_ID}"

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected export-app to exit 0, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys
ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
current = ctx["current_task"]
assert current["stage_status"]["implementation"] == "IN_PROGRESS", current
assert current["status"] == "IMPLEMENTING", current
PY

if ! grep -q 'implementation=IN_PROGRESS' "${FEATURE_FILE}"; then
  printf 'Expected feature file to show implementation IN_PROGRESS after export\n' >&2
  exit 1
fi

capture_main import-page dev@oci "${APP_ID}" 10

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected import-page to exit 0, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys
ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
current = ctx["current_task"]
assert current["stage_status"]["delivery"] == "IN_PROGRESS", current
assert current["status"] == "IMPLEMENTING", current
PY

if ! grep -q 'delivery=IN_PROGRESS' "${FEATURE_FILE}"; then
  printf 'Expected feature file to show delivery IN_PROGRESS after import\n' >&2
  exit 1
fi

printf 'apex_ai export/import state sync test passed\n'
