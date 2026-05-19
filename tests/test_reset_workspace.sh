#!/usr/bin/env bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TMP_DIR="$(mktemp -d)"
ROOT_DIR="${TMP_DIR}/repo"
SCRIPT="${ROOT_DIR}/tools/reset_workspace.sh"
ENV_ALIAS="dev@oci"
APP_CODE_ONE="f99998"
APP_CODE_TWO="f99999"
TARGETED_APP_DIR="${ROOT_DIR}/export/dev@oci/${APP_CODE_TWO}"
APP_DIR_ONE="${ROOT_DIR}/export/dev@oci/${APP_CODE_ONE}"
APP_DIR_TWO="${ROOT_DIR}/export/dev@oci/${APP_CODE_TWO}"
LEGACY_ROOT_APP_DIR="${ROOT_DIR}/export/f99997"

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

assert_contains() {
  local haystack="$1"
  local needle="$2"

  if [[ "${haystack}" != *"${needle}"* ]]; then
    printf 'Expected output to contain: %s\n' "${needle}" >&2
    exit 1
  fi
}

assert_files_equal() {
  local left_file="$1"
  local right_file="$2"
  local message="$3"

  if ! cmp -s "${left_file}" "${right_file}"; then
    printf '%s\n' "${message}" >&2
    exit 1
  fi
}

mkdir -p "${ROOT_DIR}/tools" \
         "${ROOT_DIR}/export/_template" \
         "${APP_DIR_ONE}/application" \
         "${APP_DIR_ONE}/docs" \
         "${APP_DIR_TWO}/application" \
         "${APP_DIR_TWO}/docs" \
         "${LEGACY_ROOT_APP_DIR}/application" \
         "${LEGACY_ROOT_APP_DIR}/docs"

cp "${REPO_ROOT}/tools/reset_workspace.sh" "${ROOT_DIR}/tools/reset_workspace.sh"
cp "${REPO_ROOT}/tools/common.sh" "${ROOT_DIR}/tools/common.sh"
chmod +x "${ROOT_DIR}/tools/reset_workspace.sh"

mkdir -p "${APP_DIR_ONE}/db/tables" "${APP_DIR_ONE}/db/packages/specs"
mkdir -p "${APP_DIR_TWO}/db/tables" "${APP_DIR_TWO}/db/packages/specs"
mkdir -p "${LEGACY_ROOT_APP_DIR}/db/tables" "${LEGACY_ROOT_APP_DIR}/db/packages/specs"
touch "${APP_DIR_ONE}/application/install.sql" "${APP_DIR_ONE}/docs/bootstrap_report.md" "${APP_DIR_ONE}/docs/bootstrap_report.json"
touch "${APP_DIR_TWO}/application/install.sql" "${APP_DIR_TWO}/docs/bootstrap_report.md" "${APP_DIR_TWO}/docs/bootstrap_report.json"
touch "${LEGACY_ROOT_APP_DIR}/application/install.sql" "${LEGACY_ROOT_APP_DIR}/docs/bootstrap_report.md" "${LEGACY_ROOT_APP_DIR}/docs/bootstrap_report.json"
touch "${APP_DIR_ONE}/db/install.sql" "${APP_DIR_ONE}/db/tables/example.sql" "${APP_DIR_ONE}/db/packages/specs/example.pks"
touch "${APP_DIR_TWO}/db/install.sql" "${APP_DIR_TWO}/db/tables/example.sql" "${APP_DIR_TWO}/db/packages/specs/example.pks"
touch "${LEGACY_ROOT_APP_DIR}/db/install.sql" "${LEGACY_ROOT_APP_DIR}/db/tables/example.sql" "${LEGACY_ROOT_APP_DIR}/db/packages/specs/example.pks"

cat > "${ROOT_DIR}/conn.json" <<'JSON'
{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "user/password@host:1521/service_name",
    "db_schema": "dev",
    "apex_workspace": "DEV"
  }
}
JSON
cp "${ROOT_DIR}/conn.json" "${TMP_DIR}/expected-conn.json"

output="$(bash "${SCRIPT}" "${ENV_ALIAS}" 99999 --dry-run)"

