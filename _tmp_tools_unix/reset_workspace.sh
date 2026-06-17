#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

DRY_RUN=0

usage() {
  cat <<'EOF'
Usage:
  tools/reset_workspace.sh [--dry-run]
  tools/reset_workspace.sh dev@oci [--dry-run]
  tools/reset_workspace.sh dev@oci 100 [--dry-run]

Runtime connection files are preserved. This script only removes generated
workspace/export/scaffold artifacts; it never resets conn.json or .conn.json.
EOF
}

log_action() {
  printf '[reset] %s %s\n' "$1" "$2"
}

is_protected_path() {
  local candidate="${1%/}"
  local protected_conn_json="${ROOT_DIR}/conn.json"
  local protected_local_conn_json="${ROOT_DIR}/.conn.json"

  [[ "${candidate}" == "${protected_conn_json}" \
    || "${candidate}" == "${protected_local_conn_json}" \
    || "${protected_conn_json}" == "${candidate}/"* \
    || "${protected_local_conn_json}" == "${candidate}/"* ]]
}

remove_path() {
  local target="$1"
  local normalized_target="${target%/}"

  if is_protected_path "${normalized_target}"; then
    printf 'Refusing to remove protected runtime asset: %s\n' "${normalized_target#${ROOT_DIR}/}" >&2
    return 1
  fi

  [[ -e "${normalized_target}" ]] || return 0
  if [[ "${DRY_RUN}" -eq 1 ]]; then
    log_action 'would remove' "${normalized_target#${ROOT_DIR}/}"
  else
    rm -rf "${normalized_target}"
  fi
}

remove_scaffold_artifacts() {
  remove_path "${ROOT_DIR}/config"
  remove_path "${ROOT_DIR}/docs/support"
  remove_path "${ROOT_DIR}/docs/superpowers"
  remove_path "${ROOT_DIR}/tmp"
  remove_path "${ROOT_DIR}/.superpowers"
  remove_path "${ROOT_DIR}/.omx"
  remove_path "${ROOT_DIR}/.playwright-mcp"
}

main() {
  local env_input=""
  local app_id=""
  local app_path=""
  local env_alias=""

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --dry-run)
        DRY_RUN=1
        shift
        ;;
      -h|--help)
        usage
        exit 0
        ;;
      *)
        if [[ -z "${env_input}" ]]; then
          env_input="$1"
        elif [[ -z "${app_id}" ]]; then
          app_id="$1"
        else
          printf 'Unsupported extra argument: %s\n' "$1" >&2
          exit 1
        fi
        shift
        ;;
    esac
  done

  if [[ -n "${env_input}" ]]; then
    env_alias="$(normalize_env_alias "${env_input}")"
  fi

  if [[ -n "${app_id}" ]]; then
    export APP_CODE="$(resolve_app_code_from_app_id "${app_id}")"
    export APP_DIR="$(app_dir "${APP_CODE}" "${env_alias}")"
    remove_path "${APP_DIR}"

    if [[ "${DRY_RUN}" -eq 1 ]]; then
      printf 'Workspace dry-run complete for %s in %s.\n' "${APP_CODE}" "${env_alias}"
    else
      printf 'Workspace reset complete for %s in %s.\n' "${APP_CODE}" "${env_alias}"
    fi
    return 0
  fi

  if [[ -n "${env_input}" ]]; then
    shopt -s nullglob
    for app_path in "${ROOT_DIR}"/export/"${env_alias}"/f*; do
      [[ -d "${app_path}" ]] || continue
      remove_path "${app_path}"
    done
    shopt -u nullglob

    remove_scaffold_artifacts

    if [[ "${DRY_RUN}" -eq 1 ]]; then
      printf 'Environment workspace dry-run complete for %s.\n' "${env_alias}"
    else
      printf 'Environment workspace reset complete for %s.\n' "${env_alias}"
    fi
    return 0
  fi

  shopt -s nullglob
  for app_path in "${ROOT_DIR}"/export/f*; do
    [[ -d "${app_path}" ]] || continue
    remove_path "${app_path}"
  done
  for app_path in "${ROOT_DIR}"/export/*/f*; do
    [[ -d "${app_path}" ]] || continue
    remove_path "${app_path}"
  done
  shopt -u nullglob

  find "${ROOT_DIR}/export" -mindepth 1 -maxdepth 1 -type d ! -name '_template' -empty -delete 2>/dev/null || true

  remove_scaffold_artifacts

  if [[ "${DRY_RUN}" -eq 1 ]]; then
    printf 'Workspace dry-run complete for all exports.\n'
  else
    printf 'Workspace reset complete for all exports.\n'
  fi
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
