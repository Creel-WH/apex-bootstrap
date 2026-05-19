#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PKG_SPEC="${ROOT_DIR}/export/dev@oci/f101/db/packages/specs/apexcn_forum_pkg.pks"
PKG_BODY="${ROOT_DIR}/export/dev@oci/f101/db/packages/bodies/apexcn_forum_pkg.pkb"
THREADS_VIEW="${ROOT_DIR}/export/dev@oci/f101/db/views/apexcn_threads_v.sql"
PAGE_FILE="${ROOT_DIR}/export/dev@oci/f101/apex/f101/application/pages/page_00014.sql"

assert_no_match() {
  local pattern="$1"
  shift

  if grep -E -n -- "$pattern" "$@" >/dev/null; then
    echo "unexpected pattern remains: $pattern" >&2
    grep -E -n -- "$pattern" "$@" >&2
    exit 1
  fi
}

assert_match() {
  local pattern="$1"
  local file="$2"

  if ! grep -E -q -- "$pattern" "$file"; then
    echo "expected pattern missing: $pattern in $file" >&2
    exit 1
  fi
}

assert_no_match 'https://oracleapex\.cn/ords/r/dev/forum102108/thread-detail' "${PKG_BODY}"
assert_no_match 'https://wangfanggang\.oss-cn-shanghai\.aliyuncs\.com/images/202508091030485\.png' "${PKG_SPEC}" "${PKG_BODY}" "${THREADS_VIEW}"
assert_no_match 'javascript:void\(0\)' "${PKG_BODY}"
assert_no_match 't-Button--noUI t-Button--icon t-Button--noLabel' "${PKG_BODY}"

assert_match 'FUNCTION default_avatar_url_func RETURN VARCHAR2;' "${PKG_SPEC}"
assert_match 'build_thread_url_func' "${PKG_BODY}"
assert_match 'data-role="icon-button"' "${PAGE_FILE}"
assert_match 'setForumButtonState' "${PAGE_FILE}"
assert_match 'data-role="thread-flag"' "${PAGE_FILE}"
assert_match '\[data-role="icon-button"\]' "${PAGE_FILE}"

printf 'f101 forum package portability test passed\n'
