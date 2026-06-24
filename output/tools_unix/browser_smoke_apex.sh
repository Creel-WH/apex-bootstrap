#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/browser_smoke_apex.sh <env_alias>
  tools/browser_smoke_apex.sh <env_alias> <app_id>
  tools/browser_smoke_apex.sh <env_alias> --label "oci-runtime"
  tools/browser_smoke_apex.sh <env_alias> <app_id> --runtime-app-id 200 --label "target-runtime"

Required conn.json keys for the env alias:
  APEX_BUILDER_LOGIN_URL
  APEX_WORKSPACE
  APEX_BUILDER_USERNAME
  APEX_BUILDER_PASSWORD

Optional conn.json keys:
  APEX_BROWSER_SMOKE_URL
  APEX_BROWSER_EXPECT_TEXT
  APEX_BROWSER_EXPECT_SELECTOR

Optional app-owned browser baseline:
  export/<env_alias>/f<APP_ID>/docs/browser-smoke.json

browser-smoke.json fields:
  url             Required when using an app-owned baseline
  label           Optional
  contains_text   Optional when selector is set
  selector        Optional when contains_text is set

Supported placeholders inside browser-smoke.json:
  {env_alias} {workspace} {app_id} {app_code} {spec_app_id} {spec_app_code}
EOF
}

resolve_browser_smoke_spec_path() {
  local env_alias="$1"
  local spec_app_id="$2"
  local spec_app_code=""
  local spec_path=""

  [[ -n "${spec_app_id}" ]] || return 1

  spec_app_code="$(resolve_app_code_from_app_id "${spec_app_id}")"
  spec_path="${ROOT_DIR}/export/${env_alias}/${spec_app_code}/docs/browser-smoke.json"
  [[ -f "${spec_path}" ]] || return 1

  printf '%s\n' "${spec_path}"
}

load_browser_smoke_spec_values() {
  local spec_path="$1"
  local env_alias="$2"
  local runtime_app_id="$3"
  local spec_app_id="$4"

  python3 - "${spec_path}" "${env_alias}" "${runtime_app_id}" "${spec_app_id}" "${APEX_WORKSPACE:-}" <<'PY'
import json
import pathlib
from urllib.parse import urlsplit, urlunsplit
import sys

spec_path = pathlib.Path(sys.argv[1])
env_alias = sys.argv[2]
runtime_app_id = sys.argv[3]
spec_app_id = sys.argv[4]
workspace = sys.argv[5]
runtime_login_url = ""
if spec_path.exists():
    import os
    runtime_login_url = os.environ.get("APP_RUNTIME_LOGIN_URL", "")

runtime_base_url = ""
runtime_home_url = ""
if runtime_login_url:
    parsed = urlsplit(runtime_login_url)
    base_path = parsed.path.rsplit("/", 1)[0] if "/" in parsed.path else parsed.path
    runtime_base_url = urlunsplit((parsed.scheme, parsed.netloc, base_path, "", ""))
    runtime_home_url = runtime_base_url.rstrip("/") + "/home"

payload = json.loads(spec_path.read_text())
if not isinstance(payload, dict):
    raise SystemExit(f"Browser smoke spec must be a JSON object: {spec_path}")

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
}

def expand(value):
    if value is None:
        return ""
    value = str(value)
    for key, replacement in context.items():
        value = value.replace("{" + key + "}", replacement)
    return value

url = expand(payload.get("url"))
if not url:
    raise SystemExit(f"Browser smoke spec missing required url: {spec_path}")

print(url)
print(expand(payload.get("label")))
print(expand(payload.get("contains_text")))
print(expand(payload.get("selector")))
print("Y" if payload.get("skip_builder_login") else "N")
PY
}

