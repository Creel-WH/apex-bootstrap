#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

usage() {
  cat <<'EOF'
Usage:
  tools/check_imported_supporting_objects.sh <source_env> <source_app_id> <target_env> <target_app_id>

Purpose:
  Scripted post-import verification that the imported app's effective
  supporting-object/runtime state still matches the source environment before
  any downstream gate or browser validation runs.

Current implementation:
  Delegates to compare_apex_release_state.sh so the check remains
  shell-scripted and repeatable. This wrapper intentionally ignores MV_STATE
  because materialized-view freshness is a runtime state issue, not a
  supporting-object content drift signal.
EOF
}

main() {
  local source_env="${1:-}"
  local source_app_id="${2:-}"
  local target_env="${3:-}"
  local target_app_id="${4:-}"

  if [[ "${source_env}" == "-h" || "${source_env}" == "--help" || -z "${source_env}" || -z "${source_app_id}" || -z "${target_env}" || -z "${target_app_id}" ]]; then
    usage
    exit $([[ -n "${source_env}" && -n "${source_app_id}" && -n "${target_env}" && -n "${target_app_id}" ]] && echo 0 || echo 1)
  fi

  printf 'Checking imported supporting objects/runtime state: %s/%s -> %s/%s\n' \
    "${source_env}" "${source_app_id}" "${target_env}" "${target_app_id}"

  export COMPARE_RELEASE_IGNORE_SECTIONS="MV_STATE"
  bash "${SCRIPT_DIR}/compare_apex_release_state.sh" \
    "${source_env}" "${source_app_id}" "${target_env}" "${target_app_id}"
}

main "$@"
