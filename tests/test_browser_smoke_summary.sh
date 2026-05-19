#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/browser_smoke.sh"
RUN_ID="test-browser-smoke-success"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
RUNNER="$(mktemp)"

cleanup() {
  rm -rf "${RESULT_DIR}"
  rm -f "${RUNNER}"
}

trap cleanup EXIT

cat > "${RUNNER}" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
spec="$1"
out_dir="$2"
mkdir -p "${out_dir}"
python3 - "${spec}" "${out_dir}" <<'PY'
import json
import pathlib
import sys

spec = json.loads(pathlib.Path(sys.argv[1]).read_text())
out_dir = pathlib.Path(sys.argv[2])
screenshot = out_dir / "page.png"
screenshot.write_bytes(b"fake-png")

payload = {
    "status": "success",
    "message": f"Opened {spec['url']}",
    "attachments": [str(screenshot)],
}
(out_dir / "result.json").write_text(json.dumps(payload, indent=2) + "\n")
PY
SH
chmod +x "${RUNNER}"

OMX_RUN_ID="${RUN_ID}" BROWSER_SMOKE_RUNNER="${RUNNER}" bash "${SCRIPT}" "http://example.test" --contains-text "Ready" --label "health"

python3 - "${RESULT_DIR}/summary.json" "${RESULT_DIR}/browser/summary.json" <<'PY'
import json
import pathlib
import sys

run_path = pathlib.Path(sys.argv[1])
path = pathlib.Path(sys.argv[2])
assert run_path.exists(), "missing run summary"
assert path.exists(), "missing browser summary"
run = json.loads(run_path.read_text())
summary = json.loads(path.read_text())
assert run["status"] == "success", run
assert run["executed_gates"] == ["contract", "browser"], run
assert run["gates"]["browser"]["status"] == "success", run
assert "browser/summary.json" in run["artifacts"], run
assert summary["status"] == "success", summary
assert summary["action"] == "smoke", summary
assert summary["target"] == "health:http://example.test", summary
assert summary["attachments"], summary
PY

printf 'browser smoke summary test passed\n'
