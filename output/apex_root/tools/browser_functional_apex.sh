#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/browser_functional_apex.sh <env_alias> <app_id>
  tools/browser_functional_apex.sh <env_alias> <app_id> --runtime-app-id 200
  tools/browser_functional_apex.sh <env_alias> <app_id> --runtime-app-id 200 --label "target-functional"

Required conn.json keys for the env alias:
  APEX_BUILDER_LOGIN_URL
  APEX_WORKSPACE
  APEX_BUILDER_USERNAME
  APEX_BUILDER_PASSWORD

Required app-owned functional baseline:
  export/<env_alias>/f<APP_ID>/docs/browser-functional.json

Supported placeholders inside browser-functional.json:
  {env_alias} {workspace} {app_id} {app_code} {spec_app_id} {spec_app_code}
  {runtime_login_url} {runtime_login_username} {runtime_login_password}
EOF
}

resolve_browser_functional_spec_path() {
  local env_alias="$1"
  local spec_app_id="$2"
  local spec_app_code=""
  local spec_path=""

  spec_app_code="$(resolve_app_code_from_app_id "${spec_app_id}")"
  spec_path="${ROOT_DIR}/export/${env_alias}/${spec_app_code}/docs/browser-functional.json"
  [[ -f "${spec_path}" ]] || {
    printf 'Missing browser functional spec: %s\n' "${spec_path}" >&2
    return 1
  }

  printf '%s\n' "${spec_path}"
}

render_browser_functional_spec() {
  local spec_path="$1"
  local rendered_path="$2"
  local env_alias="$3"
  local runtime_app_id="$4"
  local spec_app_id="$5"

  python3 - "${spec_path}" "${rendered_path}" "${env_alias}" "${runtime_app_id}" "${spec_app_id}" "${APEX_WORKSPACE:-}" <<'PY'
import json
import os
import pathlib
from urllib.parse import urlsplit, urlunsplit
import sys

source = pathlib.Path(sys.argv[1])
destination = pathlib.Path(sys.argv[2])
env_alias = sys.argv[3]
runtime_app_id = sys.argv[4]
spec_app_id = sys.argv[5]
workspace = sys.argv[6]
runtime_login_url = os.environ.get("APP_RUNTIME_LOGIN_URL", "")

runtime_base_url = ""
runtime_home_url = ""
if runtime_login_url:
    parsed = urlsplit(runtime_login_url)
    base_path = parsed.path.rsplit("/", 1)[0] if "/" in parsed.path else parsed.path
    runtime_base_url = urlunsplit((parsed.scheme, parsed.netloc, base_path, "", ""))
    runtime_home_url = runtime_base_url.rstrip("/") + "/home"

payload = json.loads(source.read_text())
if not isinstance(payload, dict):
    raise SystemExit(f"Browser functional spec must be a JSON object: {source}")

runtime_app_code = f"f{runtime_app_id}" if runtime_app_id else ""
spec_app_code = f"f{spec_app_id}" if spec_app_id else ""
context = {
    "env_alias": env_alias,
    "workspace": workspace,
    "app_id": runtime_app_id,
    "app_code": runtime_app_code,
    "spec_app_id": spec_app_id,
    "spec_app_code": spec_app_code,
    "runtime_login_url": runtime_login_url,
    "runtime_base_url": runtime_base_url,
    "runtime_home_url": runtime_home_url,
    "runtime_login_username": os.environ.get("APP_RUNTIME_LOGIN_USERNAME", ""),
    "runtime_login_password": os.environ.get("APP_RUNTIME_LOGIN_PASSWORD", ""),
    "apex_builder_username": os.environ.get("APEX_BUILDER_USERNAME", ""),
    "apex_builder_password": os.environ.get("APEX_BUILDER_PASSWORD", ""),
}

def expand(value):
    if isinstance(value, str):
        for key, replacement in context.items():
            value = value.replace("{" + key + "}", replacement)
        return value
    if isinstance(value, list):
        return [expand(item) for item in value]
    if isinstance(value, dict):
        return {key: expand(item) for key, item in value.items()}
    return value

rendered = expand(payload)
if not rendered.get("url"):
    raise SystemExit(f"Browser functional spec missing required url: {source}")

destination.write_text(json.dumps(rendered, indent=2) + "\n")
PY
}

