#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/common.sh
source "${ROOT_DIR}/tools/common.sh"

TMP_DIR="$(mktemp -d)"
OUTPUT_FILE="${TMP_DIR}/sqlcl.out"

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

cat > "${TMP_DIR}/fake_sqlcl.sh" <<'EOF'
#!/usr/bin/env bash
cat >/dev/null
printf 'Connection failed\n'
printf 'SP2-0640: Not connected\n'
exit 0
EOF
chmod +x "${TMP_DIR}/fake_sqlcl.sh"

DB_CONNECTION_MODE="direct"
DB_CONNECT_STRING="user/password@127.0.0.1:1521/ORCLPDB1"
DB_SQLCL_BIN="${TMP_DIR}/fake_sqlcl.sh"

set +e
printf 'select user from dual;\n' | run_sqlcl > "${OUTPUT_FILE}" 2>&1
status=$?
set -e

if [[ "${status}" -eq 0 ]]; then
  printf 'Expected run_sqlcl to fail when SQLcl reports a connection failure.\n' >&2
  exit 1
fi

if ! grep -q 'Connection failed' "${OUTPUT_FILE}"; then
  printf 'Expected SQLcl failure output to be preserved.\n' >&2
  exit 1
fi

printf 'common run_sqlcl connection failure test passed\n'
