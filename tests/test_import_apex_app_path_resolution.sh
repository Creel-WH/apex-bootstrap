#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
APP_CODE="f99998"
APP_ENV="dev@oci"
APP_DIR="${REPO_ROOT}/export/${APP_ENV}/${APP_CODE}"
APEX_DIR="${APP_DIR}/apex"
NESTED_EXPORT_DIR="${APEX_DIR}/${APP_CODE}"
CONN_FILE="${REPO_ROOT}/conn.json"
BACKUP_FILE="$(mktemp "${TMPDIR:-/tmp}/conn.json.test-backup.XXXXXX")"
FAKE_SQLCL="${REPO_ROOT}/tests/.fake_sqlcl_import_apex_app.sh"
ORIGINAL_CONN_PRESENT=0

cleanup() {
  rm -rf "${APP_DIR}"
  rm -f "${FAKE_SQLCL}"

  if [[ "${ORIGINAL_CONN_PRESENT}" -eq 1 ]]; then
    mv "${BACKUP_FILE}" "${CONN_FILE}"
  else
    rm -f "${BACKUP_FILE}"
    rm -f "${CONN_FILE}"
  fi
}

trap cleanup EXIT

mkdir -p "${NESTED_EXPORT_DIR}"

if [[ -f "${CONN_FILE}" ]]; then
  ORIGINAL_CONN_PRESENT=1
  cp "${CONN_FILE}" "${BACKUP_FILE}"
fi

cat > "${NESTED_EXPORT_DIR}/install.sql" <<'SQL'
prompt nested install reached
SQL

cat > "${FAKE_SQLCL}" <<'SQLCL'
#!/usr/bin/env bash
cat >/dev/null
exit 0
SQLCL
chmod +x "${FAKE_SQLCL}"

cat > "${CONN_FILE}" <<'JSON'
{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "user/password@host:port/service_name",
    "db_schema": "your_schema",
    "apex_workspace": "YOUR_WORKSPACE"
  }
}
JSON

output="$(DB_SQLCL_BIN="${FAKE_SQLCL}" bash "${REPO_ROOT}/tools/import_apex_app.sh" 'dev@oci' 99998 2>&1 || true)"

if grep -q "Missing APEX install script" <<<"${output}"; then
  echo "import_apex_app.sh did not resolve nested install.sql path" >&2
  echo "${output}" >&2
  exit 1
fi

if ! grep -q "Importing APEX app" <<<"${output}"; then
  echo "Expected import command banner in output" >&2
  echo "${output}" >&2
  exit 1
fi

echo "import_apex_app path resolution check passed."
