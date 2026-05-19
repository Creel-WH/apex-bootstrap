#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
AI_CONTEXT_COPY="$(mktemp)"
APP_ID="91048"
APP_DIR="${ROOT_DIR}/export/dev@oci/f${APP_ID}"
FEATURE_FILE="${APP_DIR}/docs/2026-04-13-thread-reply-mentions.md"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${AI_CONTEXT_COPY}"
  rm -rf "${APP_DIR}"
}

trap cleanup EXIT

mkdir -p "${APP_DIR}/docs/pages"

echo '# Thread Reply Mentions' > "${FEATURE_FILE}"

python3 - "${ROOT_DIR}/ai-context.json" "${AI_CONTEXT_COPY}" "${FEATURE_FILE}" <<'PY'
import json
import pathlib
import sys

ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
if "feature-status" not in ctx["supported_actions"]:
    ctx["supported_actions"].append("feature-status")
ctx["current_task"] = {
    "feature_file": sys.argv[3],
    "env_alias": "dev@oci",
    "app_id": "91048",
    "status": "IMPLEMENTING",
    "source_of_truth": "ai-context.json",
    "confirmed_pages": "P120,P122",
    "confirmed_db_objects": "thread_pkg,user_mentions",
    "stage_status": {
        "connectivity": "PASSED",
        "scope_confirmation": "PASSED",
        "implementation": "IN_PROGRESS",
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

capture_main feature-status

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected feature-status to exit 0, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

for expected in \
  'Current task status: IMPLEMENTING' \
  'Environment: dev@oci' \
  'Application: 91048' \
  'Confirmed pages: P120,P122' \
  'Confirmed DB objects: thread_pkg,user_mentions' \
  'Feature file: export/dev@oci/f91048/docs/2026-04-13-thread-reply-mentions.md' \
  'Stage summary: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=PENDING, delivery=PENDING' \
  'Next action: Continue implementation and verification until DONE.'; do
  if [[ "${CAPTURED_OUTPUT}" != *"${expected}"* ]]; then
    printf 'Expected feature-status output to include [%s], got: %s\n' "${expected}" "${CAPTURED_OUTPUT}" >&2
    exit 1
  fi
done

printf 'apex_ai feature-status test passed\n'
