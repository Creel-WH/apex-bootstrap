#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/common.sh
source "${ROOT_DIR}/tools/common.sh"

TMP_DIR="$(mktemp -d)"
CAPTURE_FILE="${TMP_DIR}/oracle_home.txt"

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

cat > "${TMP_DIR}/fake_sqlcl.sh" <<'EOF'
#!/usr/bin/env bash
printf '%s\n' "${ORACLE_HOME:-unset}" > "${CAPTURE_FILE}"
cat >/dev/null
printf 'connected\n'
EOF
chmod +x "${TMP_DIR}/fake_sqlcl.sh"

export CAPTURE_FILE
export ORACLE_HOME="/tmp/does-not-exist"
DB_CONNECTION_MODE="direct"
DB_CONNECT_STRING="user/password@127.0.0.1:1521/ORCLPDB1"
DB_SQLCL_BIN="${TMP_DIR}/fake_sqlcl.sh"

printf 'select user from dual;\n' | run_sqlcl >/dev/null

if [[ "$(<"${CAPTURE_FILE}")" != "unset" ]]; then
  printf 'Expected invalid ORACLE_HOME to be removed before running SQLcl.\n' >&2
  exit 1
fi

printf 'common run_sqlcl invalid ORACLE_HOME test passed\n'
