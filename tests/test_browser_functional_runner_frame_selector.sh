#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
RUNNER="${ROOT_DIR}/tools/browser_smoke_runner_playwright.mjs"

if ! node --input-type=module -e "import('playwright')" >/dev/null 2>&1; then
  printf 'browser functional runner frame selector test skipped: playwright package is not installed\n'
  exit 0
fi
TMP_DIR="$(mktemp -d)"
SERVER_LOG="${TMP_DIR}/server.log"
OUT_DIR="${TMP_DIR}/out"
SPEC_FILE="${TMP_DIR}/spec.json"
PORT_FILE="${TMP_DIR}/port.txt"

cleanup() {
  if [[ -n "${SERVER_PID:-}" ]]; then
    kill "${SERVER_PID}" 2>/dev/null || true
    wait "${SERVER_PID}" 2>/dev/null || true
  fi
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

cat > "${TMP_DIR}/index.html" <<'HTML'
<!doctype html>
<html lang="en">
  <body>
    <h1>Frame Test Host</h1>
    <iframe title="Inner Frame" src="/frame.html"></iframe>
  </body>
</html>
HTML

cat > "${TMP_DIR}/frame.html" <<'HTML'
<!doctype html>
<html lang="en">
  <body>
    <label for="title">Title</label>
    <input id="title" />
    <button id="save" type="button">Save</button>
    <div id="result" hidden></div>
    <script>
      document.getElementById('save').addEventListener('click', () => {
        const value = document.getElementById('title').value;
        const result = document.getElementById('result');
        result.hidden = false;
        result.textContent = `Saved: ${value}`;
      });
    </script>
  </body>
</html>
HTML

python3 - <<'PY' > "${PORT_FILE}"
import socket
s = socket.socket()
s.bind(("127.0.0.1", 0))
print(s.getsockname()[1])
s.close()
PY
PORT="$(cat "${PORT_FILE}")"

(
  cd "${TMP_DIR}"
  python3 -m http.server "${PORT}" --bind 127.0.0.1 > "${SERVER_LOG}" 2>&1
) &
SERVER_PID=$!

for _ in {1..20}; do
  if curl -fsS "http://127.0.0.1:${PORT}/index.html" >/dev/null 2>&1; then
    break
  fi
  sleep 0.5
done

cat > "${SPEC_FILE}" <<JSON
{
  "label": "frame-selector-support",
  "url": "http://127.0.0.1:${PORT}/index.html",
  "steps": [
    { "type": "wait_for_selector", "selector": "iframe[title='Inner Frame']" },
    { "type": "fill", "frame_selector": "iframe[title='Inner Frame']", "selector": "#title", "value": "iframe support works" },
    { "type": "click", "frame_selector": "iframe[title='Inner Frame']", "selector": "#save" }
  ],
  "assertions": [
    { "type": "text_visible", "frame_selector": "iframe[title='Inner Frame']", "text": "Saved: iframe support works" }
  ]
}
JSON

node "${RUNNER}" "${SPEC_FILE}" "${OUT_DIR}"

python3 - "${OUT_DIR}/result.json" <<'PY'
import json
import pathlib
import sys

payload = json.loads(pathlib.Path(sys.argv[1]).read_text())
assert payload["status"] == "success", payload
assert payload["message"].startswith("Functional checks passed"), payload
PY

printf 'browser functional runner frame selector test passed\n'
