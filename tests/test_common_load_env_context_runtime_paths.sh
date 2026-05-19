#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/common.sh
source "${ROOT_DIR}/tools/common.sh"

TMP_DIR="$(mktemp -d)"

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

ROOT_DIR="${TMP_DIR}"
PROJECT_CONFIG_DIR="${ROOT_DIR}"

cat > "${ROOT_DIR}/conn.json" <<'JSON'
{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "dev/__fill_me__@127.0.0.1:15210/ORCLPDB1",
    "java_home": "/conn/java",
    "db_sqlcl_bin": "conn-sql"
  }
}
JSON

unset JAVA_HOME
unset DB_SQLCL_BIN

load_env_context "dev@oci"

if [[ "${JAVA_HOME}" != "/conn/java" ]]; then
  printf 'Expected top-level java_home to map to JAVA_HOME, got: %s\n' "${JAVA_HOME}" >&2
  exit 1
fi

if [[ "${DB_SQLCL_BIN}" != "conn-sql" ]]; then
  printf 'Expected top-level db_sqlcl_bin to map to DB_SQLCL_BIN, got: %s\n' "${DB_SQLCL_BIN}" >&2
  exit 1
fi

export JAVA_HOME="/caller/java"
export DB_SQLCL_BIN="caller-sql"

load_env_context "dev@oci"

if [[ "${JAVA_HOME}" != "/caller/java" ]]; then
  printf 'Expected caller-exported JAVA_HOME to win over conn.json, got: %s\n' "${JAVA_HOME}" >&2
  exit 1
fi

if [[ "${DB_SQLCL_BIN}" != "caller-sql" ]]; then
  printf 'Expected caller-exported DB_SQLCL_BIN to win over conn.json, got: %s\n' "${DB_SQLCL_BIN}" >&2
  exit 1
fi

export JAVA_HOME=""
export DB_SQLCL_BIN=""

load_env_context "dev@oci"

if [[ "${JAVA_HOME}" != "" ]]; then
  printf 'Expected explicitly empty exported JAVA_HOME to win over conn.json, got: %s\n' "${JAVA_HOME}" >&2
  exit 1
fi

if [[ "${DB_SQLCL_BIN}" != "" ]]; then
  printf 'Expected explicitly empty exported DB_SQLCL_BIN to win over conn.json, got: %s\n' "${DB_SQLCL_BIN}" >&2
  exit 1
fi

printf 'common runtime path loading test passed\n'
