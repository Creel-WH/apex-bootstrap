#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"
AI_CONTEXT_COPY="$(mktemp)"
APP_ID="91058"
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
    "app_id": "91058",
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
  if [[ "$1" == *"run_gate.sh" ]]; then
    python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json, pathlib, sys
path = pathlib.Path(sys.argv[1])
ctx = json.loads(path.read_text())
ctx["current_task"]["status"] = "TESTED"
ctx["current_task"]["stage_status"]["verification"] = "IN_PROGRESS"
path.write_text(json.dumps(ctx, indent=2) + "\n")
PY
  fi
  printf '%s\n' "$*" >> "${TRACE_FILE}"
}

capture_main export-page dev@oci "${APP_ID}" 10
capture_main import-page dev@oci "${APP_ID}" 10
capture_main gate dev@oci "${APP_ID}" browser

for expected in \
  'Export page dev@oci/f91058 page 10: success' \
  'Import page 10 into dev@oci/f91058: success' \
  'Gate browser: synced from ai-context.json'; do
  if ! grep -q "${expected}" "${FEATURE_FILE}"; then
    printf 'Expected feature markdown summary [%s], got:\n' "${expected}" >&2
    cat "${FEATURE_FILE}" >&2
    exit 1
  fi
done

printf 'apex_ai markdown summary sync test passed\n'
