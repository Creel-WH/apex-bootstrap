#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PAGE="${ROOT_DIR}/export/sales-tools@test/f138/apex/f138/application/pages/page_00133.sql"

[[ -f "${PAGE}" ]] || { echo "missing ${PAGE}" >&2; exit 1; }

if grep -Fq "HTP.P(''OK'')" "${PAGE}"; then
  echo "expected P133_SAVE_UPLOAD not to return plain text OK" >&2
  exit 1
fi

if grep -Fq "HTP.P(''ERROR: ''||V_ERR_MSG)" "${PAGE}"; then
  echo "expected P133_SAVE_UPLOAD not to return plain text ERROR" >&2
  exit 1
fi

if ! grep -Fq "apex_json.write(''status'', ''success'');" "${PAGE}"; then
  echo "expected P133_SAVE_UPLOAD to return JSON success status" >&2
  exit 1
fi

if ! grep -Fq "apex_json.write(''status'', ''error'');" "${PAGE}"; then
  echo "expected P133_SAVE_UPLOAD to return JSON error status" >&2
  exit 1
fi

if ! grep -Fq "dataType: ''json''" "${PAGE}"; then
  echo "expected P133_SAVE_UPLOAD client call to request JSON" >&2
  exit 1
fi

if ! grep -Fq "data && data.status === ''success''" "${PAGE}"; then
  echo "expected P133 upload client to validate JSON success status" >&2
  exit 1
fi

printf 'f138 P133 save upload JSON response test passed\n'
