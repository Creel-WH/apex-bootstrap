#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/oci_ssh.sh dev@oci
  tools/oci_ssh.sh dev@oci "hostname"
EOF
}

main() {
  local env_alias=""

  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    usage
    exit 0
  fi

  env_alias="${1:-}"
  [[ -n "${env_alias}" ]] || {
    usage >&2
    exit 1
  }
  shift

  APP_CODE="env-only"
  load_env_context "${env_alias}"

  : "${SSH_HOST:?SSH_HOST is required in ${APP_CONFIG_FILE}}"
  : "${SSH_KEY_PATH:?SSH_KEY_PATH is required in ${APP_CONFIG_FILE}}"

  if [[ $# -eq 0 ]]; then
    ssh -t -i "${SSH_KEY_PATH}" "${SSH_HOST}"
    return 0
  fi

  ssh -i "${SSH_KEY_PATH}" "${SSH_HOST}" "$@"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
