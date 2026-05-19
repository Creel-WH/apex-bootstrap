#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
FORUM_PKG="${ROOT_DIR}/export/dev@oci/f101/db/packages/bodies/apexcn_forum_pkg.pkb"
FORUM_PKS="${ROOT_DIR}/export/dev@oci/f101/db/packages/specs/apexcn_forum_pkg.pks"
PAGE14="${ROOT_DIR}/export/dev@oci/f101/apex/f101/application/pages/page_00014.sql"

assert_no_match() {
  local pattern="$1"
  shift
  if grep -E -n -- "$pattern" "$@" >/dev/null; then
    echo "unexpected detail-render pattern remains: $pattern" >&2
    grep -E -n -- "$pattern" "$@" >&2
    exit 1
  fi
}

assert_match() {
  local pattern="$1"
  local file="$2"
  if ! grep -E -q -- "$pattern" "$file"; then
    echo "expected semantic selector missing: $pattern in $file" >&2
    exit 1
  fi
}

assert_no_match 'thread_generation_func|post_generation_func' "$FORUM_PKS" "$FORUM_PKG"
assert_match 'thread_view_model_func' "$FORUM_PKG"
assert_match 'post_view_model_func' "$FORUM_PKG"
assert_match '\[data-role="thread-content"\]' "$PAGE14"
assert_match '\[data-role="post-content"\]' "$PAGE14"

printf 'f101 detail render semantic markup test passed\n'
