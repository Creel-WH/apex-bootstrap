#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

CAPTURE_FILE="$(mktemp)"
AI_CONTEXT_COPY="$(mktemp)"
APP_ID="91008"
APP_DIR="${ROOT_DIR}/export/dev@oci/f${APP_ID}"
FEATURE_DATE="2026-04-13"
FEATURE_SLUG="thread-reply-mentions"
FEATURE_FILE="${APP_DIR}/docs/${FEATURE_DATE}-${FEATURE_SLUG}.md"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${AI_CONTEXT_COPY}"
  rm -rf "${APP_DIR}"
}

trap cleanup EXIT

cp "${ROOT_DIR}/ai-context.json" "${AI_CONTEXT_COPY}"

capture_main() {
  local status

  set +e
  AI_CONTEXT_FILE="${AI_CONTEXT_COPY}" APEX_AI_FEATURE_DATE="${FEATURE_DATE}" main "$@" >"${CAPTURE_FILE}" 2>&1
  status=$?
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${status}"
}

require_dispatch_env_alias() {
  printf '%s\n' "$2"
}

check_env_quick_probe() {
  printf 'environment|%s|||OK|0|Quick checks passed|Run sql-check for a live connection check\n' "$1"
}

mkdir -p "${APP_DIR}/docs/pages"

capture_main feature-start dev@oci "${APP_ID}" "${FEATURE_SLUG}" 'Add mentions in thread replies' 'Users can mention other users when posting replies'

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected feature-start to exit 0, got %s: %s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ ! -f "${FEATURE_FILE}" ]]; then
  printf 'Expected feature file to be created: %s\n' "${FEATURE_FILE}" >&2
  exit 1
fi

if ! grep -q 'Original Request: Add mentions in thread replies' "${FEATURE_FILE}"; then
  printf 'Expected original request in feature file\n' >&2
  exit 1
fi

if ! grep -q 'Acceptance Criteria: Users can mention other users when posting replies' "${FEATURE_FILE}"; then
  printf 'Expected acceptance criteria in feature file\n' >&2
  exit 1
fi

python3 - "${AI_CONTEXT_COPY}" "${FEATURE_FILE}" <<'PY'
import json
import pathlib
import sys

ctx = json.loads(pathlib.Path(sys.argv[1]).read_text())
feature_file = sys.argv[2]
current = ctx["current_task"]
assert current["feature_file"] == feature_file, current
assert current["env_alias"] == "dev@oci", current
assert current["app_id"] == "91008", current
assert current["status"] == "NEW", current
assert current["stage_status"]["connectivity"] == "PASSED", current
assert current["stage_status"]["scope_confirmation"] == "PENDING", current
assert "feature-start" in ctx["supported_actions"], ctx["supported_actions"]
assert "feature-confirm" in ctx["supported_actions"], ctx["supported_actions"]
assert "task-state" in ctx["supported_actions"], ctx["supported_actions"]
PY

if ! grep -q 'Status: NEW' "${FEATURE_FILE}"; then
  printf 'Expected feature file Current Status to remain NEW\n' >&2
  exit 1
fi

if ! grep -q 'connectivity=PASSED' "${FEATURE_FILE}"; then
  printf 'Expected feature file Current Status to show connectivity PASSED\n' >&2
  exit 1
fi

printf 'apex_ai feature-start test passed\n'
