#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

if grep -q 'mapfile' "${ROOT_DIR}/tools/apex_ai.sh"; then
  printf 'Expected apex_ai.sh to avoid mapfile for macOS Bash 3.2 compatibility\n' >&2
  exit 1
fi

CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"

cleanup() {
  rm -f "${CAPTURE_FILE}" "${TRACE_FILE}"
}

trap cleanup EXIT

capture_main() {
  local status

  set +e
  main "$@" >"${CAPTURE_FILE}" 2>&1
  status=$?
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${status}"
}

list_conn_json_envs() {
  printf 'dev@adb\n'
  printf 'dev@oci\n'
}

check_env_quick_probe() {
  printf '%s\n' "$1" >> "${TRACE_FILE}"

  case "$1" in
    dev@adb)
      printf 'environment|%s|||WARN|1|Wallet not installed locally|Add wallet files to continue deep checks\n' "$1"
      ;;
    dev@oci)
      printf 'environment|%s|||OK|0|Quick checks passed|Run sql-check for a live connection check\n' "$1"
      ;;
    *)
      printf 'environment|%s|||FAIL|2|Unexpected environment|Review conn.json inventory\n' "$1"
      ;;
  esac
}

capture_main check

if [[ "${CAPTURED_STATUS}" -ne 1 ]]; then
  printf 'Expected batch check to exit 1 when any env warns, got %s\n' "${CAPTURED_STATUS}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != $'dev@adb\ndev@oci' ]]; then
  printf 'Expected batch check to read every env from conn.json, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *$'WARN dev@adb'* || "${CAPTURED_OUTPUT}" != *$'OK dev@oci'* ]]; then
  printf 'Expected batch human output for both envs, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

: > "${TRACE_FILE}"
capture_main check --json

if [[ "${CAPTURED_STATUS}" -ne 1 ]]; then
  printf 'Expected batch check --json to exit 1 when any env warns, got %s\n' "${CAPTURED_STATUS}" >&2
  exit 1
fi

JSON_PAYLOAD="${CAPTURED_OUTPUT}" python3 - <<'PY'
import json
import os

payload = json.loads(os.environ["JSON_PAYLOAD"])

if payload["action"] != "check":
    raise SystemExit("Expected top-level action=check")
if payload["status"] != "WARN":
    raise SystemExit(f"Expected top-level status WARN, got {payload['status']}")
if payload["code"] != 1:
    raise SystemExit(f"Expected top-level code 1, got {payload['code']}")

results = payload.get("results")
if not isinstance(results, list) or len(results) != 2:
    raise SystemExit(f"Expected 2 results, got {results!r}")

envs = [result["env_alias"] for result in results]
if envs != ["dev@adb", "dev@oci"]:
    raise SystemExit(f"Expected ordered env list, got {envs!r}")

required_fields = {
    "action",
    "target_type",
    "env_alias",
    "app_id",
    "page_id",
    "status",
    "code",
    "reason",
    "next_step",
}

for result in results:
    missing = required_fields.difference(result)
    if missing:
        raise SystemExit(f"Missing fields {sorted(missing)!r} in result {result!r}")
PY

printf 'apex_ai check all-envs test passed\n'