main() {
  local env_alias=""
  local spec_app_id=""
  local runtime_app_id=""
  local label=""
  local rendered_spec=""
  local spec_path=""
  local skip_builder_login="0"

  [[ $# -gt 0 ]] || {
    usage
    exit 1
  }

  case "${1:-}" in
    -h|--help)
      usage
      exit 0
      ;;
  esac

  env_alias="${1:-}"
  spec_app_id="${2:-}"
  shift 2

  [[ "${spec_app_id}" =~ ^[0-9]+$ ]] || {
    printf 'App id must be numeric: %s\n' "${spec_app_id}" >&2
    return 1
  }

  runtime_app_id="${spec_app_id}"

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --runtime-app-id)
        shift
        runtime_app_id="${1:-}"
        ;;
      --label)
        shift
        label="${1:-}"
        ;;
      *)
        printf 'Unsupported argument: %s\n' "$1" >&2
        return 1
        ;;
    esac
    shift
  done

  resolve_app_code_from_app_id "${runtime_app_id}" >/dev/null
  load_env_context "${env_alias}"

  spec_path="$(resolve_browser_functional_spec_path "${env_alias}" "${spec_app_id}")"
  rendered_spec="$(mktemp "${TMPDIR:-/tmp}/browser-functional-apex.XXXXXX")"
  trap 'rm -f "${rendered_spec:-}"' EXIT
  render_browser_functional_spec "${spec_path}" "${rendered_spec}" "${env_alias}" "${runtime_app_id}" "${spec_app_id}"
  skip_builder_login="$(python3 - "${rendered_spec}" <<'PY'
import json
import pathlib
import sys
spec = json.loads(pathlib.Path(sys.argv[1]).read_text())
print("1" if spec.get("skip_builder_login") else "0")
PY
)"

  local login_configured="0"
  if [[ "${skip_builder_login}" != "1" ]] && ! is_placeholder_apex_builder_login_url "${APEX_BUILDER_LOGIN_URL:-}"; then
    : "${APEX_BUILDER_USERNAME:?APEX_BUILDER_USERNAME is required in ${APP_CONFIG_FILE} when APEX_BUILDER_LOGIN_URL is set}"
    : "${APEX_BUILDER_PASSWORD:?APEX_BUILDER_PASSWORD is required in ${APP_CONFIG_FILE} when APEX_BUILDER_LOGIN_URL is set}"
    login_configured="1"
  fi

  if [[ -n "${label}" ]]; then
    if [[ "${login_configured}" == "1" ]]; then
      BROWSER_FUNCTIONAL_RUNNER="${BROWSER_FUNCTIONAL_RUNNER:-${SCRIPT_DIR}/browser_smoke_runner_playwright.sh}" \
        bash "${SCRIPT_DIR}/browser_functional.sh" "${rendered_spec}" \
        --label "${label}" \
        --login-url "${APEX_BUILDER_LOGIN_URL}" \
        --workspace "${APEX_WORKSPACE}" \
        --username "${APEX_BUILDER_USERNAME}" \
        --password "${APEX_BUILDER_PASSWORD}"
      return
    fi

    BROWSER_FUNCTIONAL_RUNNER="${BROWSER_FUNCTIONAL_RUNNER:-${SCRIPT_DIR}/browser_smoke_runner_playwright.sh}" \
      bash "${SCRIPT_DIR}/browser_functional.sh" "${rendered_spec}" \
      --label "${label}"
    return
  fi

  if [[ "${login_configured}" == "1" ]]; then
    BROWSER_FUNCTIONAL_RUNNER="${BROWSER_FUNCTIONAL_RUNNER:-${SCRIPT_DIR}/browser_smoke_runner_playwright.sh}" \
      bash "${SCRIPT_DIR}/browser_functional.sh" "${rendered_spec}" \
      --login-url "${APEX_BUILDER_LOGIN_URL}" \
      --workspace "${APEX_WORKSPACE}" \
      --username "${APEX_BUILDER_USERNAME}" \
      --password "${APEX_BUILDER_PASSWORD}"
    return
  fi

  BROWSER_FUNCTIONAL_RUNNER="${BROWSER_FUNCTIONAL_RUNNER:-${SCRIPT_DIR}/browser_smoke_runner_playwright.sh}" \
    bash "${SCRIPT_DIR}/browser_functional.sh" "${rendered_spec}"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  export OMX_EVIDENCE_ENABLED="${OMX_EVIDENCE_ENABLED:-1}"
  main "$@"
fi
