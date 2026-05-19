#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/browser_functional.sh"
SPEC_FILE="$(mktemp)"
RUNNER="$(mktemp)"
CAPTURE_FILE="$(mktemp)"

cleanup() {
  rm -f "${SPEC_FILE}" "${RUNNER}" "${CAPTURE_FILE}"
}

trap cleanup EXIT

cat > "${SPEC_FILE}" <<'JSON'
{
  "label": "missing-steps",
  "url": "https://example.test/ords/r/workspace/app/home",
  "assertions": [
    { "type": "selector_visible", "selector": "#dialog" }
  ]
}
JSON

cat > "${RUNNER}" <<'SHRUNNER'
#!/usr/bin/env bash
exit 0
SHRUNNER
chmod +x "${RUNNER}"

set +e
BROWSER_FUNCTIONAL_RUNNER="${RUNNER}" bash "${SCRIPT}" "${SPEC_FILE}" >"${CAPTURE_FILE}" 2>&1
status=$?
set -e

output="$(<"${CAPTURE_FILE}")"

if [[ "${status}" -eq 0 || "${output}" != *'Browser functional spec missing steps'* ]]; then
  printf 'Expected browser functional missing steps failure, got (%s): %s\n' "${status}" "${output}" >&2
  exit 1
fi

printf 'browser functional requires steps test passed\n'
