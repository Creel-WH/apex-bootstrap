#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

require_path() {
  local path="$1"
  [[ -e "${ROOT_DIR}/${path}" ]] || {
    printf 'Missing required path: %s\n' "${path}" >&2
    exit 1
  }
}

forbid_path() {
  local path="$1"
  [[ ! -e "${ROOT_DIR}/${path}" ]] || {
    printf 'Legacy path still exists: %s\n' "${path}" >&2
    exit 1
  }
}

require_text() {
  local file="$1"
  local pattern="$2"
  grep -Eq -- "${pattern}" "${ROOT_DIR}/${file}" || {
    printf 'Expected pattern not found in %s: %s\n' "${file}" "${pattern}" >&2
    exit 1
  }
}

require_path "conn.json"
require_path "tools/common.sh"
require_path "tools/export_apex_app.sh"
require_path "tools/export_apex_db.sh"
require_path "tools/oci_ssh.sh"
require_path "tools/oci_docker_exec.sh"
require_path "tools/sql_as.sh"
require_path "tests"
require_path "docs/conventions/repository-layout.md"
require_path "docs/workflows/conn-json-minimal-examples.md"
require_path "docs/workflows/init-new-environment.md"
require_path "docs/workflows/migrate-feature-between-apps.md"
require_path "docs/workflows/oci-instance-and-docker-access.md"
require_path "ai-context.json"
forbid_path "tools/sql_do.sh"
forbid_path "applications"
forbid_path "export/dev"
forbid_path "export/dev.env"
forbid_path ".DS_Store"
forbid_path ".env.example"

forbid_path "01-requirement"
forbid_path "02-design"
forbid_path "03-develop"
forbid_path "04-test"
forbid_path "05-deployment"
forbid_path "06-training"
forbid_path "tools/app"
forbid_path "tools/apex"
forbid_path "tools/db"
forbid_path "tools/lib"
forbid_path "tools/release"

require_text "README.md" 'export/'
require_text "README.md" 'tools/'
require_text "README.md" 'apex_ai\.sh'
require_text "README.md" 'apex_ai\.sh init <env_alias>'
require_text "README.md" 'preferred way.*add environments'
require_text "README.md" 'repair.*environment config'
require_text "README.md" 'apex_ai\.sh check <env_alias>'
require_text "README.md" 'apex_ai\.sh check'
require_text "README.md" 'check <env_alias> --deep'
require_text "README.md" 'check <env_alias> --deep.*verify.*before using export or SQL tooling'
require_text "README.md" 'without an alias'
require_text "README.md" 'all configured environments'
require_text "AGENTS.md" 'export/<env_alias>/f<APP_ID>'
require_text "AGENTS.md" 'dev@oci'
require_text "AGENTS.md" 'Env-only operational helpers'
require_text "AGENTS.md" 'tools/apex_ai\.sh'
require_text "AGENTS.md" 'prefer/suggest .*tools/apex_ai\.sh init <env_alias>'
require_text "AGENTS.md" 'tools/apex_ai\.sh check <env_alias> --deep'
require_text "AGENTS.md" 'add or repair environment config'
require_text "AGENTS.md" 'ai-context\.json'
require_text "docs/workflows/conn-json-minimal-examples.md" 'apex_ai\.sh check <env_alias> --deep'
require_text "docs/workflows/init-new-environment.md" 'tools/apex_ai\.sh init'
require_text "docs/workflows/init-new-environment.md" 'tools/apex_ai\.sh check <env_alias> --deep'
require_text "docs/workflows/init-new-environment.md" 'Answer.*wizard|Answer.*prompts'
require_text "docs/workflows/init-new-environment.md" 'Resolve.*WARN'
require_text "docs/workflows/init-new-environment.md" 'Proceed'
require_text ".github/workflows/plsql-ci.yml" 'tools/sql_as\.sh'
require_text ".github/workflows/apex-export-check.yml" 'export/\*/f\*/application'

printf 'Repository layout checks passed.\n'
