#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PAGE="${ROOT_DIR}/export/sales-tools@test/f138/apex/f138/application/pages/page_00133.sql"

[[ -f "${PAGE}" ]] || { echo "missing ${PAGE}" >&2; exit 1; }

if ! grep -Fq "V_PAGE_ROOT_FOLDER_ID NUMBER := :APP_P133_ROOT_FOLDER_ID;" "${PAGE}"; then
  echo "expected P133 upload processes to keep page root id as fallback" >&2
  exit 1
fi

if ! grep -Fq "SELECT SCOPE_TYPE, DECODE(FILE_PATH, NULL, FILE_NAME, FILE_PATH||''/''||FILE_NAME), FILE_LEVEL, ROOT_FOLDER_ID" "${PAGE}"; then
  echo "expected P133_SAVE_UPLOAD to read parent ROOT_FOLDER_ID from STS_FILE" >&2
  exit 1
fi

if ! grep -Fq "V_EFFECTIVE_ROOT_FOLDER_ID := NVL(V_PARENT_ROOT_FOLDER_ID, NVL(V_PAGE_ROOT_FOLDER_ID, V_PARENT_FOLDER_ID));" "${PAGE}"; then
  echo "expected P133_SAVE_UPLOAD to derive ROOT_FOLDER_ID from parent record first" >&2
  exit 1
fi

if ! grep -Fq "V_EFFECTIVE_ROOT_FOLDER_ID := NVL(V_ROOT_FOLDER_ID, NVL(V_PAGE_ROOT_FOLDER_ID, V_PARENT_FOLDER_ID));" "${PAGE}"; then
  echo "expected P133_CREATE_FOLDER_UPLOAD to derive ROOT_FOLDER_ID from parent record first" >&2
  exit 1
fi

if grep -Fq "DECODE(V_FILE_LEVEL, 1, V_PARENT_FOLDER_ID, V_ROOT_FOLDER_ID)" "${PAGE}"; then
  echo "expected P133 upload processes not to rely on fragile FILE_LEVEL decode for ROOT_FOLDER_ID" >&2
  exit 1
fi

printf 'f138 P133 root_folder_id upload test passed\n'
