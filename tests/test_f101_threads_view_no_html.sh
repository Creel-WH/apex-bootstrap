#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
THREADS_V="${ROOT_DIR}/export/dev@oci/f101/db/views/apexcn_threads_v.sql"
THREADS_FS_V="${ROOT_DIR}/export/dev@oci/f101/db/views/apexcn_threads_fs_v.sql"

assert_no_match() {
  local pattern="$1"
  shift
  if grep -E -n -- "$pattern" "$@" >/dev/null; then
    echo "unexpected DB-layer HTML remains: $pattern" >&2
    grep -E -n -- "$pattern" "$@" >&2
    exit 1
  fi
}

assert_match() {
  local pattern="$1"
  local file="$2"
  if ! grep -E -q -- "$pattern" "$file"; then
    echo "expected semantic output missing: $pattern in $file" >&2
    exit 1
  fi
}

assert_no_match '<span class="tag-label"|javascript:apex\.item|<div class="avatar"|style="display:none"' "$THREADS_V" "$THREADS_FS_V"
assert_match 'LISTAGG\(tg.tag_name, ' "$THREADS_V"
assert_match 'b\.html_tags' "$THREADS_FS_V"
assert_match 'get_user_avatar_func' "$THREADS_FS_V"

printf 'f101 threads view no-html test passed\n'
