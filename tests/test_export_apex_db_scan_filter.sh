#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/export_apex_db.sh
source "${ROOT_DIR}/tools/export_apex_db.sh"

assert_true() {
  local path="$1"

  if ! should_scan_export_file "${path}"; then
    printf 'Expected scan allow: %s\n' "${path}" >&2
    exit 1
  fi
}

assert_false() {
  local path="$1"

  if should_scan_export_file "${path}"; then
    printf 'Expected scan skip: %s\n' "${path}" >&2
    exit 1
  fi
}

assert_true "/tmp/f100/application/pages/page_00010.sql"
assert_true "/tmp/f100/application/shared_components/navigation/lists/navigation_menu.sql"
assert_true "/tmp/f100/application/shared_components/security/authorizations/administration_rights.sql"
assert_true "/tmp/f100/application/shared_components/logic/build_options.sql"

assert_false "/tmp/f100/application/shared_components/plugins/region_type/unitedcodes_reactive_markdown.sql"
assert_false "/tmp/f100/application/shared_components/files/icons_app_icon_32_png.sql"
assert_false "/tmp/f100/application/shared_components/user_interface/theme_files.sql"
assert_false "/tmp/f100/application/shared_components/globalization/messages.sql"
assert_false "/tmp/f100/application/deployment/install/install_table.sql"

printf 'export_apex_db scan filter test passed\n'
