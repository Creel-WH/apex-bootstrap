#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

require_path() {
  local path="$1"
  [[ -e "${ROOT_DIR}/${path}" ]] || {
    printf 'Missing required contract artifact: %s\n' "${path}" >&2
    exit 1
  }
}

require_text() {
  local file="$1"
  local pattern="$2"
  grep -Eq -- "${pattern}" "${ROOT_DIR}/${file}" || {
    printf 'Expected contract pattern not found in %s: %s\n' "${file}" "${pattern}" >&2
    exit 1
  }
}

forbid_text() {
  local file="$1"
  local pattern="$2"
  if grep -Eq -- "${pattern}" "${ROOT_DIR}/${file}"; then
    printf 'Legacy contract pattern found in %s: %s\n' "${file}" "${pattern}" >&2
    exit 1
  fi
}

require_path "docs/decisions/adr-0001-canonical-runtime-contract.md"
require_path "docs/conventions/authority-map.md"
require_path "docs/conventions/evidence-contract.md"
require_path "docs/conventions/secret-credential-injection-map.md"
require_path "tools/run_gate.sh"
require_path "tools/write_ci_conn_json.sh"
require_path "tools/browser_functional.sh"
require_path "tools/browser_functional_apex.sh"
require_path ".codex/skills/apex-bootstrap/references/execution-contract.md"

require_text "README.md" 'adr-0001-canonical-runtime-contract\.md'
require_text "README.md" 'authority-map\.md'
require_text "README.md" '\.conn\.json'
require_text "README.md" 'secret-credential-injection-map\.md'
require_text "docs/conventions/authority-map.md" '\.conn\.json'
require_text "docs/workflows/apex-deployment.md" 'export/<env_alias>/f<APP_ID>/'
require_text "docs/workflows/apex-deployment.md" 'Builder 手工导入后的强制复核'
require_text "docs/workflows/apex-deployment.md" 'compare_apex_release_state\.sh'
require_text "docs/workflows/github-actions-db-ci.md" 'conn\.json'
require_text "docs/workflows/github-actions-db-ci.md" 'browser-functional'
require_text "docs/workflows/github-actions-db-ci.md" 'tools/write_ci_conn_json\.sh'
require_text "docs/workflows/apex-bootstrap-skill-usage.md" 'execution-contract\.md'
require_text ".codex/skills/apex-bootstrap/SKILL.md" 'references/execution-contract\.md'
require_text ".github/workflows/plsql-ci.yml" 'tests/check_contract_drift\.sh'
require_text ".github/workflows/plsql-ci.yml" 'name: Contract gate'
require_text ".github/workflows/plsql-ci.yml" 'name: DB gate'
require_text ".github/workflows/plsql-ci.yml" 'name: Deploy gate'
require_text ".github/workflows/plsql-ci.yml" 'name: Browser gate'
require_text ".github/workflows/plsql-ci.yml" 'name: Browser functional gate'
require_text ".github/workflows/plsql-ci.yml" 'actions/upload-artifact@v4'
require_text ".github/workflows/plsql-ci.yml" 'tools/run_gate\.sh'
require_text ".github/workflows/plsql-ci.yml" 'tools/write_ci_conn_json\.sh'
require_text ".github/workflows/plsql-ci.yml" 'README\.md'

forbid_text "README.md" 'config/\*\.env'
forbid_text "README.md" 'dev\.env|lab\.env'
forbid_text "docs/workflows/apex-deployment.md" 'export/dev/f100'
forbid_text "docs/workflows/apex-deployment.md" 'export/adb/f100'
forbid_text ".github/workflows/plsql-ci.yml" 'QUICKSTART\.md'

exported_credentials="$(
  python3 - "${ROOT_DIR}" <<'PY'
from pathlib import Path
import sys

root = Path(sys.argv[1])
for path in sorted(root.glob("export/*/f*/apex/f*/workspace/credentials/*.sql")):
    print(path.relative_to(root))
PY
)"
if [[ -n "${exported_credentials}" ]]; then
  printf 'APEX split exports must not contain workspace credentials:\n' >&2
  printf '%s\n' "${exported_credentials}" | sed 's/^/  - /' >&2
  exit 1
fi

credential_dependent_authentications="$(
  python3 - "${ROOT_DIR}" <<'PY'
from pathlib import Path
import sys

root = Path(sys.argv[1])
for path in sorted(root.glob("export/*/f*/apex/f*/application/shared_components/security/authentications/*.sql")):
    text = path.read_text(encoding="utf-8", errors="ignore")
    if "p_scheme_type=>'NATIVE_SOCIAL'" in text:
        print(path.relative_to(root))
PY
)"
if [[ -n "${credential_dependent_authentications}" ]]; then
  printf 'APEX split exports must not contain credential-dependent social authentication exports:\n' >&2
  printf '%s\n' "${credential_dependent_authentications}" | sed 's/^/  - /' >&2
  exit 1
fi

printf 'Contract drift checks passed.\n'
