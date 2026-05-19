#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/run_gate.sh"
TOOLS_DIR="${ROOT_DIR}/tools"
APP_ID="123"
APP_CODE="f${APP_ID}"
APP_DIR="${ROOT_DIR}/export/ci/${APP_CODE}"
RUN_ID="test-run-gate-release-checks"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"

IMPORT_BAK="${TOOLS_DIR}/import_apex_app.sh.test-bak"
SQL_BAK="${TOOLS_DIR}/sql_as.sh.test-bak"
GUARD_BAK="${TOOLS_DIR}/check_release_config_guardrails.sh.test-bak"
COMPARE_BAK="${TOOLS_DIR}/compare_apex_release_state.sh.test-bak"

cleanup() {
  rm -rf "${APP_DIR}" "${RESULT_DIR}"
  rmdir "${ROOT_DIR}/export/ci" 2>/dev/null || true
  for pair in \
    "${IMPORT_BAK}:${TOOLS_DIR}/import_apex_app.sh" \
    "${SQL_BAK}:${TOOLS_DIR}/sql_as.sh" \
    "${GUARD_BAK}:${TOOLS_DIR}/check_release_config_guardrails.sh" \
    "${COMPARE_BAK}:${TOOLS_DIR}/compare_apex_release_state.sh"
  do
    bak="${pair%%:*}"
    dst="${pair#*:}"
    if [[ -f "${bak}" ]]; then
      mv "${bak}" "${dst}"
    fi
  done
}

trap cleanup EXIT

mkdir -p "${APP_DIR}/db" "${APP_DIR}/apex" "${APP_DIR}/docs"
cat > "${APP_DIR}/db/install.sql" <<'SQL'
prompt install
SQL
cat > "${APP_DIR}/db/compile_all.sql" <<'SQL'
prompt compile
SQL

mv "${TOOLS_DIR}/import_apex_app.sh" "${IMPORT_BAK}"
mv "${TOOLS_DIR}/sql_as.sh" "${SQL_BAK}"
mv "${TOOLS_DIR}/check_release_config_guardrails.sh" "${GUARD_BAK}"
mv "${TOOLS_DIR}/compare_apex_release_state.sh" "${COMPARE_BAK}"

cat > "${TOOLS_DIR}/import_apex_app.sh" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "$*" >> /tmp/run_gate_import_calls.log
SH
chmod +x "${TOOLS_DIR}/import_apex_app.sh"

cat > "${TOOLS_DIR}/sql_as.sh" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "$*" >> /tmp/run_gate_sql_calls.log
for arg in "$@"; do
  if [[ "$arg" == *run_gate_mv_fix* ]]; then
    cp "${arg#@}" /tmp/run_gate_mv_fix_captured.sql
  fi
done
if [[ "${*: -2:1}" == "-c" ]]; then
  exit 0
fi
exit 0
SH
chmod +x "${TOOLS_DIR}/sql_as.sh"

cat > "${TOOLS_DIR}/check_release_config_guardrails.sh" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "$*" >> /tmp/run_gate_guardrail_calls.log
SH
chmod +x "${TOOLS_DIR}/check_release_config_guardrails.sh"

cat > "${TOOLS_DIR}/compare_apex_release_state.sh" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
printf '%s\n' "$*" >> /tmp/run_gate_compare_calls.log
SH
chmod +x "${TOOLS_DIR}/compare_apex_release_state.sh"

rm -f /tmp/run_gate_import_calls.log /tmp/run_gate_sql_calls.log /tmp/run_gate_guardrail_calls.log /tmp/run_gate_compare_calls.log /tmp/run_gate_mv_fix_captured.sql

OMX_RUN_ID="${RUN_ID}" RUN_GATE_COMPARE_SOURCE_ENV="dev@oci" RUN_GATE_COMPARE_SOURCE_APP_ID="101" bash "${SCRIPT}" ci "${APP_ID}" deploy

grep -q '^ci 123$' /tmp/run_gate_guardrail_calls.log || {
  printf 'Expected guardrail script to be called with ci 123\n' >&2
  exit 1
}

grep -q '^dev@oci 101 ci 123$' /tmp/run_gate_compare_calls.log || {
  printf 'Expected compare script to be called with dev@oci 101 ci 123\n' >&2
  exit 1
}

grep -q 'alter materialized view apexcn_thread_fs_base_mv compile' /tmp/run_gate_mv_fix_captured.sql || {
  printf 'Expected deploy gate to emit MV compile SQL\n' >&2
  exit 1
}

grep -q "dbms_mview.refresh('APEXCN_THREAD_FS_BASE_MV', 'C')" /tmp/run_gate_mv_fix_captured.sql || {
  printf 'Expected deploy gate to emit MV refresh SQL\n' >&2
  exit 1
}

python3 - "${RESULT_DIR}/summary.json" <<'PY'
import json
import pathlib
import sys

summary = json.loads(pathlib.Path(sys.argv[1]).read_text())
assert summary["status"] == "success", summary
assert summary["executed_gate_actions"] == ["deploy"], summary
PY

printf 'run_gate release checks test passed\n'
