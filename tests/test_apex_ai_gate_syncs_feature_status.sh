#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
AI_CONTEXT_COPY="$(mktemp)"
APP_ID="91018"
APP_DIR="${ROOT_DIR}/export/dev@oci/f${APP_ID}"
FEATURE_FILE="${APP_DIR}/docs/2026-04-13-thread-reply-mentions.md"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${AI_CONTEXT_COPY}"
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
- Impacted Pages (AI Proposed):
- Impacted DB Objects (AI Proposed):
- Confirmed Pages:
- Confirmed DB Objects:
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
- Status: NEW
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
    "app_id": "91018",
    "status": "IMPLEMENTING",
    "source_of_truth": "ai-context.json",
    "stage_status": {
        "connectivity": "PASSED",
        "scope_confirmation": "PASSED",
        "implementation": "PASSED",
        "verification": "PASSED",
        "delivery": "PASSED"
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
  [[ -n "${2:-}" ]] || {
    printf 'Missing environment alias for %s.\n' "$1" >&2
    apex_ai_usage >&2
    return 1
  }
  printf '%s\n' "$2"
}

run_dispatch_script() {
  python3 - "${AI_CONTEXT_COPY}" <<'PY'
import json
import pathlib
import sys
path = pathlib.Path(sys.argv[1])
ctx = json.loads(path.read_text())
ctx["current_task"]["status"] = "DONE"
ctx["current_task"]["stage_status"]["verification"] = "PASSED"
ctx["current_task"]["stage_status"]["delivery"] = "PASSED"
path.write_text(json.dumps(ctx, indent=2) + "\n")
PY
}

capture_main gate dev@oci "${APP_ID}" browser-functional

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected gate sync to exit 0, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if ! grep -q 'Status: DONE' "${FEATURE_FILE}"; then
  printf 'Expected feature file Current Status to sync DONE\n' >&2
  exit 1
fi

if ! grep -q 'Authoritative state: ai-context.json' "${FEATURE_FILE}"; then
  printf 'Expected feature file to note ai-context authority\n' >&2
  exit 1
fi

printf 'apex_ai gate sync feature status test passed\n'
