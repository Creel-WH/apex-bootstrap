#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

record='environment|dev@oci|||WARN|1|Credentials still contain __fill_me__ placeholders|Resolve the warning details or rerun without --deep'
rendered="$(render_result_text 'check' "${record}")"

if [[ "${rendered}" != *'Resolve the warning details or rerun without --deep'* ]]; then
  printf 'Expected rendered WARN text to include next_step guidance, got: %s\n' "${rendered}" >&2
  exit 1
fi

DB_CONNECTION_MODE='direct'
DB_CONNECT_STRING='dev_user/final-secret@127.0.0.1:1521/NEWPDB1'
DB_PASSWORD='__fill_me__'

if warning_message="$(check_password_warning 2>/dev/null)"; then
  printf 'Did not expect direct mode to warn on stale DB_PASSWORD, got: %s\n' "${warning_message}" >&2
  exit 1
fi

DB_CONNECTION_MODE='tns'
DB_CONNECT_STRING='dev_user/final-secret@127.0.0.1:1521/NEWPDB1'
DB_PASSWORD='final-secret'

if warning_message="$(check_password_warning 2>/dev/null)"; then
  printf 'Did not expect tns mode to inspect stale DB_CONNECT_STRING, got: %s\n' "${warning_message}" >&2
  exit 1
fi

DB_CONNECTION_MODE='tns'
DB_PASSWORD='__fill_me__'

warning_message="$(check_password_warning 2>/dev/null)" || {
  printf 'Expected tns mode placeholder warning when DB_PASSWORD is active\n' >&2
  exit 1
}

if [[ "${warning_message}" != 'Credentials still contain __fill_me__ placeholders' ]]; then
  printf 'Expected canonical placeholder warning, got: %s\n' "${warning_message}" >&2
  exit 1
fi

DB_CONNECTION_MODE='direct'
DB_CONNECT_STRING='dev_user/__fill_me__@127.0.0.1:1521/NEWPDB1'
DB_PASSWORD='final-secret'

warning_message="$(check_password_warning 2>/dev/null)" || {
  printf 'Expected direct mode placeholder warning when DB_CONNECT_STRING is active\n' >&2
  exit 1
}

if [[ "${warning_message}" != 'Credentials still contain __fill_me__ placeholders' ]]; then
  printf 'Expected canonical placeholder warning for direct mode, got: %s\n' "${warning_message}" >&2
  exit 1
fi

printf 'apex_ai check rendering and placeholder scope test passed\n'
