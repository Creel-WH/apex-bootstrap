#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/export_apex_db.sh
source "${ROOT_DIR}/tools/export_apex_db.sh"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "${tmp_dir}"' EXIT

APP_DIR="${tmp_dir}/f100"
DB_SCHEMA="lab"
mkdir -p "${APP_DIR}"

candidate_file="${tmp_dir}/candidates.txt"
printf 'FOO_BAR\n' > "${candidate_file}"

sqlcl_log="${tmp_dir}/sqlcl.log"
call_counter_file="${tmp_dir}/sqlcl.calls"
printf '0\n' > "${call_counter_file}"

run_sqlcl() {
  local input=""
  local call_count=0

  input="$(cat)"
  call_count="$(cat "${call_counter_file}")"
  call_count=$((call_count + 1))
  printf '%s\n' "${call_count}" > "${call_counter_file}"

  {
    printf -- '--- CALL %s ---\n' "${call_count}"
    printf '%s\n' "${input}"
  } >> "${sqlcl_log}"

  case "${call_count}" in
    1)
      printf 'TABLE|FOO_BAR\n'
      printf 'INDEX|FOO_BAR_I1\n'
      printf 'PACKAGE_SPEC|FOO_PKG\n'
      printf 'PACKAGE_BODY|FOO_PKG\n'
      ;;
    2)
      cat <<'EOF'
__OBJECT_START__|TABLE|FOO_BAR
CREATE TABLE "LAB"."FOO_BAR"
(
  ID NUMBER
);
__OBJECT_END__|TABLE|FOO_BAR
__OBJECT_START__|INDEX|FOO_BAR_I1
CREATE INDEX "LAB"."FOO_BAR_I1" ON "LAB"."FOO_BAR" ("ID");
__OBJECT_END__|INDEX|FOO_BAR_I1
__OBJECT_START__|PACKAGE_SPEC|FOO_PKG
CREATE OR REPLACE PACKAGE "LAB"."FOO_PKG" AS
  PROCEDURE run_job;
END foo_pkg;
/
__OBJECT_END__|PACKAGE_SPEC|FOO_PKG
__OBJECT_START__|PACKAGE_BODY|FOO_PKG
CREATE OR REPLACE PACKAGE BODY "LAB"."FOO_PKG" AS
  PROCEDURE run_job IS
  BEGIN
    NULL;
  END run_job;
END foo_pkg;
/
__OBJECT_END__|PACKAGE_BODY|FOO_PKG
EOF
      ;;
    *)
      printf 'Unexpected SQLcl invocation count: %s\n' "${call_count}" >&2
      return 1
      ;;
  esac
}

export_candidate_objects "${candidate_file}"

actual_calls="$(cat "${call_counter_file}")"
if [[ "${actual_calls}" != "2" ]]; then
  printf 'Expected export_candidate_objects to use exactly 2 SQLcl invocations, got %s\n' "${actual_calls}" >&2
  exit 1
fi

if ! grep -Fq 'with candidate_names(name) as (' "${sqlcl_log}"; then
  printf 'Expected lookup SQL to batch candidate names into one common table expression.\n' >&2
  exit 1
fi

if ! grep -Fq "select 'FOO_BAR' as name from dual" "${sqlcl_log}"; then
  printf 'Expected lookup SQL to include the candidate name in the batch query.\n' >&2
  exit 1
fi

if grep -Fq 'order by 1, 2' "${sqlcl_log}"; then
  printf 'Lookup SQL must not order by a non-existent second select-list column.\n' >&2
  exit 1
fi

if ! grep -Fq '__OBJECT_START__|PACKAGE_BODY|FOO_PKG' "${sqlcl_log}"; then
  printf 'Expected export SQL to batch multiple objects into one run.\n' >&2
  exit 1
fi

if ! grep -Fq 'CREATE TABLE "FOO_BAR"' "${APP_DIR}/db/tables/foo_bar.sql"; then
  printf 'Expected table DDL file to be created without owner prefix.\n' >&2
  exit 1
fi

if ! grep -Fq 'CREATE INDEX "FOO_BAR_I1" ON "FOO_BAR"' "${APP_DIR}/db/indexes/foo_bar_i1.sql"; then
  printf 'Expected index DDL file to be created without owner prefix.\n' >&2
  exit 1
fi

if ! grep -Fq 'CREATE OR REPLACE PACKAGE BODY "FOO_PKG"' "${APP_DIR}/db/packages/bodies/foo_pkg.pkb"; then
  printf 'Expected package body DDL file to be created.\n' >&2
  exit 1
fi

printf 'export_apex_db batch export test passed\n'