assert_contains "${output}" "[reset] would remove export/dev@oci/${APP_CODE_TWO}"
assert_contains "${output}" "Workspace dry-run complete for ${APP_CODE_TWO} in ${ENV_ALIAS}."

bash "${SCRIPT}" "${ENV_ALIAS}" 99999

if [[ -d "${TARGETED_APP_DIR}" ]]; then
  printf 'Expected targeted app directory to be removed after reset\n' >&2
  exit 1
fi

if [[ ! -f "${ROOT_DIR}/conn.json" ]]; then
  printf 'Expected conn.json to survive app reset\n' >&2
  exit 1
fi

assert_files_equal "${ROOT_DIR}/conn.json" "${TMP_DIR}/expected-conn.json" \
  'Expected conn.json contents to remain unchanged after targeted reset'

if [[ ! -d "${APP_DIR_ONE}" ]]; then
  printf 'Expected non-target app directory to remain after targeted reset\n' >&2
  exit 1
fi

mkdir -p "${ROOT_DIR}/docs/support/oracle-apex-supporting-objects-bug" "${ROOT_DIR}/.superpowers"
touch "${ROOT_DIR}/docs/support/oracle-apex-supporting-objects-bug/note.md" "${ROOT_DIR}/.superpowers/state.txt"

output="$(bash "${SCRIPT}" "${ENV_ALIAS}" --dry-run)"

assert_contains "${output}" "[reset] would remove export/dev@oci/${APP_CODE_ONE}"
assert_contains "${output}" "[reset] would remove docs/support"
assert_contains "${output}" "[reset] would remove .superpowers"
assert_contains "${output}" "Environment workspace dry-run complete for ${ENV_ALIAS}."

bash "${SCRIPT}" "${ENV_ALIAS}"

if [[ -d "${APP_DIR_ONE}" ]]; then
  printf 'Expected app directory to be removed in environment reset\n' >&2
  exit 1
fi

if [[ ! -f "${ROOT_DIR}/conn.json" ]]; then
  printf 'Expected conn.json to survive environment reset\n' >&2
  exit 1
fi

assert_files_equal "${ROOT_DIR}/conn.json" "${TMP_DIR}/expected-conn.json" \
  'Expected conn.json contents to remain unchanged after environment reset'

if [[ -d "${ROOT_DIR}/config" ]]; then
  printf 'Did not expect config directory to exist after environment reset\n' >&2
  exit 1
fi

if [[ -d "${ROOT_DIR}/docs/support" ]]; then
  printf 'Expected docs/support to be removed in scaffold-only reset\n' >&2
  exit 1
fi

if [[ -d "${ROOT_DIR}/.superpowers" ]]; then
  printf 'Expected .superpowers to be removed in environment reset\n' >&2
  exit 1
fi

mkdir -p "${APP_DIR_ONE}/application" "${APP_DIR_TWO}/application"
touch "${APP_DIR_ONE}/application/install.sql" "${APP_DIR_TWO}/application/install.sql"
output="$(bash "${SCRIPT}" --dry-run)"

assert_contains "${output}" "[reset] would remove export/dev@oci/${APP_CODE_ONE}"
assert_contains "${output}" "[reset] would remove export/dev@oci/${APP_CODE_TWO}"
assert_contains "${output}" "[reset] would remove export/f99997"
assert_contains "${output}" "Workspace dry-run complete for all exports."

bash "${SCRIPT}"

if [[ -d "${APP_DIR_ONE}" || -d "${APP_DIR_TWO}" ]]; then
  printf 'Expected all app directories to be removed in global reset\n' >&2
  exit 1
fi

if [[ -d "${LEGACY_ROOT_APP_DIR}" ]]; then
  printf 'Expected legacy root-level export app directory to be removed in global reset\n' >&2
  exit 1
fi

if [[ -d "${ROOT_DIR}/export/dev@oci" ]]; then
  printf 'Expected empty env export directory to be removed in global reset\n' >&2
  exit 1
fi

if [[ -d "${ROOT_DIR}/config" ]]; then
  printf 'Did not expect config directory to exist after global reset\n' >&2
  exit 1
fi

assert_files_equal "${ROOT_DIR}/conn.json" "${TMP_DIR}/expected-conn.json" \
  'Expected conn.json contents to remain unchanged after global reset'

printf 'reset workspace test passed\n'
