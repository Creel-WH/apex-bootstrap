#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/list_apex_apps.sh
source "${ROOT_DIR}/tools/list_apex_apps.sh"

load_env_context() {
  APEX_WORKSPACE=""
}

ensure_sqlcl() { :; }
run_sqlcl() { :; }

missing_workspace_output="$(main 'lab@adb' 2>&1 || true)"

if [[ "${missing_workspace_output}" != *"Missing APEX workspace for lab@adb. Pass it explicitly as argument 2 or configure APEX_WORKSPACE in conn.json."* ]]; then
  printf 'Expected missing workspace error, got: %s\n' "${missing_workspace_output}" >&2
  exit 1
fi

missing_env_output="$(main 2>&1 || true)"

if [[ "${missing_env_output}" != *"Usage:"* ]]; then
  printf 'Expected usage output when env alias is missing, got: %s\n' "${missing_env_output}" >&2
  exit 1
fi

printf 'list_apex_apps missing workspace test passed\n'
