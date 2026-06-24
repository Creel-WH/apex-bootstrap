#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/oci_docker_exec.sh dev@oci app
  tools/oci_docker_exec.sh dev@oci db "ls /u01"
  tools/oci_docker_exec.sh dev@oci app "pwd"
EOF
}

resolve_container_name() {
  local target="${1:-}"

  case "${target}" in
    app|web)
      : "${APP_CONTAINER:?APP_CONTAINER is required in ${APP_CONFIG_FILE}}"
      printf '%s\n' "${APP_CONTAINER}"
      ;;
    db|database|oracle)
      : "${DB_CONTAINER:?DB_CONTAINER is required in ${APP_CONFIG_FILE}}"
      printf '%s\n' "${DB_CONTAINER}"
      ;;
    *)
      printf '%s\n' "${target}"
      ;;
  esac
}

shell_join() {
  local rendered=""
  local part=""

  for part in "$@"; do
    if [[ -n "${rendered}" ]]; then
      rendered+=" "
    fi
    printf -v part '%q' "${part}"
    rendered+="${part}"
  done

  printf '%s\n' "${rendered}"
}

main() {
  local env_alias=""
  local target=""
  local container_name=""
  local docker_exec_cmd=""
  local remote_cmd=""

  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    usage
    exit 0
  fi

  env_alias="${1:-}"
  target="${2:-}"
  [[ -n "${env_alias}" && -n "${target}" ]] || {
    usage >&2
    exit 1
  }
  shift 2

  APP_CODE="env-only"
  load_env_context "${env_alias}"

  : "${SSH_HOST:?SSH_HOST is required in ${APP_CONFIG_FILE}}"
  : "${SSH_KEY_PATH:?SSH_KEY_PATH is required in ${APP_CONFIG_FILE}}"

  container_name="$(resolve_container_name "${target}")"

  if [[ $# -eq 0 ]]; then
    docker_exec_cmd="$(shell_join sudo docker exec -it "${container_name}" bash)"
    ssh -t -i "${SSH_KEY_PATH}" "${SSH_HOST}" "${docker_exec_cmd}"
    return 0
  fi

  remote_cmd="$(shell_join "$@")"
  docker_exec_cmd="$(shell_join sudo docker exec -i "${container_name}" bash -lc "${remote_cmd}")"
  ssh -i "${SSH_KEY_PATH}" "${SSH_HOST}" "${docker_exec_cmd}"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
