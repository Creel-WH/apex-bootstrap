#!/usr/bin/env bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TMP_DIR="$(mktemp -d)"
ROOT_DIR="${TMP_DIR}/repo"

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

mkdir -p "${ROOT_DIR}/tools" \
         "${ROOT_DIR}/export/_template" \
         "${ROOT_DIR}/export/dev@oci/f100/application" \
         "${ROOT_DIR}/docs/support" \
         "${ROOT_DIR}/docs/superpowers" \
         "${ROOT_DIR}/tmp" \
         "${ROOT_DIR}/.superpowers" \
         "${ROOT_DIR}/.omx" \
         "${ROOT_DIR}/.playwright-mcp"

cp "${REPO_ROOT}/tools/reset_workspace.sh" "${ROOT_DIR}/tools/reset_workspace.sh"
cp "${REPO_ROOT}/tools/common.sh" "${ROOT_DIR}/tools/common.sh"
chmod +x "${ROOT_DIR}/tools/reset_workspace.sh"

cat > "${ROOT_DIR}/conn.json" <<'JSON'
{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "user/password@host:1521/service",
    "db_schema": "dev",
    "apex_workspace": "DEV"
  }
}
JSON

touch "${ROOT_DIR}/export/dev@oci/f100/application/install.sql"
touch "${ROOT_DIR}/docs/support/generated.md"
touch "${ROOT_DIR}/docs/superpowers/kept.md"
touch "${ROOT_DIR}/tmp/transient.sql"
touch "${ROOT_DIR}/.superpowers/state.json"
touch "${ROOT_DIR}/.omx/session.json"
touch "${ROOT_DIR}/.playwright-mcp/cache.json"

output="$(bash "${ROOT_DIR}/tools/reset_workspace.sh" --dry-run)"

for expected in \
  "[reset] would remove export/dev@oci/f100" \
  "[reset] would remove docs/support" \
  "[reset] would remove docs/superpowers" \
  "[reset] would remove tmp" \
  "[reset] would remove .superpowers" \
  "[reset] would remove .omx" \
  "[reset] would remove .playwright-mcp" \
  "Workspace dry-run complete for all exports."; do
  if [[ "${output}" != *"${expected}"* ]]; then
    printf 'Expected dry-run output to contain: %s\n' "${expected}" >&2
    exit 1
  fi
done

bash "${ROOT_DIR}/tools/reset_workspace.sh"

for removed_path in \
  "${ROOT_DIR}/export/dev@oci/f100" \
  "${ROOT_DIR}/docs/support" \
  "${ROOT_DIR}/docs/superpowers" \
  "${ROOT_DIR}/tmp" \
  "${ROOT_DIR}/.superpowers" \
  "${ROOT_DIR}/.omx" \
  "${ROOT_DIR}/.playwright-mcp"; do
  if [[ -e "${removed_path}" ]]; then
    printf 'Expected generated scaffold artifact to be removed: %s\n' "${removed_path}" >&2
    exit 1
  fi
done

if [[ ! -f "${ROOT_DIR}/conn.json" ]]; then
  printf 'Expected conn.json to survive scaffold reset\n' >&2
  exit 1
fi

printf 'reset workspace generated artifacts test passed\n'
