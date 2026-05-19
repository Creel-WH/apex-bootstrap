#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PAGE12="${ROOT_DIR}/export/dev@oci/f101/apex/f101/application/pages/page_00012.sql"
PAGE14="${ROOT_DIR}/export/dev@oci/f101/apex/f101/application/pages/page_00014.sql"
POSTS_TRG="${ROOT_DIR}/export/dev@oci/f101/db/triggers/apexcn_posts_trg.sql"

assert_match() {
  local pattern="$1"
  local file="$2"
  if ! grep -E -q -- "$pattern" "$file"; then
    echo "expected exception-governance pattern missing: $pattern in $file" >&2
    exit 1
  fi
}

assert_match 'Create Thread error\.' "$PAGE12"
assert_match 'Save Thread error\.' "$PAGE12"
assert_match 'format_error_backtrace' "$PAGE12"
assert_match "RAISE;" "$PAGE12"

assert_match 'AJAX getThreadViewModel error\.' "$PAGE14"
assert_match 'getPostViewModel\. thread_id=' "$PAGE14"
assert_match 'AJAX call error: deletePost\.' "$PAGE14"
assert_match 'AJAX call error: correctAnswer\.' "$PAGE14"
assert_match 'AJAX TOGGLE_FAV error\.' "$PAGE14"
assert_match 'AJAX TOGGLE_SUB error\.' "$PAGE14"
assert_match 'GEN_URL_PROCESS error\. err=' "$PAGE14"
assert_match 'format_error_backtrace' "$PAGE14"
assert_match "RAISE;" "$PAGE14"

assert_match 'apexcn_posts_trg error: ' "$POSTS_TRG"
assert_match 'FORMAT_ERROR_BACKTRACE' "$POSTS_TRG"
assert_match 'RAISE;' "$POSTS_TRG"

printf 'f101 exception governance test passed\n'
