#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
WORKFLOW="${ROOT_DIR}/.github/workflows/plsql-ci.yml"

require_text() {
  local pattern="$1"
  grep -Eq -- "${pattern}" "${WORKFLOW}" || {
    printf 'Expected CI gate pattern not found: %s\n' "${pattern}" >&2
    exit 1
  }
}

require_text '^  validate-structure:'
require_text '^    name: Contract gate'
require_text '^  db-ci:'
require_text '^    name: DB gate'
require_text '^    needs: validate-structure'
require_text '^  apex-deploy-ci:'
require_text '^    name: Deploy gate'
require_text '^      - db-ci'
require_text 'needs\.db-ci\.result == '\''success'\'''
require_text '^  browser-smoke-ci:'
require_text '^    name: Browser gate'
require_text '^      - apex-deploy-ci'
require_text 'needs\.apex-deploy-ci\.result == '\''success'\'''
require_text '^  browser-functional-ci:'
require_text '^    name: Browser functional gate'
require_text '^      - browser-smoke-ci'
require_text 'needs\.browser-smoke-ci\.result == '\''success'\'''
require_text 'contract-gate-evidence'
require_text 'db-gate-evidence'
require_text 'deploy-gate-evidence'
require_text 'browser-gate-evidence'
require_text 'browser-functional-gate-evidence'
require_text 'tools/run_gate\.sh "\$\{TARGET_ENV\}" "\$\{app_id\}" db'
require_text 'tools/run_gate\.sh "\$\{TARGET_ENV\}" "\$\{source_app_id\}" deploy'
require_text 'tools/run_gate\.sh "\$\{TARGET_ENV\}" "\$\{app_id\}" browser'
require_text 'tools/run_gate\.sh "\$\{TARGET_ENV\}" "\$\{app_id\}" browser-functional'

printf 'CI gate layering checks passed.\n'
