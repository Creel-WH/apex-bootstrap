#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/export_apex_db.sh
source "${ROOT_DIR}/tools/export_apex_db.sh"

APP_DIR="${ROOT_DIR}/export/lab/f100"

spec_path="$(object_output_path PACKAGE_SPEC CUX_RAG_PKG)"
body_path="$(object_output_path PACKAGE_BODY CUX_RAG_PKG)"

if [[ "${spec_path}" != "${APP_DIR}/db/packages/specs/cux_rag_pkg.pks" ]]; then
  printf 'Unexpected package spec path: %s\n' "${spec_path}" >&2
  exit 1
fi

if [[ "${body_path}" != "${APP_DIR}/db/packages/bodies/cux_rag_pkg.pkb" ]]; then
  printf 'Unexpected package body path: %s\n' "${body_path}" >&2
  exit 1
fi

printf 'export_apex_db package file naming test passed\n'
