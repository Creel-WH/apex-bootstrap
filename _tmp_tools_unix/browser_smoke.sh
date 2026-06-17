#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/browser_smoke.sh <url> --contains-text "Ready"
  tools/browser_smoke.sh <url> --contains-text "Ready" --label "health"
  tools/browser_smoke.sh <url> --selector "#app" --label "login-page"
  tools/browser_smoke.sh <url> --contains-text "Ready" --login-url <url> --workspace dev --username admin --password '***'

Environment:
  BROWSER_SMOKE_RUNNER   Executable that receives: <spec_json_path> <output_dir>
EOF
}

build_command_text() {
  local text="tools/browser_smoke.sh"
  local arg
  local previous=""

  for arg in "$@"; do
    if [[ "${previous}" == "--password" ]]; then
      arg='***REDACTED***'
    fi
    printf -v text '%s %q' "${text}" "${arg}"
    previous="${arg}"
  done

  printf '%s\n' "${text}"
}

write_browser_summary() {
  local action="$1"
  local status="$2"
  local target="$3"
  local message="$4"
  local command_text="$5"
  local result_json="${6:-}"

  initialize_evidence_context "browser_smoke.sh" || return 0

  python3 - "${OMX_BROWSER_RESULTS_DIR}/summary.json" "${OMX_BROWSER_RESULTS_DIR}/smoke.summary.json" "$action" "$status" "$target" "$message" "$command_text" "$result_json" <<'PY'
import json
import os
import pathlib
import sys

summary_destination = pathlib.Path(sys.argv[1])
smoke_destination = pathlib.Path(sys.argv[2])
action = sys.argv[3]
status = sys.argv[4]
target = sys.argv[5]
message = sys.argv[6]
command_text = sys.argv[7]
result_json = sys.argv[8]

attachments = []
runner_message = None
if result_json:
    payload = json.loads(pathlib.Path(result_json).read_text())
    attachments = payload.get("attachments") or []
    runner_message = payload.get("message")

summary = {
    "run_id": os.environ.get("OMX_RUN_ID"),
    "category": "browser",
    "script_name": os.environ.get("OMX_SCRIPT_NAME"),
    "status": status,
    "action": action,
    "target": target or None,
    "command": command_text or None,
    "message": message or runner_message,
    "attachments": attachments,
    "results_dir": os.environ.get("OMX_RESULTS_DIR"),
}

serialized = json.dumps(summary, indent=2) + "\n"
summary_destination.write_text(serialized)
smoke_destination.write_text(serialized)
PY

  write_evidence_run_summary
}

main() {
  local url=""
  local contains_text=""
  local selector=""
  local label="smoke"
  local runner="${BROWSER_SMOKE_RUNNER:-}"
  local login_url=""
  local workspace=""
  local username=""
  local password=""
  local command_text=""
  local spec_file=""
  local runner_output_dir=""
  local runner_result_json=""
  local target_label=""
  local original_args=("$@")

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

  url="${1:-}"
  shift
  command_text="$(build_command_text "${original_args[@]}")"

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --contains-text)
        shift
        contains_text="${1:-}"
        ;;
      --selector)
        shift
        selector="${1:-}"
        ;;
      --label)
        shift
        label="${1:-}"
        ;;
      --login-url)
        shift
        login_url="${1:-}"
        ;;
      --workspace)
        shift
        workspace="${1:-}"
        ;;
      --username)
        shift
        username="${1:-}"
        ;;
      --password)
        shift
        password="${1:-}"
        ;;
      *)
        printf 'Unsupported argument: %s\n' "$1" >&2
        return 1
        ;;
    esac
    shift
  done

  [[ -n "${url}" ]] || {
    printf 'Missing target URL.\n' >&2
    return 1
  }

  [[ -n "${contains_text}" || -n "${selector}" ]] || {
    printf 'Provide at least one expectation: --contains-text or --selector.\n' >&2
    return 1
  }

  [[ -n "${runner}" ]] || {
    printf 'BROWSER_SMOKE_RUNNER is required.\n' >&2
    return 1
  }

  initialize_evidence_context "browser_smoke.sh" || true

  spec_file="$(mktemp "${TMPDIR:-/tmp}/browser-smoke-spec.XXXXXX")"
  runner_output_dir="${OMX_BROWSER_RESULTS_DIR}/runner"
  runner_result_json="${runner_output_dir}/result.json"
  target_label="${label}:${url}"
  mkdir -p "${runner_output_dir}"
  trap 'rm -f "${spec_file:-}"' EXIT

  python3 - "${spec_file}" "$url" "$contains_text" "$selector" "$label" "$login_url" "$workspace" "$username" "$password" <<'PY'
import json
import pathlib
import sys

spec = {
    "url": sys.argv[2],
    "contains_text": sys.argv[3] or None,
    "selector": sys.argv[4] or None,
    "label": sys.argv[5] or "smoke",
    "login_url": sys.argv[6] or None,
    "workspace": sys.argv[7] or None,
    "username": sys.argv[8] or None,
    "password": sys.argv[9] or None,
}

pathlib.Path(sys.argv[1]).write_text(json.dumps(spec, indent=2) + "\n")
PY

  if "${runner}" "${spec_file}" "${runner_output_dir}"; then
    write_evidence_summary "contract" "smoke" "success" "${target_label}" "" "${command_text}"
    write_browser_summary "smoke" "success" "${target_label}" "" "${command_text}" "${runner_result_json}"
    return 0
  fi

  write_evidence_summary "contract" "smoke" "failure" "${target_label}" "Browser smoke runner failed" "${command_text}"
  write_browser_summary "smoke" "failure" "${target_label}" "Browser smoke runner failed" "${command_text}" "${runner_result_json}"
  return 1
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  export OMX_EVIDENCE_ENABLED="${OMX_EVIDENCE_ENABLED:-1}"
  main "$@"
fi