main() {
  local env_alias=""
  local spec_app_id=""
  local runtime_app_id=""
  local label="apex-runtime"
  local label_explicit="0"
  local smoke_url=""
  local expect_text=""
  local expect_selector=""
  local runner=""
  local browser_args=()
  local spec_path=""
  local spec_url=""
  local spec_label=""
  local spec_expect_text=""
  local spec_expect_selector=""
  local spec_skip_builder_login="N"
  local spec_line_number=0

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
  shift

  if [[ "${1:-}" =~ ^[0-9]+$ ]]; then
    spec_app_id="${1}"
    shift
  fi

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --label)
        shift
        label="${1:-}"
        label_explicit="1"
        ;;
      --runtime-app-id)
        shift
        runtime_app_id="${1:-}"
        ;;
      *)
        printf 'Unsupported argument: %s\n' "$1" >&2
        return 1
        ;;
    esac
    shift
  done

  load_env_context "${env_alias}"

  runner="${BROWSER_SMOKE_RUNNER:-${SCRIPT_DIR}/browser_smoke_runner_playwright.sh}"
  runtime_app_id="${runtime_app_id:-${spec_app_id}}"

  if [[ -n "${runtime_app_id}" ]]; then
    resolve_app_code_from_app_id "${runtime_app_id}" >/dev/null
  fi

  if [[ -n "${spec_app_id}" ]]; then
    resolve_app_code_from_app_id "${spec_app_id}" >/dev/null
    spec_path="$(resolve_browser_smoke_spec_path "${env_alias}" "${spec_app_id}" || true)"
  fi

  if [[ -n "${spec_path}" ]]; then
    while IFS= read -r spec_line || [[ -n "${spec_line}" ]]; do
      case "${spec_line_number}" in
        0) spec_url="${spec_line}" ;;
        1) spec_label="${spec_line}" ;;
        2) spec_expect_text="${spec_line}" ;;
        3) spec_expect_selector="${spec_line}" ;;
        4) spec_skip_builder_login="${spec_line}" ;;
      esac
      spec_line_number=$((spec_line_number + 1))
    done < <(load_browser_smoke_spec_values "${spec_path}" "${env_alias}" "${runtime_app_id}" "${spec_app_id}")
  fi

  smoke_url="${spec_url:-${APEX_BROWSER_SMOKE_URL:-}}"
  expect_text="${spec_expect_text:-${APEX_BROWSER_EXPECT_TEXT:-}}"
  expect_selector="${spec_expect_selector:-${APEX_BROWSER_EXPECT_SELECTOR:-}}"

  [[ -n "${smoke_url}" ]] || {
    if [[ -n "${spec_app_id}" ]]; then
      printf 'Set APEX_BROWSER_SMOKE_URL in %s or add export/%s/%s/docs/browser-smoke.json\n' "${APP_CONFIG_FILE}" "${env_alias}" "$(resolve_app_code_from_app_id "${spec_app_id}")" >&2
    else
      printf 'APEX_BROWSER_SMOKE_URL is required in %s when no app-owned browser smoke spec is configured\n' "${APP_CONFIG_FILE}" >&2
    fi
    return 1
  }

  if [[ -z "${expect_text}" && -z "${expect_selector}" ]]; then
    if [[ -n "${spec_path}" ]]; then
      printf 'Set contains_text or selector in %s, or provide env-level APEX_BROWSER_EXPECT_TEXT / APEX_BROWSER_EXPECT_SELECTOR in %s\n' "${spec_path}" "${APP_CONFIG_FILE}" >&2
    else
      printf 'Set APEX_BROWSER_EXPECT_TEXT or APEX_BROWSER_EXPECT_SELECTOR in %s\n' "${APP_CONFIG_FILE}" >&2
    fi
    return 1
  fi

  if [[ "${label_explicit}" != "1" ]]; then
    if [[ -n "${spec_label}" ]]; then
      label="${spec_label}"
    elif [[ -n "${runtime_app_id}" ]]; then
      label="app-${runtime_app_id}-smoke"
    fi
  fi

  browser_args=(
    "${smoke_url}"
    --label "${label}"
  )

  if [[ "${spec_skip_builder_login}" != "Y" ]] && ! is_placeholder_apex_builder_login_url "${APEX_BUILDER_LOGIN_URL:-}"; then
    : "${APEX_BUILDER_USERNAME:?APEX_BUILDER_USERNAME is required in ${APP_CONFIG_FILE} when APEX_BUILDER_LOGIN_URL is set}"
    : "${APEX_BUILDER_PASSWORD:?APEX_BUILDER_PASSWORD is required in ${APP_CONFIG_FILE} when APEX_BUILDER_LOGIN_URL is set}"
    browser_args+=(
      --login-url "${APEX_BUILDER_LOGIN_URL}"
      --workspace "${APEX_WORKSPACE}"
      --username "${APEX_BUILDER_USERNAME}"
      --password "${APEX_BUILDER_PASSWORD}"
    )
  fi

  if [[ -n "${expect_text}" ]]; then
    browser_args+=(--contains-text "${expect_text}")
  fi

  if [[ -n "${expect_selector}" ]]; then
    browser_args+=(--selector "${expect_selector}")
  fi

  BROWSER_SMOKE_RUNNER="${runner}" bash "${SCRIPT_DIR}/browser_smoke.sh" "${browser_args[@]}"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  export OMX_EVIDENCE_ENABLED="${OMX_EVIDENCE_ENABLED:-1}"
  main "$@"
fi
