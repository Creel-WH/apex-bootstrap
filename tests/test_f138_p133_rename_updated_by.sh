#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
P133="${ROOT_DIR}/export/sales-tools@test/f138/apex/f138/application/pages/page_00133.sql"
P135="${ROOT_DIR}/export/sales-tools@test/f138/apex/f138/application/pages/page_00135.sql"

[[ -f "${P133}" ]] || { echo "missing ${P133}" >&2; exit 1; }
[[ -f "${P135}" ]] || { echo "missing ${P135}" >&2; exit 1; }

if ! grep -Fq "WHEN A.FILE_TYPE = ''FOLDER'' THEN NVL(A.UPDATED_BY, NVL(FL.UPDATED_BY, A.CREATED_BY))" "${P133}"; then
  echo "expected P133 folder updated_by to fall back to the renamed folder updater" >&2
  exit 1
fi

if ! grep -Fq "WHEN A.FILE_TYPE = ''FOLDER'' THEN NVL(A.UPDATE_DATE, NVL(FL.UPDATE_DATE, A.CREATION_DATE))" "${P133}"; then
  echo "expected P133 folder update_date to fall back to the renamed folder update date" >&2
  exit 1
fi

if grep -Fq "UPDATED_BY =-1" "${P135}"; then
  echo "expected P135 folder rename not to write -1 as child updated_by" >&2
  exit 1
fi

if ! grep -Fq "UPDATED_BY =:MPF_USER_ID," "${P135}"; then
  echo "expected P135 folder rename to stamp child updated_by with the current user" >&2
  exit 1
fi

printf 'f138 P133 rename updated_by test passed\n'
