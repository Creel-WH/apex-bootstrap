#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "${ROOT_DIR}"

seed_file="export/dev@oci/f101/db/data/apexcn_mail_from_config.sql"
install_file="export/dev@oci/f101/db/install.sql"

test -f "${seed_file}"
grep -q "MAIL_FROM_ADDRESS" "${seed_file}"
grep -q "noreply@oracleapex.cn" "${seed_file}"
grep -q "@@data/apexcn_mail_from_config.sql" "${install_file}"

# The seed must be idempotent for repeatable app rebuilds/imports.
grep -Eq "SELECT COUNT\(\*\)|select count\(\*\)" "${seed_file}"
grep -Eq "IF l_count = 0|if l_count = 0" "${seed_file}"
