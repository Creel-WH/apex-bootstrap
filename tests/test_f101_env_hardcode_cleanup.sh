#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PAGE16="${ROOT_DIR}/export/dev@oci/f101/apex/f101/application/pages/page_00016.sql"
AUTH_PKG="${ROOT_DIR}/export/dev@oci/f101/db/packages/bodies/apexcn_auth_pkg.pkb"
FORUM_PKG="${ROOT_DIR}/export/dev@oci/f101/db/packages/bodies/apexcn_forum_pkg.pkb"

assert_no_match() {
  local pattern="$1"
  shift

  if grep -E -n -- "$pattern" "$@" >/dev/null; then
    echo "unexpected hardcoded pattern remains: $pattern" >&2
    grep -E -n -- "$pattern" "$@" >&2
    exit 1
  fi
}

assert_match() {
  local pattern="$1"
  local file="$2"

  if ! grep -E -q -- "$pattern" "$file"; then
    echo "expected config-driven pattern missing: $pattern in $file" >&2
    exit 1
  fi
}

if [[ -f "${PAGE16}" ]]; then
  assert_no_match 'https://api\.tokenpony\.cn/v1' "${PAGE16}"
  assert_no_match 'https://hulkier-pluckily-allan\.ngrok-free\.dev/api' "${PAGE16}"
  assert_match "UC_AI_BASE_URL" "${PAGE16}"
  assert_match "UC_AI_OLLAMA_BASE_URL" "${PAGE16}"
fi
assert_no_match 'noreply@oracleapex\.cn' "${AUTH_PKG}" "${FORUM_PKG}"

assert_match "MAIL_FROM_ADDRESS" "${AUTH_PKG}"
assert_match "MAIL_FROM_ADDRESS" "${FORUM_PKG}"

printf 'f101 env hardcode cleanup test passed\n'
