#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/browser_smoke.sh"
RUN_ID="test-browser-smoke-failure"
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
payload = {
    "status": "failure",
    "message": f"Missing expected text on {spec['url']}",
    "attachments": [],
}
(out_dir / "result.json").write_text(json.dumps(payload, indent=2) + "\n")
PY
exit 1
SH
chmod +x "${RUNNER}"

if OMX_RUN_ID="${RUN_ID}" BROWSER_SMOKE_RUNNER="${RUNNER}" bash "${SCRIPT}" "http://example.test" --selector "#app" --label "login"; then
  printf 'Expected browser_smoke to fail\n' >&2
  exit 1
fi

python3 - "${RESULT_DIR}/browser/summary.json" <<'PY'
import json
import pathlib
import sys

path = pathlib.Path(sys.argv[1])
assert path.exists(), "missing browser summary"
summary = json.loads(path.read_text())
assert summary["status"] == "failure", summary
assert summary["action"] == "smoke", summary
assert summary["target"] == "login:http://example.test", summary
PY

printf 'browser smoke failure summary test passed\n'
