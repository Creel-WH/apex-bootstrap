#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/browser_functional.sh <spec_json_path>
  tools/browser_functional.sh <spec_json_path> --label "app-home-functional"
  tools/browser_functional.sh <spec_json_path> --login-url <url> --workspace dev --username admin --password '***'

Environment:
  BROWSER_FUNCTIONAL_RUNNER   Executable that receives: <spec_json_path> <output_dir>
EOF
}

build_command_text() {
  local text="tools/browser_functional.sh"
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

write_browser_functional_summary() {
  local status="$1"
  local target="$2"
  local message="$3"
  local command_text="$4"
  local result_json="${5:-}"

  initialize_evidence_context "browser_functional.sh" || return 0

  python3 - "${OMX_BROWSER_RESULTS_DIR}/summary.json" "${OMX_BROWSER_RESULTS_DIR}/functional.summary.json" "$status" "$target" "$message" "$command_text" "$result_json" <<'PY'
import json
import os
import pathlib
import sys

summary_path = pathlib.Path(sys.argv[1])
functional_path = pathlib.Path(sys.argv[2])
status = sys.argv[3]
target = sys.argv[4]
message = sys.argv[5]
command_text = sys.argv[6]
result_json = sys.argv[7]

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
    "action": "functional",
    "target": target or None,
    "command": command_text or None,
    "message": message or runner_message,
    "attachments": attachments,
    "results_dir": os.environ.get("OMX_RESULTS_DIR"),
}

serialized = json.dumps(summary, indent=2) + "\n"
summary_path.write_text(serialized)
functional_path.write_text(serialized)
PY

  write_evidence_run_summary
}

main() {
  local spec_json_path=""
  local runner="${BROWSER_FUNCTIONAL_RUNNER:-}"
  local label=""
  local login_url=""
  local workspace=""
  local username=""
  local password=""
  local command_text=""
  local merged_spec_file=""
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

  spec_json_path="${1:-}"
  shift
  command_text="$(build_command_text "${original_args[@]}")"

  while [[ $# -gt 0 ]]; do
    case "$1" in
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

  [[ -f "${spec_json_path}" ]] || {
    printf 'Missing browser functional spec: %s\n' "${spec_json_path}" >&2
    return 1
  }

  [[ -n "${runner}" ]] || {
    printf 'BROWSER_FUNCTIONAL_RUNNER is required.\n' >&2
    return 1
  }

  initialize_evidence_context "browser_functional.sh" || true

  merged_spec_file="$(mktemp "${TMPDIR:-/tmp}/browser-functional-spec.XXXXXX")"
  runner_output_dir="${OMX_BROWSER_RESULTS_DIR}/runner"
  runner_result_json="${runner_output_dir}/result.json"
  mkdir -p "${runner_output_dir}"
  trap 'rm -f "${merged_spec_file:-}"' EXIT

  python3 - "${spec_json_path}" "${merged_spec_file}" "${label}" "${login_url}" "${workspace}" "${username}" "${password}" <<'PY'
import json
import pathlib
import sys

source = pathlib.Path(sys.argv[1])
destination = pathlib.Path(sys.argv[2])
label = sys.argv[3]
login_url = sys.argv[4]
workspace = sys.argv[5]
username = sys.argv[6]
password = sys.argv[7]

spec = json.loads(source.read_text())
if not isinstance(spec, dict):
    raise SystemExit(f"Browser functional spec must be a JSON object: {source}")

if label:
    spec["label"] = label

if login_url:
    spec["login_url"] = login_url
if workspace:
    spec["workspace"] = workspace
if username:
    spec["username"] = username
if password:
    spec["password"] = password

spec["mode"] = "functional"

if not spec.get("url"):
    raise SystemExit(f"Browser functional spec missing required url: {source}")

if not spec.get("steps"):
    raise SystemExit(f"Browser functional spec missing steps: {source}")

if not spec.get("assertions"):
    raise SystemExit(f"Browser functional spec missing assertions: {source}")

destination.write_text(json.dumps(spec, indent=2) + "\n")
PY

  target_label="$(python3 - "${merged_spec_file}" <<'PY'
import json
import pathlib
import sys

spec = json.loads(pathlib.Path(sys.argv[1]).read_text())
label = spec.get("label") or "functional"
print(f"{label}:{spec['url']}")
PY
)"

  if "${runner}" "${merged_spec_file}" "${runner_output_dir}"; then
    write_evidence_summary_file "contract" "functional.summary.json" "functional" "success" "${target_label}" "" "${command_text}"
    write_evidence_summary "contract" "functional" "success" "${target_label}" "" "${command_text}"
    write_browser_functional_summary "success" "${target_label}" "" "${command_text}" "${runner_result_json}"
    return 0
  fi

  write_evidence_summary_file "contract" "functional.summary.json" "functional" "failure" "${target_label}" "Browser functional runner failed" "${command_text}"
  write_evidence_summary "contract" "functional" "failure" "${target_label}" "Browser functional runner failed" "${command_text}"
  write_browser_functional_summary "failure" "${target_label}" "Browser functional runner failed" "${command_text}" "${runner_result_json}"
  return 1
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  export OMX_EVIDENCE_ENABLED="${OMX_EVIDENCE_ENABLED:-1}"
  main "$@"
fi
