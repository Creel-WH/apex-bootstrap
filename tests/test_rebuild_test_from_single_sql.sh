#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/rebuild_test_from_single_sql.sh"
TOOLS_DIR="${ROOT_DIR}/tools"

SQL_BAK="${TOOLS_DIR}/sql_as.sh.test-bak"
EXPORT_BAK="${TOOLS_DIR}/export_apex_app.sh.test-bak"
RUN_GATE_BAK="${TOOLS_DIR}/run_gate.sh.test-bak"
APEX_AI_BAK="${TOOLS_DIR}/apex_ai.sh.test-bak"

cleanup() {
  for pair in \
    "${SQL_BAK}:${TOOLS_DIR}/sql_as.sh" \
    "${EXPORT_BAK}:${TOOLS_DIR}/export_apex_app.sh" \
    "${RUN_GATE_BAK}:${TOOLS_DIR}/run_gate.sh" \
    "${APEX_AI_BAK}:${TOOLS_DIR}/apex_ai.sh"
  do
    bak="${pair%%:*}"
    dst="${pair#*:}"
    if [[ -f "${bak}" ]]; then
      mv "${bak}" "${dst}"
    fi
  done
  rm -f /tmp/rebuild_single_calls.log
  rm -rf "${ROOT_DIR}/export/dev@oci/f101/release-single"
}

trap cleanup EXIT

mkdir -p "${ROOT_DIR}/export/dev@oci/f101"

mv "${TOOLS_DIR}/sql_as.sh" "${SQL_BAK}"
mv "${TOOLS_DIR}/export_apex_app.sh" "${EXPORT_BAK}"
mv "${TOOLS_DIR}/run_gate.sh" "${RUN_GATE_BAK}"
mv "${TOOLS_DIR}/apex_ai.sh" "${APEX_AI_BAK}"

cat > "${TOOLS_DIR}/sql_as.sh" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
printf 'sql_as:%s\n' "$*" >> /tmp/rebuild_single_calls.log
for arg in "$@"; do
  if [[ "$arg" == @* ]]; then
    sql_path="${arg#@}"
    if grep -q 'apex export -applicationid' "$sql_path"; then
      release_dir="$(grep 'apex export -applicationid' "$sql_path" | awk '{print $NF}')"
      mkdir -p "$release_dir"
      printf 'prompt single export\n' > "${release_dir}/f101.sql"
    fi
  fi
done
SH
chmod +x "${TOOLS_DIR}/sql_as.sh"

cat > "${TOOLS_DIR}/export_apex_app.sh" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
printf 'export:%s\n' "$*" >> /tmp/rebuild_single_calls.log
SH
chmod +x "${TOOLS_DIR}/export_apex_app.sh"

cat > "${TOOLS_DIR}/run_gate.sh" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
printf 'run_gate:%s|COMPARE_ENV=%s|COMPARE_APP=%s\n' "$*" "${RUN_GATE_COMPARE_SOURCE_ENV:-}" "${RUN_GATE_COMPARE_SOURCE_APP_ID:-}" >> /tmp/rebuild_single_calls.log
SH
chmod +x "${TOOLS_DIR}/run_gate.sh"

cat > "${TOOLS_DIR}/apex_ai.sh" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
printf 'apex_ai:%s\n' "$*" >> /tmp/rebuild_single_calls.log
SH
chmod +x "${TOOLS_DIR}/apex_ai.sh"

bash "${SCRIPT}" 101 900

grep -q 'sql_as:test@oci 900' /tmp/rebuild_single_calls.log || {
  printf 'Expected single SQL import to call sql_as against test@oci 900\n' >&2
  exit 1
}

grep -q 'export:test@oci 900' /tmp/rebuild_single_calls.log || {
  printf 'Expected canonical export_apex_app call for test@oci 900\n' >&2
  exit 1
}

grep -q 'run_gate:test@oci 900 db' /tmp/rebuild_single_calls.log || {
  printf 'Expected test db gate call\n' >&2
  exit 1
}

grep -q 'run_gate:test@oci 900 deploy|COMPARE_ENV=dev@oci|COMPARE_APP=101' /tmp/rebuild_single_calls.log || {
  printf 'Expected deploy gate to carry dev compare source env/app\n' >&2
  exit 1
}

grep -q 'apex_ai:gate test@oci 900 browser' /tmp/rebuild_single_calls.log || {
  printf 'Expected browser gate call\n' >&2
  exit 1
}

grep -q 'apex_ai:gate test@oci 900 browser-functional' /tmp/rebuild_single_calls.log || {
  printf 'Expected browser-functional gate call\n' >&2
  exit 1
}

[[ -f "${ROOT_DIR}/export/dev@oci/f101/release-single/f101.sql" ]] || {
  printf 'Expected single SQL export artifact to be created\n' >&2
  exit 1
}

printf 'rebuild_test_from_single_sql workflow test passed\n'
