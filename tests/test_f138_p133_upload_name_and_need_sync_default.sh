#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PAGE="${ROOT_DIR}/export/sales-tools@test/f138/apex/f138/application/pages/page_00133.sql"
TABLE_SQL="${ROOT_DIR}/export/sales-tools@test/f138/db/tables/sts_file.sql"

[[ -f "${PAGE}" ]] || { echo "missing ${PAGE}" >&2; exit 1; }
[[ -f "${TABLE_SQL}" ]] || { echo "missing ${TABLE_SQL}" >&2; exit 1; }

if grep -Fq "encodeURIComponent(encodeURIComponent(f.name))" "${PAGE}"; then
  echo "expected P133 upload file name to avoid double encodeURIComponent" >&2
  exit 1
fi

if grep -Fq "var encodedName = encodeURIComponent(f.name);" "${PAGE}"; then
  echo "expected P133 upload file name to avoid manual encodeURIComponent" >&2
  exit 1
fi

if ! grep -Fq "var encodedName = f.name;" "${PAGE}"; then
  echo "expected P133 upload file name to pass raw file name to apex.server.process" >&2
  exit 1
fi

if grep -Fq "x02: encodeURIComponent(folderName)" "${PAGE}"; then
  echo "expected P133 folder upload to avoid manual encodeURIComponent for folderName" >&2
  exit 1
fi

if ! grep -Fq "\"NEED_SYNC\" NUMBER(1,0) DEFAULT 0 NOT NULL ENABLE" "${TABLE_SQL}"; then
  echo "expected STS_FILE.NEED_SYNC default to be 0 (未同步)" >&2
  exit 1
fi

if ! grep -Fq "STATIC:\\672A\\540C\\6B65;0,\\5DF2\\540C\\6B65;1" "${PAGE}"; then
  echo "expected P133 sync status LOV to remain 未同步=0, 已同步=1" >&2
  exit 1
fi

printf 'f138 P133 upload name and need_sync default test passed\n'
