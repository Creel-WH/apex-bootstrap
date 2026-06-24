#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/write_ci_conn_json.sh <env_alias>

Environment:
  TARGET_DB_CONNECTION_MODE      direct, ezconnect, or tns
  TARGET_DB_CONNECT_STRING       required for direct/ezconnect
  TARGET_DB_USERNAME             required for tns
  TARGET_DB_PASSWORD             required for tns
  TARGET_DB_TNS_ALIAS            required for tns
  TARGET_DB_TNS_ADMIN            required for tns unless TARGET_DB_WALLET_ZIP_BASE64 is set
  TARGET_DB_WALLET_ZIP_BASE64    optional base64 wallet zip for tns
  TARGET_DB_SCHEMA               optional, defaults to lab
  TARGET_DB_SQLCL_BIN            optional, defaults to sql
  APEX_WORKSPACE                 optional, defaults to WORKSPACE_NAME

Optional browser smoke keys:
  APEX_BUILDER_LOGIN_URL
  APEX_BUILDER_USERNAME
  APEX_BUILDER_PASSWORD
  APEX_BROWSER_SMOKE_URL
  APEX_BROWSER_EXPECT_TEXT
  APEX_BROWSER_EXPECT_SELECTOR
EOF
}

require_env() {
  local key="$1"
  [[ -n "${!key:-}" ]] || {
    printf 'Missing required environment variable: %s\n' "${key}" >&2
    return 1
  }
}

prepare_wallet_from_base64() {
  local env_alias="$1"
  local wallet_zip=""
  local wallet_root=""
  local tnsnames=""

  [[ -n "${TARGET_DB_WALLET_ZIP_BASE64:-}" ]] || return 0

  wallet_root="${RUNNER_TEMP:-${ROOT_DIR}/.local}/adb-wallet-${env_alias}"
  wallet_zip="${wallet_root}.zip"
  rm -rf "${wallet_root}" "${wallet_zip}"
  mkdir -p "${wallet_root}"

  printf '%s' "${TARGET_DB_WALLET_ZIP_BASE64}" | base64 --decode > "${wallet_zip}"
  unzip -q "${wallet_zip}" -d "${wallet_root}"

  tnsnames="$(find "${wallet_root}" -name tnsnames.ora -print -quit)"
  [[ -n "${tnsnames}" ]] || {
    printf 'Wallet zip does not contain tnsnames.ora\n' >&2
    return 1
  }

  export TARGET_DB_TNS_ADMIN
  TARGET_DB_TNS_ADMIN="$(dirname "${tnsnames}")"
}

validate_tns_inputs() {
  require_env TARGET_DB_USERNAME
  require_env TARGET_DB_PASSWORD
  require_env TARGET_DB_TNS_ALIAS

  [[ -n "${TARGET_DB_TNS_ADMIN:-}" ]] || {
    printf 'Provide TARGET_DB_TNS_ADMIN or TARGET_DB_WALLET_ZIP_BASE64 for tns mode.\n' >&2
    return 1
  }

  [[ -f "${TARGET_DB_TNS_ADMIN}/tnsnames.ora" ]] || {
    printf 'Missing tnsnames.ora in %s\n' "${TARGET_DB_TNS_ADMIN}" >&2
    return 1
  }

  [[ -f "${TARGET_DB_TNS_ADMIN}/sqlnet.ora" ]] || {
    printf 'Missing sqlnet.ora in %s\n' "${TARGET_DB_TNS_ADMIN}" >&2
    return 1
  }
}

write_conn_json() {
  local env_alias="$1"
  local conn_json_file=""

  conn_json_file="$(root_conn_json_file)"
  python3 - "${conn_json_file}" "${env_alias}" <<'PYJSON'
import json
import os
import pathlib
import sys

destination = pathlib.Path(sys.argv[1])
env_alias = sys.argv[2]

keys = [
    "DB_CONNECTION_MODE",
    "DB_CONNECT_STRING",
    "DB_USERNAME",
    "DB_PASSWORD",
    "DB_TNS_ALIAS",
    "DB_TNS_ADMIN",
    "DB_SCHEMA",
    "DB_SQLCL_BIN",
    "APEX_WORKSPACE",
    "APEX_BUILDER_LOGIN_URL",
    "APEX_BUILDER_USERNAME",
    "APEX_BUILDER_PASSWORD",
    "APEX_BROWSER_SMOKE_URL",
    "APEX_BROWSER_EXPECT_TEXT",
    "APEX_BROWSER_EXPECT_SELECTOR",
]

payload = {
    key: os.environ[key]
    for key in keys
    if os.environ.get(key)
}

destination.write_text(json.dumps({env_alias: payload}, indent=2) + "\n")
PYJSON
}

main() {
  local env_alias="${1:-}"
  local connection_mode="${TARGET_DB_CONNECTION_MODE:-direct}"

  if [[ "${env_alias}" == "-h" || "${env_alias}" == "--help" ]]; then
    usage
    exit 0
  fi

  env_alias="$(normalize_env_alias "${env_alias}")"

  export DB_CONNECTION_MODE="${connection_mode}"
  export DB_SQLCL_BIN="${TARGET_DB_SQLCL_BIN:-sql}"
  export DB_SCHEMA="${TARGET_DB_SCHEMA:-lab}"
  export APEX_WORKSPACE="${APEX_WORKSPACE:-WORKSPACE_NAME}"

  case "${connection_mode}" in
    direct|ezconnect)
      require_env TARGET_DB_CONNECT_STRING
      export DB_CONNECT_STRING="${TARGET_DB_CONNECT_STRING}"
      ;;
    tns)
      prepare_wallet_from_base64 "${env_alias}"
      validate_tns_inputs
      export DB_USERNAME="${TARGET_DB_USERNAME}"
      export DB_PASSWORD="${TARGET_DB_PASSWORD}"
      export DB_TNS_ALIAS="${TARGET_DB_TNS_ALIAS}"
      export DB_TNS_ADMIN="${TARGET_DB_TNS_ADMIN}"
      ;;
    *)
      printf 'Unsupported TARGET_DB_CONNECTION_MODE: %s\n' "${connection_mode}" >&2
      return 1
      ;;
  esac

  write_conn_json "${env_alias}"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
