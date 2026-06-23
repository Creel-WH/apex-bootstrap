#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

apex_ai_usage() {
  cat <<'EOF'
Usage:
  tools/apex_ai.sh init <env_alias> [direct|tns]
  tools/apex_ai.sh check [<env_alias>] [--deep] [--json]
  tools/apex_ai.sh sql-check <env_alias> [app_id] [--json]
  tools/apex_ai.sh usql-check <env_alias> [--json]
  tools/apex_ai.sh feature-start <env_alias> [app_id] <feature-slug> <business-goal> <acceptance-criteria>
  tools/apex_ai.sh feature-analyze <impacted-pages> <impacted-db-objects>
  tools/apex_ai.sh feature-confirm <confirmed-pages> <confirmed-db-objects>
  tools/apex_ai.sh feature-next
  tools/apex_ai.sh feature-status
  tools/apex_ai.sh task-state <status> [--connectivity <stage-status>] [--scope-confirmation <stage-status>] [--implementation <stage-status>] [--verification <stage-status>] [--delivery <stage-status>]
  tools/apex_ai.sh gate <env_alias> [app_id] <contract|db|deploy|browser|browser-functional|all>
  tools/apex_ai.sh export-app <env_alias> [app_id] [nodb]
  tools/apex_ai.sh export-page <env_alias> [app_id] <page_id>
  tools/apex_ai.sh import-app <source_env_alias> [source_app_id] [target_env_alias] [target_app_id]
  tools/apex_ai.sh import-page <env_alias> [source_app_id] <page_id> [target_app_id] [target_page_id]
  tools/apex_ai.sh rebuild-test-from-single-sql <source_app_id> <target_app_id>
  tools/apex_ai.sh app-version <list|show|set|tag> [...]
EOF
}

apex_ai_init_usage() {
  cat <<'EOF'
Usage:
  tools/apex_ai.sh init <env_alias> [direct|tns]

Modes:
  direct  Direct host, port, service, username, and password values
  tns     TNS alias plus wallet/TNS admin metadata

Examples:
  tools/apex_ai.sh init dev@oci direct
  tools/apex_ai.sh init dev@adb tns
EOF
}

status_rank() {
  case "${1:-FAIL}" in
    OK) printf '0\n' ;;
    WARN) printf '1\n' ;;
    FAIL) printf '2\n' ;;
    *) printf '2\n' ;;
  esac
}

merge_status() {
  local left="${1:-OK}"
  local right="${2:-OK}"

  if [[ "$(status_rank "${right}")" -gt "$(status_rank "${left}")" ]]; then
    printf '%s\n' "${right}"
    return 0
  fi

  printf '%s\n' "${left}"
}

status_exit_code() {
  status_rank "$1"
}

capture_failure() {
  local output_file
  local status

  output_file="$(mktemp "${TMPDIR:-/tmp}/apex-ai.XXXXXX")"

  set +e
  "$@" >/dev/null 2>"${output_file}"
  status=$?
  set -e

  APEX_AI_CAPTURED_ERROR="$(trim "$(tr '\n' ' ' < "${output_file}")")"
  rm -f "${output_file}"
  return "${status}"
}

ai_context_file() {
  printf '%s\n' "${AI_CONTEXT_FILE:-${ROOT_DIR}/ai-context.json}"
}

ensure_ai_context_file() {
  local file=""

  file="$(ai_context_file)"
  [[ -f "${file}" ]] || {
    printf 'Missing ai-context file: %s\n' "${file}" >&2
    return 1
  }
}

normalize_task_status() {
  local status=""

  status="$(printf '%s' "${1:-}" | tr '[:lower:]' '[:upper:]')"
  case "${status}" in
    NEW|CONFIRM|IMPLEMENTING|TESTED|DONE)
      printf '%s\n' "${status}"
      ;;
    *)
      printf 'Unsupported task status: %s\n' "${1:-}" >&2
      return 1
      ;;
  esac
}

normalize_stage_status() {
  local status=""

  status="$(printf '%s' "${1:-}" | tr '[:lower:]' '[:upper:]')"
  case "${status}" in
    PENDING|IN_PROGRESS|PASSED|FAILED)
      printf '%s\n' "${status}"
      ;;
    *)
      printf 'Unsupported stage status: %s\n' "${1:-}" >&2
      return 1
      ;;
  esac
}

normalize_gate_name() {
  case "${1:-}" in
    contract|db|deploy|browser|browser-functional|all)
      printf '%s\n' "${1}"
      ;;
    *)
      printf 'Unsupported gate: %s\n' "${1:-}" >&2
      return 1
      ;;
  esac
}

normalize_feature_slug() {
  python3 - "${1:-}" <<'PY'
import re
import sys

raw = sys.argv[1].strip().lower()
slug = re.sub(r"[^a-z0-9]+", "-", raw).strip("-")

if not slug:
    raise SystemExit(1)

print(slug)
PY
}

feature_file_date() {
  if [[ -n "${APEX_AI_FEATURE_DATE:-}" ]]; then
    printf '%s\n' "${APEX_AI_FEATURE_DATE}"
    return 0
  fi

  date +%F
}

build_feature_file_path() {
  local env_alias="$1"
  local app_id="$2"
  local slug="$3"
  local app_code=""

  app_code="$(resolve_app_code_from_app_id "${app_id}")" || return 1
  printf '%s/export/%s/%s/docs/%s-%s.md\n' \
    "${ROOT_DIR}" \
    "${env_alias}" \
    "${app_code}" \
    "$(feature_file_date)" \
    "${slug}"
}

format_feature_title() {
  python3 - "${1:-}" <<'PY'
import sys

slug = sys.argv[1]
print(" ".join(part.capitalize() for part in slug.split("-") if part))
PY
}

create_feature_markdown() {
  local file="$1"
  local slug="$2"
  local business_goal="$3"
  local acceptance_criteria="$4"

  mkdir -p "$(dirname "${file}")"

  [[ ! -f "${file}" ]] || return 0

  python3 - "${file}" "${slug}" "${business_goal}" "${acceptance_criteria}" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
slug = sys.argv[2]
goal = sys.argv[3]
acceptance = sys.argv[4]
title = " ".join(part.capitalize() for part in slug.split("-") if part)

path.write_text(
    f"""# {title}

## Request
- Original Request: {goal}
- AI Summary: {goal}
- Business Goal: {goal}
- Acceptance Criteria: {acceptance}

## Execution Plan
- Impacted Pages (AI Proposed):
- Impacted DB Objects (AI Proposed):
- Confirmed Pages:
- Confirmed DB Objects:
- Planned Steps:

## Implementation Log
- Changes Made:
- Updated Files:
- Updated DB Objects:
- Updated Page Docs:
- Updated Browser Specs:

## Verification
- Connectivity Check:
- DB / APEX Check:
- Deploy Result:
- Browser Smoke:
- Browser Functional:
- Evidence Paths:
- Manual Verification Entry:

## Current Status
- Status: NEW
- Current Step:
- Open Issues:
- Next Action:
- Resume Notes:
""",
    encoding="utf-8",
)
PY
}

sync_feature_markdown_current_status() {
  local ai_context=""

  ai_context="$(ai_context_file)"
  ensure_ai_context_file || return 1

  python3 - "${ai_context}" <<'PY'
import json
import pathlib
import re
import sys

path = pathlib.Path(sys.argv[1])
ctx = json.loads(path.read_text())
current = ctx.get("current_task") or {}
feature_file = current.get("feature_file") or ""

if not feature_file:
    raise SystemExit(0)

feature_path = pathlib.Path(feature_file)
if not feature_path.exists():
    raise SystemExit(0)

status = current.get("status", "NEW")
stage_status = current.get("stage_status") or {}
stage_summary = ", ".join(f"{key}={value}" for key, value in stage_status.items())

if status == "DONE":
    next_action = "Optional manual browser-based final verification by developer."
elif status == "CONFIRM":
    next_action = "Wait for developer confirmation of impacted pages and DB objects."
else:
    next_action = "Continue implementation and verification until DONE."

failed = [key for key, value in stage_status.items() if value == "FAILED"]
open_issues = ", ".join(failed) if failed else "None"

section = (
    "## Current Status\n"
    f"- Status: {status}\n"
    f"- Current Step: {stage_summary}\n"
    f"- Open Issues: {open_issues}\n"
    f"- Next Action: {next_action}\n"
    "- Resume Notes: Authoritative state: ai-context.json\n"
)

text = feature_path.read_text(encoding="utf-8")
pattern = re.compile(r"^## Current Status\\n.*\\Z", re.MULTILINE | re.DOTALL)
if pattern.search(text):
    text = pattern.sub(section, text)
else:
    if not text.endswith("\n"):
        text += "\n"
    text += "\n" + section

feature_path.write_text(text, encoding="utf-8")
PY
}

sync_feature_markdown_scope_confirmation() {
  local ai_context=""

  ai_context="$(ai_context_file)"
  ensure_ai_context_file || return 1

  python3 - "${ai_context}" <<'PY'
import json
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
ctx = json.loads(path.read_text())
current = ctx.get("current_task") or {}
feature_file = current.get("feature_file") or ""

if not feature_file:
    raise SystemExit(0)

feature_path = Path(feature_file)
if not feature_path.exists():
    raise SystemExit(0)

confirmed_pages = current.get("confirmed_pages", "")
confirmed_db_objects = current.get("confirmed_db_objects", "")
text = feature_path.read_text(encoding="utf-8")

text = re.sub(r"^- Confirmed Pages:.*$", f"- Confirmed Pages: {confirmed_pages}", text, flags=re.MULTILINE)
text = re.sub(r"^- Confirmed DB Objects:.*$", f"- Confirmed DB Objects: {confirmed_db_objects}", text, flags=re.MULTILINE)

feature_path.write_text(text, encoding="utf-8")
PY
}

sync_feature_markdown_analysis() {
  local ai_context=""

  ai_context="$(ai_context_file)"
  ensure_ai_context_file || return 1

  python3 - "${ai_context}" <<'PY'
import json
from pathlib import Path
import re
import sys

path = Path(sys.argv[1])
ctx = json.loads(path.read_text())
current = ctx.get("current_task") or {}
feature_file = current.get("feature_file") or ""

if not feature_file:
    raise SystemExit(0)

feature_path = Path(feature_file)
if not feature_path.exists():
    raise SystemExit(0)

proposed_pages = current.get("proposed_pages", "")
proposed_db_objects = current.get("proposed_db_objects", "")
text = feature_path.read_text(encoding="utf-8")

text = re.sub(r"^- Impacted Pages \(AI Proposed\):.*$", f"- Impacted Pages (AI Proposed): {proposed_pages}", text, flags=re.MULTILINE)
text = re.sub(r"^- Impacted DB Objects \(AI Proposed\):.*$", f"- Impacted DB Objects (AI Proposed): {proposed_db_objects}", text, flags=re.MULTILINE)

feature_path.write_text(text, encoding="utf-8")
PY
}

append_feature_markdown_section_line() {
  local section="$1"
  local line="$2"
  local ai_context=""

  ai_context="$(ai_context_file)"
  ensure_ai_context_file || return 1

  python3 - "${ai_context}" "${section}" "${line}" <<'PY'
import json
from pathlib import Path
import re
import sys

ctx = json.loads(Path(sys.argv[1]).read_text())
section = sys.argv[2]
line = sys.argv[3]
feature_file = (ctx.get("current_task") or {}).get("feature_file") or ""

if not feature_file:
    raise SystemExit(0)

feature_path = Path(feature_file)
if not feature_path.exists():
    raise SystemExit(0)

text = feature_path.read_text(encoding="utf-8")
pattern = re.compile(rf"(^## {re.escape(section)}\n)(.*?)(?=^## |\Z)", re.MULTILINE | re.DOTALL)
match = pattern.search(text)
if not match:
    raise SystemExit(0)

body = match.group(2)
entry = f"- {line}\n"
if entry in body:
    raise SystemExit(0)

updated = match.group(1) + body + entry
text = text[:match.start()] + updated + text[match.end():]
feature_path.write_text(text, encoding="utf-8")
PY
}

write_current_task_context() {
  local feature_file="$1"
  local env_alias="$2"
  local app_id="$3"
  local status="$4"
  local ai_context=""

  ai_context="$(ai_context_file)"
  ensure_ai_context_file || return 1

  python3 - "${ai_context}" "${feature_file}" "${env_alias}" "${app_id}" "${status}" <<'PY'
import json
from pathlib import Path
import sys

path = Path(sys.argv[1])
feature_file, env_alias, app_id, status = sys.argv[2:6]
ctx = json.loads(path.read_text())

supported = ctx.setdefault("supported_actions", [])
for action in ("feature-start", "feature-analyze", "feature-confirm", "feature-next", "feature-status", "task-state", "gate"):
    if action not in supported:
        supported.append(action)

ctx["current_task"] = {
    "feature_file": feature_file,
    "env_alias": env_alias,
    "app_id": app_id,
    "status": status,
    "source_of_truth": "ai-context.json",
    "proposed_pages": "",
    "proposed_db_objects": "",
    "confirmed_pages": "",
    "confirmed_db_objects": "",
    "stage_status": {
        "connectivity": "PENDING",
        "scope_confirmation": "PENDING",
        "implementation": "PENDING",
        "verification": "PENDING",
        "delivery": "PENDING",
    },
    "resume_rule": "If status is not DONE, continue troubleshooting, implementation, and verification until DONE.",
}

path.write_text(json.dumps(ctx, indent=2) + "\n")
PY
}

update_current_task_state() {
  local status="$1"
  local connectivity="$2"
  local scope_confirmation="$3"
  local implementation="$4"
  local verification="$5"
  local delivery="$6"
  local ai_context=""

  ai_context="$(ai_context_file)"
  ensure_ai_context_file || return 1

  python3 - "${ai_context}" "${status}" "${connectivity}" "${scope_confirmation}" "${implementation}" "${verification}" "${delivery}" "${OMX_RESULTS_DIR:-}" <<'PY'
import json
from pathlib import Path
import sys

path = Path(sys.argv[1])
status, connectivity, scope_confirmation, implementation, verification, delivery, results_dir = sys.argv[2:9]
ctx = json.loads(path.read_text())
supported = ctx.setdefault("supported_actions", [])
for action in ("feature-start", "feature-analyze", "feature-confirm", "feature-next", "feature-status", "task-state", "gate"):
    if action not in supported:
        supported.append(action)
current = ctx.setdefault("current_task", {})
current["source_of_truth"] = "ai-context.json"
stage_status = current.setdefault("stage_status", {})

if status:
    current["status"] = status

updates = {
    "connectivity": connectivity,
    "scope_confirmation": scope_confirmation,
    "implementation": implementation,
    "verification": verification,
    "delivery": delivery,
}

for key, value in updates.items():
    if value:
        stage_status[key] = value

def done_eligibility_reasons():
    reasons = []
    for stage in ("scope_confirmation", "implementation", "delivery", "verification"):
        if stage_status.get(stage) != "PASSED":
            reasons.append(f"stage_status.{stage} is {stage_status.get(stage) or 'missing'}, expected PASSED")

    if results_dir:
        root = Path(results_dir)
        summary_path = root / "summary.json"
        functional_path = root / "browser" / "functional.summary.json"
        if summary_path.exists() and functional_path.exists():
            try:
                summary = json.loads(summary_path.read_text())
                functional = json.loads(functional_path.read_text())
            except json.JSONDecodeError as exc:
                reasons.append(f"evidence JSON is invalid: {exc}")
            else:
                gate_actions = summary.get("executed_gate_actions") or []
                gate_runs = summary.get("gate_runs") or []
                has_functional_gate = (
                    "browser-functional" in gate_actions
                    or any(
                        run.get("gate") == "browser-functional" and run.get("status") == "success"
                        for run in gate_runs
                    )
                )
                if not (
                    summary.get("status") == "success"
                    and has_functional_gate
                    and functional.get("status") == "success"
                    and functional.get("action") == "functional"
                ):
                    reasons.append("browser-functional evidence proof is incomplete or not successful")
                for key in ("env_alias", "app_id"):
                    if summary.get(key) and current.get(key) and summary.get(key) != current.get(key):
                        reasons.append(f"evidence {key} does not match current task")
        else:
            reasons.append("missing run summary or browser/functional.summary.json evidence")
    else:
        reasons.append("OMX_RESULTS_DIR is not set for DONE evidence proof")

    return reasons

if current.get("status") == "DONE":
    reasons = done_eligibility_reasons()
    if reasons:
        print("Task is not DONE-eligible:", file=sys.stderr)
        for reason in reasons:
            print(f"- {reason}", file=sys.stderr)
        raise SystemExit(1)

path.write_text(json.dumps(ctx, indent=2) + "\n")
PY
}

update_current_task_scope_confirmation() {
  local confirmed_pages="$1"
  local confirmed_db_objects="$2"
  local ai_context=""

  ai_context="$(ai_context_file)"
  ensure_ai_context_file || return 1

  python3 - "${ai_context}" "${confirmed_pages}" "${confirmed_db_objects}" <<'PY'
import json
from pathlib import Path
import sys

path = Path(sys.argv[1])
confirmed_pages, confirmed_db_objects = sys.argv[2:4]
ctx = json.loads(path.read_text())
supported = ctx.setdefault("supported_actions", [])
for action in ("feature-start", "feature-analyze", "feature-confirm", "feature-next", "feature-status", "task-state", "gate"):
    if action not in supported:
        supported.append(action)

current = ctx.setdefault("current_task", {})
current["source_of_truth"] = "ai-context.json"
current["status"] = "IMPLEMENTING"
current["confirmed_pages"] = confirmed_pages
current["confirmed_db_objects"] = confirmed_db_objects
current.setdefault("stage_status", {})["scope_confirmation"] = "PASSED"

path.write_text(json.dumps(ctx, indent=2) + "\n")
PY
}

update_current_task_analysis() {
  local proposed_pages="$1"
  local proposed_db_objects="$2"
  local ai_context=""

  ai_context="$(ai_context_file)"
  ensure_ai_context_file || return 1

  python3 - "${ai_context}" "${proposed_pages}" "${proposed_db_objects}" <<'PY'
import json
from pathlib import Path
import sys

path = Path(sys.argv[1])
proposed_pages, proposed_db_objects = sys.argv[2:4]
ctx = json.loads(path.read_text())
supported = ctx.setdefault("supported_actions", [])
for action in ("feature-start", "feature-analyze", "feature-confirm", "feature-next", "feature-status", "task-state", "gate"):
    if action not in supported:
        supported.append(action)

current = ctx.setdefault("current_task", {})
current["source_of_truth"] = "ai-context.json"
current["status"] = "CONFIRM"
current["proposed_pages"] = proposed_pages
current["proposed_db_objects"] = proposed_db_objects
current.setdefault("stage_status", {})["scope_confirmation"] = "PENDING"

path.write_text(json.dumps(ctx, indent=2) + "\n")
PY
}

update_current_task_activity() {
  local activity="$1"
  local result="$2"
  local ai_context=""

  ai_context="$(ai_context_file)"
  [[ -f "${ai_context}" ]] || return 0

  python3 - "${ai_context}" "${activity}" "${result}" <<'PY'
import json
from pathlib import Path
import sys

path = Path(sys.argv[1])
activity, result = sys.argv[2:4]
ctx = json.loads(path.read_text())
current = ctx.get("current_task") or {}

if current.get("status") == "DONE":
    raise SystemExit(0)

stage_status = current.setdefault("stage_status", {})
if activity == "export":
    stage_status["implementation"] = "IN_PROGRESS" if result == "success" else "FAILED"
    current["status"] = "IMPLEMENTING"
elif activity == "import":
    stage_status["delivery"] = "IN_PROGRESS" if result == "success" else "FAILED"
    current["status"] = "IMPLEMENTING"
else:
    raise SystemExit(0)

ctx["current_task"] = current
path.write_text(json.dumps(ctx, indent=2) + "\n")
PY
}

render_feature_status() {
  local ai_context=""

  ai_context="$(ai_context_file)"
  ensure_ai_context_file || return 1

  python3 - "${ai_context}" "${ROOT_DIR}" <<'PY'
import json
from pathlib import Path
import sys

path = Path(sys.argv[1])
root = Path(sys.argv[2])
ctx = json.loads(path.read_text())
current = ctx.get("current_task") or {}

status = current.get("status") or "NEW"
feature_file = current.get("feature_file") or ""
env_alias = current.get("env_alias") or ""
app_id = current.get("app_id") or ""
confirmed_pages = current.get("confirmed_pages") or ""
confirmed_db_objects = current.get("confirmed_db_objects") or ""
resume_rule = current.get("resume_rule") or ""
stage_status = current.get("stage_status") or {}
stage_summary = ", ".join(f"{key}={value}" for key, value in stage_status.items())

if status == "DONE":
    next_action = "Optional manual browser-based final verification by developer."
elif status == "CONFIRM":
    next_action = "Wait for developer confirmation of impacted pages and DB objects."
else:
    next_action = "Continue implementation and verification until DONE."

display_feature_file = feature_file
if feature_file:
    try:
        display_feature_file = str(Path(feature_file).resolve().relative_to(root.resolve()))
    except Exception:
        display_feature_file = feature_file

print(f"Current task status: {status}")
print(f"Environment: {env_alias or '(unset)'}")
print(f"Application: {app_id or '(unset)'}")
print(f"Feature file: {display_feature_file or '(unset)'}")
print(f"Confirmed pages: {confirmed_pages or '(unset)'}")
print(f"Confirmed DB objects: {confirmed_db_objects or '(unset)'}")
print(f"Stage summary: {stage_summary or '(none)'}")
print(f"Next action: {next_action}")
if resume_rule:
    print(f"Resume rule: {resume_rule}")
PY
}

render_feature_next() {
  local ai_context=""

  ai_context="$(ai_context_file)"
  ensure_ai_context_file || return 1

  python3 - "${ai_context}" <<'PY'
import json
from pathlib import Path
import sys

ctx = json.loads(Path(sys.argv[1]).read_text())
current = ctx.get("current_task") or {}
status = current.get("status") or "NEW"
stage = current.get("stage_status") or {}

if status == "NEW":
    if stage.get("connectivity") == "PASSED":
        print("Next action: analyze impacted pages and DB objects, then request scope confirmation.")
    else:
        print("Next action: fix connectivity first, then continue feature analysis.")
elif status == "CONFIRM":
    print("Next action: get developer confirmation for impacted pages and DB objects.")
elif status == "IMPLEMENTING":
    if stage.get("delivery") == "IN_PROGRESS":
        print("Next action: continue deploy-related work, then run gate validation.")
    elif stage.get("implementation") in ("IN_PROGRESS", "PASSED"):
        print("Next action: continue implementation and run the required gate flow.")
    else:
        print("Next action: start implementation within the confirmed scope.")
elif status == "TESTED":
    if stage.get("verification") == "PASSED" and stage.get("delivery") == "PASSED":
        print("Next action: advance to DONE or run final browser-functional validation if still pending.")
    else:
        print("Next action: fix verification or delivery failures, then rerun validation.")
elif status == "DONE":
    print("Next action: optional manual browser-based final verification by developer.")
else:
    print("Next action: inspect ai-context.json and continue until DONE.")
PY
}

update_connectivity_stage_if_current_task_matches() {
  local env_alias="$1"
  local app_id="$2"
  local stage_status="$3"
  local ai_context=""

  ai_context="$(ai_context_file)"
  [[ -f "${ai_context}" ]] || return 0

  python3 - "${ai_context}" "${env_alias}" "${app_id}" "${stage_status}" <<'PY'
import json
from pathlib import Path
import sys

path = Path(sys.argv[1])
env_alias, app_id, stage_status = sys.argv[2:5]
ctx = json.loads(path.read_text())
current = ctx.get("current_task") or {}

if current.get("status") == "DONE":
    raise SystemExit(0)

if current.get("env_alias") != env_alias:
    raise SystemExit(0)

current_app = current.get("app_id") or ""
if app_id and current_app and current_app != app_id:
    raise SystemExit(0)

current.setdefault("stage_status", {})["connectivity"] = stage_status
ctx["current_task"] = current
path.write_text(json.dumps(ctx, indent=2) + "\n")
PY
}

emit_result_record() {
  printf '%s|%s|%s|%s|%s|%s|%s|%s\n' "$@"
}

render_result_text() {
  local action="$1"
  local record="$2"
  local target_type=""
  local env_alias=""
  local app_id=""
  local page_id=""
  local status=""
  local code=""
  local reason=""
  local next_step=""
  local line=""

  IFS='|' read -r target_type env_alias app_id page_id status code reason next_step <<< "${record}"

  line="${status} ${env_alias}"
  [[ -n "${app_id}" ]] && line+=" app=${app_id}"
  [[ -n "${page_id}" ]] && line+=" page=${page_id}"
  [[ -n "${reason}" ]] && line+=" ${reason}"
  [[ -n "${next_step}" ]] && line+=" ${next_step}"
  printf '%s\n' "${line}"
}

render_result_json() {
  local action="$1"
  local record="$2"

  python3 - "${action}" "${record}" <<'PY'
import json
import sys

action = sys.argv[1]
parts = sys.argv[2].split("|")
target_type, env_alias, app_id, page_id, status, code, reason, next_step = parts

payload = {
    "action": action,
    "target_type": target_type,
    "env_alias": env_alias,
    "app_id": app_id,
    "page_id": page_id,
    "status": status,
    "code": int(code),
    "reason": reason,
    "next_step": next_step,
}

print(json.dumps(payload, separators=(",", ":")))
PY
}

render_batch_json() {
  local action="$1"
  local status="$2"
  local code="$3"
  shift 3

  python3 - "${action}" "${status}" "${code}" "$@" <<'PY'
import json
import sys

action = sys.argv[1]
status = sys.argv[2]
code = int(sys.argv[3])
records = []

for raw in sys.argv[4:]:
    target_type, env_alias, app_id, page_id, item_status, item_code, reason, next_step = raw.split("|")
    records.append(
        {
            "action": action,
            "target_type": target_type,
            "env_alias": env_alias,
            "app_id": app_id,
            "page_id": page_id,
            "status": item_status,
            "code": int(item_code),
            "reason": reason,
            "next_step": next_step,
        }
    )

print(json.dumps({"action": action, "status": status, "code": code, "results": records}, separators=(",", ":")))
PY
}

emit_failure_result() {
  local target_type="$1"
  local env_alias="$2"
  local app_id="$3"
  local reason="$4"
  local next_step="$5"

  emit_result_record "${target_type}" "${env_alias}" "${app_id}" "" "FAIL" "2" "${reason}" "${next_step}"
}

prepare_env_context() {
  local env_alias="$1"

  capture_failure load_env_context "${env_alias}" || return 1
  capture_failure ensure_java || return 1
  capture_failure ensure_sqlcl || return 1
}

generic_connection_probe() {
  local env_alias="$1"
  local depth="${2:-quick}"
  local conn_json_file=""
  local local_conn_json_file="${LOCAL_CONFIG_FILE:-}"

  conn_json_file="$(root_conn_json_file)"
  [[ -f "${conn_json_file}" ]] || return 1

  python3 - "${conn_json_file}" "${local_conn_json_file}" "${env_alias}" "${depth}" <<'PY'
import json
import os
import sys

path, local_path, env_alias, depth = sys.argv[1:5]

with open(path, "r", encoding="utf-8") as handle:
    payload = json.load(handle)

entry = payload.get(env_alias)
if not isinstance(entry, dict):
    entry = {}

if local_path and os.path.exists(local_path):
    with open(local_path, "r", encoding="utf-8") as handle:
        local_payload = json.load(handle)
    local_entry = local_payload.get(env_alias)
    if isinstance(local_entry, dict):
        merged_entry = dict(entry)
        merged_entry.update(local_entry)
        entry = merged_entry

if not isinstance(entry, dict):
    raise SystemExit(1)

driver = entry.get("driver")
if not isinstance(driver, str) or not driver:
    raise SystemExit(1)

missing = []
if not isinstance(entry.get("username"), str) or not entry.get("username"):
    missing.append("username")

has_host = isinstance(entry.get("host"), str) and bool(entry.get("host"))
has_jdbc_url = isinstance(entry.get("jdbc_url"), str) and bool(entry.get("jdbc_url"))
if not has_host and not has_jdbc_url:
    missing.append("host or jdbc_url")

if has_host and not isinstance(entry.get("port"), int):
    missing.append("port")

if missing:
    print(
        "FAIL\t2\tGeneric database metadata incomplete: missing {}\tComplete generic connection metadata".format(
            ", ".join(missing)
        )
    )
    raise SystemExit(0)

password = entry.get("password")
if depth == "deep" and password == "__fill_me__":
    print(
        "WARN\t1\tGeneric database credentials still contain __fill_me__ placeholders\tInject real credentials from an ignored local file or external secret store"
    )
    raise SystemExit(0)

print(
    "OK\t0\tGeneric database metadata checks passed\tRun usql-check for a live driver-specific connection check when db_usql_bin is configured"
)
PY
}

emit_generic_connection_probe() {
  local env_alias="$1"
  local depth="${2:-quick}"
  local probe=""
  local status=""
  local code=""
  local reason=""
  local next_step=""

  if ! probe="$(generic_connection_probe "${env_alias}" "${depth}")"; then
    return 1
  fi

  IFS=$'\t' read -r status code reason next_step <<< "${probe}"
  emit_result_record "environment" "${env_alias}" "" "" "${status}" "${code}" "${reason}" "${next_step}"
}

check_password_warning() {
  case "${DB_CONNECTION_MODE:-direct}" in
    tns)
      if value_has_placeholder "${DB_PASSWORD:-}"; then
        printf 'Credentials still contain __fill_me__ placeholders\n'
        return 0
      fi
      ;;
    direct|ezconnect)
      if value_has_placeholder "${DB_CONNECT_STRING:-}"; then
        printf 'Credentials still contain __fill_me__ placeholders\n'
        return 0
      fi
      ;;
  esac

  return 1
}

check_wallet_warning() {
  [[ "${DB_CONNECTION_MODE}" == "tns" ]] || return 1

  if [[ ! -d "${DB_TNS_ADMIN:-}" || "$(wallet_file_status)" == "missing" ]]; then
    printf 'Missing wallet files for %s\n' "${DB_TNS_ADMIN:-unknown wallet dir}"
    return 0
  fi

  return 1
}

check_tunnel_warning() {
  local host=""
  local port=""

  read -r host port < <(sqlcl_connect_target) || return 1

  case "${host}" in
    127.0.0.1|localhost|::1)
      if [[ -z "${SSH_TUNNEL_COMMAND:-}" ]]; then
        printf 'Missing SSH tunnel prerequisite for loopback database access\n'
        return 0
      fi

      if [[ -n "${SSH_KEY_PATH:-}" && ! -f "${SSH_KEY_PATH}" ]]; then
        printf 'Missing SSH key: %s\n' "${SSH_KEY_PATH}"
        return 0
      fi
      ;;
  esac

  return 1
}

check_external_infra_warning() {
  local host=""
  local port=""
  local timeout_seconds="20"

  read -r host port < <(sqlcl_connect_target) || return 1

  case "${host}" in
    127.0.0.1|localhost|::1)
      local_port_is_listening "${port}" || {
        printf 'External infrastructure not reachable within %ss\n' "${timeout_seconds}"
        return 0
      }
      ;;
    *)
      if command -v nc >/dev/null 2>&1 && ! nc -z -w "${timeout_seconds}" "${host}" "${port}" >/dev/null 2>&1; then
        printf 'External infrastructure not reachable within %ss\n' "${timeout_seconds}"
        return 0
      fi
      ;;
  esac

  return 1
}

check_env_quick_probe() {
  local env_alias="$1"

  if ! env_alias="$(normalize_env_alias "${env_alias}" 2>/dev/null)"; then
    emit_failure_result "environment" "${1:-}" "" 'Invalid environment alias' 'Use an alias from conn.json'
    return 0
  fi

  if emit_generic_connection_probe "${env_alias}" "quick"; then
    return 0
  fi

  if ! prepare_env_context "${env_alias}"; then
    emit_failure_result "environment" "${env_alias}" "" "${APEX_AI_CAPTURED_ERROR:-Environment check failed}" 'Fix the environment configuration and rerun check'
    return 0
  fi

  emit_result_record "environment" "${env_alias}" "" "" "OK" "0" 'Quick checks passed' 'Run sql-check for a live connection check'
}

check_env_deep_probe() {
  local env_alias="$1"
  local quick_record=""
  local warnings=()
  local warning_message=""

  if ! env_alias="$(normalize_env_alias "${env_alias}" 2>/dev/null)"; then
    emit_failure_result "environment" "${1:-}" "" 'Invalid environment alias' 'Use an alias from conn.json'
    return 0
  fi

  if emit_generic_connection_probe "${env_alias}" "deep"; then
    return 0
  fi

  quick_record="$(check_env_quick_probe "${env_alias}")"
  if [[ "$(printf '%s\n' "${quick_record}" | cut -d '|' -f5)" == "FAIL" ]]; then
    printf '%s\n' "${quick_record}"
    return 0
  fi

  if ! prepare_env_context "${env_alias}"; then
    emit_failure_result "environment" "${env_alias}" "" "${APEX_AI_CAPTURED_ERROR:-Environment check failed}" 'Fix the environment configuration and rerun check'
    return 0
  fi

  if warning_message="$(check_wallet_warning 2>/dev/null)"; then
    warnings+=("${warning_message}")
  fi

  if warning_message="$(check_password_warning 2>/dev/null)"; then
    warnings+=("${warning_message}")
  fi

  if warning_message="$(check_tunnel_warning 2>/dev/null)"; then
    warnings+=("${warning_message}")
  fi

  if warning_message="$(check_external_infra_warning 2>/dev/null)"; then
    warnings+=("${warning_message}")
  fi

  if [[ "${#warnings[@]}" -gt 0 ]]; then
    emit_result_record "environment" "${env_alias}" "" "" "WARN" "1" "${warnings[*]}" 'Resolve the warning details or rerun without --deep'
    return 0
  fi

  emit_result_record "environment" "${env_alias}" "" "" "OK" "0" 'Deep checks passed' 'Proceed with the requested environment action'
}

sql_check_probe() {
  local env_alias="$1"
  local app_id="${2:-}"
  local target_type="environment"
  local next_step='Proceed with the requested environment action'

  if ! env_alias="$(normalize_env_alias "${env_alias}" 2>/dev/null)"; then
    emit_failure_result "environment" "${1:-}" "${app_id}" 'Invalid environment alias' 'Use an alias from conn.json'
    return 0
  fi

  if [[ -n "${app_id}" ]]; then
    target_type="application"
    next_step='Proceed with the requested application action'
  fi

  if ! capture_failure load_env_context "${env_alias}" "${app_id}"; then
    emit_failure_result "${target_type}" "${env_alias}" "${app_id}" "${APEX_AI_CAPTURED_ERROR:-Unable to load environment context}" 'Fix the environment configuration and rerun sql-check'
    return 0
  fi

  if ! capture_failure ensure_java; then
    emit_failure_result "${target_type}" "${env_alias}" "${app_id}" "${APEX_AI_CAPTURED_ERROR:-Java runtime not available}" 'Install Java or set JAVA_HOME, then rerun sql-check'
    return 0
  fi

  if ! capture_failure ensure_sqlcl; then
    emit_failure_result "${target_type}" "${env_alias}" "${app_id}" "${APEX_AI_CAPTURED_ERROR:-SQLcl binary not available}" 'Install SQLcl or set DB_SQLCL_BIN, then rerun sql-check'
    return 0
  fi

  if ! capture_failure run_sqlcl_health_check; then
    emit_failure_result "${target_type}" "${env_alias}" "${app_id}" "${APEX_AI_CAPTURED_ERROR:-SQL health check failed}" 'Fix credentials or database reachability, then rerun sql-check'
    return 0
  fi

  emit_result_record "${target_type}" "${env_alias}" "${app_id}" "" "OK" "0" 'SQLcl connectivity check passed' "${next_step}"
}

usql_check_probe() {
  local env_alias="$1"
  local conn_json_file=""
  local local_conn_json_file="${LOCAL_CONFIG_FILE:-}"

  if ! env_alias="$(normalize_env_alias "${env_alias}" 2>/dev/null)"; then
    emit_failure_result "environment" "${1:-}" "" 'Invalid environment alias' 'Use an alias from conn.json'
    return 0
  fi

  [[ -f "$(root_conn_json_file)" ]] || {
    emit_failure_result "environment" "${env_alias}" "" 'Missing conn.json' 'Restore conn.json and rerun usql-check'
    return 0
  }

  if ! conn_json_file="$(resolve_conn_json_file_for_env "${env_alias}")"; then
    emit_failure_result "environment" "${env_alias}" "" "Missing environment entry in $(root_conn_json_file)" 'Use an alias from conn.json'
    return 0
  fi

  python3 - "${conn_json_file}" "${local_conn_json_file}" "${env_alias}" <<'PY'
import json
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path
from urllib.parse import quote

path, local_path, env_alias = sys.argv[1:4]

with open(path, "r", encoding="utf-8") as handle:
    payload = json.load(handle)

entry = payload.get(env_alias)
if not isinstance(entry, dict):
    print(
        f"environment|{env_alias}|||FAIL|2|Missing environment entry in {path}|Use an alias from conn.json"
    )
    raise SystemExit(0)

if local_path and os.path.exists(local_path):
    with open(local_path, "r", encoding="utf-8") as handle:
        local_payload = json.load(handle)
    local_entry = local_payload.get(env_alias)
    if isinstance(local_entry, dict):
        merged_entry = dict(entry)
        merged_entry.update(local_entry)
        entry = merged_entry

mode = str(entry.get("db_connection_mode") or "generic").strip().lower()
if mode != "generic":
    print(
        f"environment|{env_alias}|||FAIL|2|usql-check only supports generic environments; use sql-check for db_connection_mode={mode}|Use the matching connectivity check entrypoint"
    )
    raise SystemExit(0)

driver = str(entry.get("driver") or "").strip().lower()
scheme_map = {
    "mysql": "mysql",
    "postgres": "postgres",
    "postgresql": "postgres",
    "sqlserver": "sqlserver",
    "mssql": "sqlserver",
    "oracle": "oracle",
}
scheme = scheme_map.get(driver)
if not scheme:
    print(
        f"environment|{env_alias}|||FAIL|2|Unsupported generic driver for usql-check: {driver or 'missing driver'}|Use a supported driver or a dedicated client check"
    )
    raise SystemExit(0)

bin_value = str(entry.get("db_usql_bin") or "usql").strip()
if not bin_value:
    bin_value = "usql"

if os.path.sep in bin_value:
    resolved_bin = bin_value if os.access(bin_value, os.X_OK) else ""
else:
    resolved_bin = shutil.which(bin_value) or ""

if not resolved_bin:
    print(
        f"environment|{env_alias}|||FAIL|2|usql binary not available: {bin_value}|Install usql or set db_usql_bin, then rerun usql-check"
    )
    raise SystemExit(0)

username = str(entry.get("username") or "").strip()
password = str(entry.get("password") or "").strip()
if not username:
    print(
        f"environment|{env_alias}|||FAIL|2|username is required for usql-check|Complete generic connection metadata"
    )
    raise SystemExit(0)

if not password:
    print(
        f"environment|{env_alias}|||FAIL|2|password is required for usql-check|Complete generic connection metadata"
    )
    raise SystemExit(0)

host = entry.get("host")
port = entry.get("port")
database = entry.get("database")
service = entry.get("service")
jdbc_url = str(entry.get("jdbc_url") or "").strip()

if (not host or not port) and jdbc_url:
    patterns = [
        r"^jdbc:[a-z0-9]+://(?P<host>[^/:]+):(?P<port>\d+)(?:/(?P<name>[^?]+))?$",
        r"^jdbc:oracle:thin:@//(?P<host>[^/:]+):(?P<port>\d+)/(?P<name>[^?]+)$",
    ]
    for pattern in patterns:
        match = re.match(pattern, jdbc_url, re.IGNORECASE)
        if match:
            host = host or match.group("host")
            port = port or int(match.group("port"))
            name = match.groupdict().get("name")
            if name:
                if scheme == "oracle":
                    service = service or name
                else:
                    database = database or name
            break

if not host:
    print(
        f"environment|{env_alias}|||FAIL|2|host is required for usql-check|Complete generic connection metadata"
    )
    raise SystemExit(0)

if not isinstance(port, int):
    print(
        f"environment|{env_alias}|||FAIL|2|port is required for usql-check|Complete generic connection metadata"
    )
    raise SystemExit(0)

target_name = service if scheme == "oracle" else database
sql = "select 1 from dual;" if scheme == "oracle" else "select 1;"

dsn = f"{scheme}://{quote(username, safe='')}:{quote(password, safe='')}@{host}:{port}/"
if target_name:
    dsn += quote(str(target_name), safe="")

try:
    proc = subprocess.run(
        [resolved_bin, dsn, "-c", sql],
        capture_output=True,
        text=True,
        timeout=20,
        check=False,
    )
except subprocess.TimeoutExpired:
    print(
        f"environment|{env_alias}|||FAIL|2|usql connectivity check timed out after 20s|Check network reachability and rerun usql-check"
    )
    raise SystemExit(0)

if proc.returncode != 0:
    lines = []
    for stream in (proc.stderr, proc.stdout):
        if stream:
            lines.extend(line.strip() for line in stream.splitlines() if line.strip())
    detail = lines[-1] if lines else "usql returned a non-zero exit status"
    print(
        f"environment|{env_alias}|||FAIL|2|usql connectivity check failed: {detail}|Fix credentials or database reachability, then rerun usql-check"
    )
    raise SystemExit(0)

print(
    f"environment|{env_alias}|||OK|0|usql connectivity check passed|Proceed with the requested environment action"
)
PY
}

run_placeholder_action() {
  printf 'Action not implemented in this task: %s\n' "$1" >&2
  apex_ai_usage >&2
  return 1
}

prompt_wizard_value() {
  local field_name="$1"
  local purpose="$2"
  local examples="$3"
  local allow_empty="${4:-false}"
  local value=""
  local hide_input="false"

  if [[ "${field_name}" == 'db_password' ]]; then
    hide_input="true"
  fi

  while true; do
    printf '%s - Purpose: %s. Examples: %s\n' "${field_name}" "${purpose}" "${examples}" >&2

    if [[ "${hide_input}" == 'true' && -t 0 ]]; then
      IFS= read -r -s value || return 1
      printf '\n' >&2
    else
      IFS= read -r value || return 1
    fi

    value="$(trim "${value}")"

    if [[ -n "${value}" || "${allow_empty}" == "true" ]]; then
      printf '%s\n' "${value}"
      return 0
    fi

    printf 'Value required for %s.\n' "${field_name}" >&2
  done
}

wizard_append_answer() {
  local key="$1"
  local value="$2"

  WIZARD_KEYS+=("${key}")
  WIZARD_VALUES+=("${value}")
}

wizard_append_preview_line() {
  local value="$1"

  PREVIEW_LINES+=("${value}")
}

wizard_emit_preview() {
  local env_alias="$1"

  printf 'Autofill fields for %s\n' "${env_alias}"

  if [[ "${#PREVIEW_LINES[@]}" -gt 0 ]]; then
    printf '%s\n' "${PREVIEW_LINES[@]}"
    return 0
  fi

  printf '(none)\n'
}

wizard_emit_answers() {
  local env_alias="$1"
  local index

  printf 'Minimal fields for %s\n' "${env_alias}"

  for index in "${!WIZARD_KEYS[@]}"; do
    printf '%s=%s\n' "${WIZARD_KEYS[${index}]}" "$(mask_wizard_value "${WIZARD_KEYS[${index}]}" "${WIZARD_VALUES[${index}]}")"
  done
}

status_from_result_output() {
  local output="$1"
  local line=""
  local trimmed_line=""

  while IFS= read -r line; do
    trimmed_line="$(trim "${line}")"
    [[ -n "${trimmed_line}" ]] || continue

    case "${trimmed_line}" in
      OK\ *|WARN\ *|FAIL\ *)
        printf '%s\n' "${trimmed_line%% *}"
        return 0
        ;;
      *)
        printf 'FAIL\n'
        return 0
        ;;
    esac
  done <<EOF
${output}
EOF

  printf 'FAIL\n'
}

normalize_result_output() {
  local action="$1"
  local env_alias="$2"
  local output="$3"
  local line=""
  local trimmed_line=""

  while IFS= read -r line; do
    trimmed_line="$(trim "${line}")"
    [[ -n "${trimmed_line}" ]] || continue

    case "${trimmed_line}" in
      OK\ *|WARN\ *|FAIL\ *)
        printf '%s\n' "${output}"
        return 0
        ;;
      *)
        printf 'FAIL %s %s did not return a status line\n' "${env_alias}" "${action}"
        if [[ -n "${output}" ]]; then
          printf '%s\n' "${output}"
        fi
        return 0
        ;;
    esac
  done <<EOF
${output}
EOF

  printf 'FAIL %s %s produced no output\n' "${env_alias}" "${action}"
}

capture_result_output() {
  local action="$1"
  local env_alias="$2"
  local tail_arg="${3:-}"
  local output=""

  set +e
  if [[ -n "${tail_arg}" ]]; then
    output="$(JAVA_HOME="${JAVA_HOME-}" DB_SQLCL_BIN="${DB_SQLCL_BIN-}" bash "${ROOT_DIR}/tools/apex_ai.sh" "${action}" "${env_alias}" "${tail_arg}" 2>&1)"
  else
    output="$(JAVA_HOME="${JAVA_HOME-}" DB_SQLCL_BIN="${DB_SQLCL_BIN-}" bash "${ROOT_DIR}/tools/apex_ai.sh" "${action}" "${env_alias}" 2>&1)"
  fi
  set -e

  normalize_result_output "${action}" "${env_alias}" "${output}"
}

render_post_init_status_line() {
  local combined_status="$1"
  local env_alias="$2"

  case "${combined_status}" in
    OK)
      printf 'OK %s post-init verification passed\n' "${env_alias}"
      ;;
    WARN)
      printf 'WARN %s post-init verification requires attention\n' "${env_alias}"
      ;;
    *)
      printf 'FAIL %s post-init verification failed\n' "${env_alias}"
      ;;
  esac
}

conn_json_scalar_value() {
  local env_alias="$1"
  local key="$2"
  local conn_json_file=""

  conn_json_file="$(root_conn_json_file)"
  [[ -f "${conn_json_file}" ]] || return 1

  python3 - "${conn_json_file}" "${env_alias}" "${key}" <<'PY'
import json
import sys

with open(sys.argv[1], 'r', encoding='utf-8') as handle:
    payload = json.load(handle)

entry = payload.get(sys.argv[2])
if not isinstance(entry, dict):
    raise SystemExit(1)

value = entry.get(sys.argv[3])
if not isinstance(value, str) or value == '':
    raise SystemExit(1)

print(value)
PY
}

conn_json_scalar_value_anycase() {
  local env_alias="$1"
  local key="$2"
  local key_upper=""

  if conn_json_scalar_value "${env_alias}" "${key}" 2>/dev/null; then
    return 0
  fi

  key_upper="$(printf '%s' "${key}" | tr '[:lower:]' '[:upper:]')"
  if [[ "${key_upper}" != "${key}" ]] && conn_json_scalar_value "${env_alias}" "${key_upper}" 2>/dev/null; then
    return 0
  fi

  return 1
}

derive_java_home_from_bin() {
  local java_bin="$1"
  local normalized_java_bin=""

  [[ -n "${java_bin}" ]] || return 1
  [[ "${java_bin}" == '/usr/bin/java' ]] && return 1

  normalized_java_bin="$(windows_to_unix_path "${java_bin}")"

  case "${java_bin}" in
    *\\bin\\java.exe)
      printf '%s\n' "${java_bin%\\bin\\java.exe}"
      ;;
    *\\bin\\java)
      printf '%s\n' "${java_bin%\\bin\\java}"
      ;;
    */bin/java)
      printf '%s\n' "${normalized_java_bin%/bin/java}"
      ;;
    */bin/java.exe)
      printf '%s\n' "${normalized_java_bin%/bin/java.exe}"
      ;;
    *)
      return 1
      ;;
  esac
}

path_is_absolute() {
  local candidate="$1"

  [[ -n "${candidate}" ]] || return 1

  case "${candidate}" in
    /*|\\\\*|[A-Za-z]:[\\/]*)
      return 0
      ;;
  esac

  return 1
}

windows_to_unix_path() {
  local candidate="$1"

  python3 - "${candidate}" <<'PY'
import re
import sys

value = sys.argv[1].replace("\\", "/")
if value.startswith("//"):
    value = "//" + re.sub(r"/{2,}", "/", value[2:])
else:
    value = re.sub(r"/{2,}", "/", value)
print(value)
PY
}

java_home_is_usable() {
  local candidate="$1"
  local unix_candidate=""

  [[ -n "${candidate}" ]] || return 1

  if [[ -x "${candidate}/bin/java" ]]; then
    "${candidate}/bin/java" -version >/dev/null 2>&1
    return $?
  fi

  unix_candidate="$(windows_to_unix_path "${candidate}")"
  if [[ -x "${unix_candidate}/bin/java.exe" ]]; then
    "${unix_candidate}/bin/java.exe" -version >/dev/null 2>&1
    return $?
  fi

  return 1
}

sqlcl_bin_is_usable() {
  local candidate="$1"
  local unix_candidate=""

  [[ -n "${candidate}" ]] || return 1
  path_is_absolute "${candidate}" || return 1

  if [[ -x "${candidate}" ]]; then
    return 0
  fi

  unix_candidate="$(windows_to_unix_path "${candidate}")"
  [[ -x "${unix_candidate}" ]]
}

detect_java_home_from_launcher() {
  local candidate=""

  [[ -x '/usr/libexec/java_home' ]] || return 1
  candidate="$(/usr/libexec/java_home 2>/dev/null || true)"
  java_home_is_usable "${candidate}" || return 1
  printf '%s\n' "${candidate}"
}

resolve_absolute_executable_path() {
  local candidate="$1"
  local absolute_dir=""
  local normalized_candidate=""
  local discovered_candidate=""

  [[ -n "${candidate}" ]] || return 1

  normalized_candidate="$(windows_to_unix_path "${candidate}")"

  if [[ -x "${candidate}" ]]; then
    normalized_candidate="${candidate}"
  elif [[ -x "${normalized_candidate}" ]]; then
    candidate="${normalized_candidate}"
  elif [[ "${normalized_candidate}" == */* && -x "${ROOT_DIR}/${normalized_candidate}" ]]; then
    normalized_candidate="${ROOT_DIR}/${normalized_candidate}"
    candidate="${normalized_candidate}"
  elif [[ "${normalized_candidate}" == ./* || "${normalized_candidate}" == */* ]]; then
    discovered_candidate="$(command -v "${normalized_candidate##*/}" 2>/dev/null || true)"
    [[ -n "${discovered_candidate}" && -x "${discovered_candidate}" ]] || return 1
    normalized_candidate="$(windows_to_unix_path "${discovered_candidate}")"
    candidate="${discovered_candidate}"
  else
    return 1
  fi

  if path_is_absolute "${candidate}"; then
    printf '%s\n' "${normalized_candidate}"
    return 0
  fi

  [[ "${normalized_candidate}" == */* ]] || return 1
  absolute_dir="$(cd "${normalized_candidate%/*}" >/dev/null 2>&1 && pwd -P)" || return 1
  printf '%s/%s\n' "${absolute_dir}" "${normalized_candidate##*/}"
}

detect_init_java_preview() {
  local java_bin=""
  local java_home=""

  if java_home_is_usable "${JAVA_HOME:-}"; then
    printf 'persist|%s\n' "${JAVA_HOME}"
    return 0
  fi

  java_bin="$(command -v java 2>/dev/null || true)"
  if [[ -n "${java_bin}" ]]; then
    "${java_bin}" -version >/dev/null 2>&1 || return 1

    java_home="$(derive_java_home_from_bin "${java_bin}" || true)"
    if java_home_is_usable "${java_home}"; then
      printf 'persist|%s\n' "${java_home}"
      return 0
    fi

    printf 'preview|%s\n' "${java_bin}"
    return 0
  fi

  java_home="$(detect_java_home_from_launcher || true)"
  if [[ -n "${java_home}" ]]; then
    printf 'persist|%s\n' "${java_home}"
    return 0
  fi

  return 1
}

detect_init_sqlcl_bin() {
  local candidate=""
  local sqlcl_bin_name='sql'

  case "${OSTYPE:-}" in
    msys*|cygwin*|win32*)
      sqlcl_bin_name='sql.exe'
      ;;
  esac

  if [[ -n "${DB_SQLCL_BIN:-}" && "${DB_SQLCL_BIN}" != 'sql' ]]; then
    resolve_absolute_executable_path "${DB_SQLCL_BIN}" && return 0
  fi

  candidate="$(command -v "${sqlcl_bin_name}" 2>/dev/null || true)"
  if [[ -z "${candidate}" && "${sqlcl_bin_name}" != 'sql' ]]; then
    candidate="$(command -v sql 2>/dev/null || true)"
  fi
  [[ -n "${candidate}" ]] || return 1
  resolve_absolute_executable_path "${candidate}"
}

wizard_runtime_autofill() {
  local env_alias="$1"
  local update_mode="$2"
  local java_value=""
  local sqlcl_value=""
  local existing_java_value=""
  local existing_sqlcl_value=""
  local java_preview_record=""
  local sqlcl_detected=""

  existing_java_value="$(conn_json_scalar_value "${env_alias}" 'java_home' || true)"
  existing_sqlcl_value="$(conn_json_scalar_value "${env_alias}" 'db_sqlcl_bin' || true)"

  if [[ "${update_mode}" == 'merge-preserve-advanced' ]]; then
    java_value="${existing_java_value}"
    sqlcl_value="${existing_sqlcl_value}"
  fi

  if [[ -n "${java_value}" ]]; then
    wizard_append_preview_line "java_home=${java_value}"
    wizard_append_answer 'java_home' "${java_value}"
  elif [[ "${update_mode}" == 'overwrite-minimal' ]] && java_home_is_usable "${existing_java_value}"; then
    java_value="${existing_java_value}"
    wizard_append_preview_line "java_home=${java_value}"
    wizard_append_answer 'java_home' "${java_value}"
  else
    java_preview_record="$(detect_init_java_preview || true)"
    case "${java_preview_record%%|*}" in
      persist)
        java_value="${java_preview_record#*|}"
        wizard_append_preview_line "java_home=${java_value}"
        wizard_append_answer 'java_home' "${java_value}"
        ;;
      preview)
        wizard_append_preview_line "java_bin=${java_preview_record#*|} (preview only)"
        ;;
    esac
  fi

  if [[ -n "${sqlcl_value}" ]]; then
    wizard_append_preview_line "db_sqlcl_bin=${sqlcl_value}"
    wizard_append_answer 'db_sqlcl_bin' "${sqlcl_value}"
  else
    sqlcl_detected="$(detect_init_sqlcl_bin || true)"
    if [[ -n "${sqlcl_detected}" ]]; then
      wizard_append_preview_line "db_sqlcl_bin=${sqlcl_detected}"
      wizard_append_answer 'db_sqlcl_bin' "${sqlcl_detected}"
    elif [[ "${update_mode}" == 'overwrite-minimal' ]] && sqlcl_bin_is_usable "${existing_sqlcl_value}"; then
      sqlcl_value="${existing_sqlcl_value}"
      wizard_append_preview_line "db_sqlcl_bin=${sqlcl_value}"
      wizard_append_answer 'db_sqlcl_bin' "${sqlcl_value}"
    fi
  fi
}

wizard_append_tns_preview() {
  local db_tns_alias="$1"
  local db_tns_admin="$2"

  wizard_append_preview_line 'db_connection_type=tns_wallet (preview only)'
  wizard_append_preview_line "db_wallet_dir=${db_tns_admin} (preview only)"
  wizard_append_preview_line "db_service_name=${db_tns_alias} (preview only)"
}

build_ssh_tunnel_command() {
  local ssh_host="$1"
  local ssh_key_path="$2"
  local local_forward_port="$3"
  local db_container="$4"
  local quoted_ssh_host=""
  local quoted_ssh_key_path=""
  local quoted_db_container=""
  local ssh_key_option=""

  printf -v quoted_ssh_host '%q' "${ssh_host}"

  if [[ -n "${ssh_key_path}" ]]; then
    printf -v quoted_ssh_key_path '%q' "${ssh_key_path}"
    ssh_key_option=" -i ${quoted_ssh_key_path}"
  fi

  if [[ -n "${db_container}" ]]; then
    printf -v quoted_db_container '%q' "${db_container}"
    printf 'REMOTE_DB_IP=$(ssh -n%s %s "sudo docker inspect %s --format '\''{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'\''") && [ -n "${REMOTE_DB_IP}" ] && ssh -n -f -N -o ExitOnForwardFailure=yes%s -L %s:${REMOTE_DB_IP}:1521 %s\n' \
      "${ssh_key_option}" \
      "${quoted_ssh_host}" \
      "${quoted_db_container}" \
      "${ssh_key_option}" \
      "${local_forward_port}" \
      "${quoted_ssh_host}"
    return 0
  fi

  printf 'ssh -n -f -N -o ExitOnForwardFailure=yes%s -L %s:127.0.0.1:1521 %s\n' \
    "${ssh_key_option}" \
    "${local_forward_port}" \
    "${quoted_ssh_host}"
}

wizard_entry_json() {
  local index
  local payload=""

  for index in "${!WIZARD_KEYS[@]}"; do
    payload+="${WIZARD_KEYS[${index}]}"
    payload+=$'\037'
    payload+="${WIZARD_VALUES[${index}]}"
    payload+=$'\036'
  done

  python3 - "${payload}" <<'PY'
import json
import sys

entry = {}

for item in sys.argv[1].split("\x1e"):
    if not item:
        continue
    key, value = item.split("\x1f", 1)
    if value == "":
        continue
    entry[key] = value

print(json.dumps(entry, separators=(",", ":")))
PY
}

persist_wizard_answers() {
  local env_alias="$1"
  local update_mode="${2:-merge-preserve-advanced}"
  local entry_json=""

  entry_json="$(wizard_entry_json)" || return 1
  write_conn_json_entry "$(root_conn_json_file)" "${env_alias}" "${entry_json}" "${update_mode}" "$(wizard_managed_keys_csv)" || return 1
  printf 'Final write summary for %s\n' "${env_alias}"
  printf 'Persisted minimal conn.json entry for %s using %s\n' "${env_alias}" "${update_mode}"
}

wizard_managed_keys_csv() {
  printf '%s\n' 'env_name,db_connection_mode,db_username,db_password,db_tns_alias,db_tns_admin,db_connect_string,db_schema,apex_workspace,java_home,db_sqlcl_bin,ssh_host,ssh_key_path,local_forward_port,db_service,db_container,ssh_tunnel_command,apex_builder_login_url,apex_builder_username,apex_builder_password,apex_browser_smoke_url,apex_browser_expect_text,apex_browser_expect_selector'
}

existing_env_update_mode() {
  local env_alias="$1"
  local conn_json_file

  conn_json_file="$(root_conn_json_file)"
  [[ -f "${conn_json_file}" ]] || return 1
  conn_json_has_env "${conn_json_file}" "${env_alias}" >/dev/null 2>&1
}

prompt_existing_env_action() {
  local action

  while true; do
    action="$(prompt_wizard_value \
      'existing_env_action' \
      'choose how to update this existing environment' \
      'overwrite-minimal, merge-preserve-advanced, cancel')" || return 1

    case "${action}" in
      overwrite-minimal|merge-preserve-advanced|cancel)
        printf '%s\n' "${action}"
        return 0
        ;;
    esac

    printf 'Unsupported existing env action: %s\n' "${action}" >&2
    printf 'Use overwrite-minimal, merge-preserve-advanced, or cancel.\n' >&2
  done
}

run_post_init_verification() {
  local env_alias="$1"
  local had_java_home=0
  local had_db_sqlcl_bin=0
  local previous_java_home="${JAVA_HOME:-}"
  local previous_db_sqlcl_bin="${DB_SQLCL_BIN:-}"
  local persisted_java_home=""
  local persisted_db_sqlcl_bin=""
  local deep_output=""
  local deep_status="FAIL"
  local sql_check_output=""
  local sql_check_status="OK"
  local combined_status="FAIL"

  if [[ -n "${JAVA_HOME+x}" ]]; then
    had_java_home=1
  fi

  if [[ -n "${DB_SQLCL_BIN+x}" ]]; then
    had_db_sqlcl_bin=1
  fi

  persisted_java_home="$(conn_json_scalar_value "${env_alias}" 'java_home' || true)"
  persisted_db_sqlcl_bin="$(conn_json_scalar_value "${env_alias}" 'db_sqlcl_bin' || true)"

  if [[ -n "${persisted_java_home}" ]]; then
    export JAVA_HOME="${persisted_java_home}"
  else
    unset JAVA_HOME
  fi

  if [[ -n "${persisted_db_sqlcl_bin}" ]]; then
    export DB_SQLCL_BIN="${persisted_db_sqlcl_bin}"
  else
    unset DB_SQLCL_BIN
  fi

  deep_output="$(capture_result_output 'check' "${env_alias}" '--deep')"
  deep_status="$(status_from_result_output "${deep_output}")"
  combined_status="${deep_status}"

  if [[ "${had_java_home}" -eq 1 ]]; then
    export JAVA_HOME="${previous_java_home}"
  else
    unset JAVA_HOME
  fi

  if [[ "${had_db_sqlcl_bin}" -eq 1 ]]; then
    export DB_SQLCL_BIN="${previous_db_sqlcl_bin}"
  else
    unset DB_SQLCL_BIN
  fi

  render_post_init_status_line "${combined_status}" "${env_alias}"
  printf 'Verification summaries for %s\n' "${env_alias}"
  printf '%s\n' "${deep_output}"

  if [[ "${deep_status}" == 'OK' ]]; then
    sql_check_output="$(capture_result_output 'sql-check' "${env_alias}")"
    sql_check_status="$(status_from_result_output "${sql_check_output}")"
    combined_status="$(merge_status "${combined_status}" "${sql_check_status}")"
    printf '%s\n' "${sql_check_output}"
  fi

  printf 'Combined status: %s\n' "${combined_status}"
  POST_INIT_COMBINED_STATUS="${combined_status}"
  return "$(status_exit_code "${combined_status}")"
}

emit_post_init_guidance() {
  local env_alias="$1"
  local combined_status="$2"

  printf 'Next-step guidance for %s\n' "${env_alias}"

  case "${combined_status}" in
    OK)
      printf 'Proceed with the requested environment action.\n'
      ;;
    WARN)
      printf 'Resolve warning details, then rerun tools/apex_ai.sh check %s --deep.\n' "${env_alias}"
      ;;
    *)
      printf 'Fix the failing verification details, then rerun tools/apex_ai.sh check %s --deep.\n' "${env_alias}"
      ;;
  esac
}

mask_connect_string_password() {
  local value="$1"
  local prefix=""
  local remainder=""
  local suffix=""

  if [[ "${value}" == */*@* ]]; then
    prefix="${value%%/*}"
    remainder="${value#*/}"
    suffix="${remainder##*@}"
    printf '%s/***@%s\n' "${prefix}" "${suffix}"
    return 0
  fi

  printf '%s\n' "${value}"
}

mask_wizard_value() {
  local key="$1"
  local value="$2"

  case "${key}" in
    db_password|apex_builder_password)
      [[ -n "${value}" ]] && printf '***\n' || printf '\n'
      ;;
    db_connect_string)
      mask_connect_string_password "${value}"
      ;;
    *)
      printf '%s\n' "${value}"
      ;;
  esac
}

wizard_append_optional_conn_value() {
  local env_alias="$1"
  local key="$2"
  local env_key=""
  local existing_value=""
  local value=""
  local preview_value=""

  env_key="$(printf '%s' "${key}" | tr '[:lower:]' '[:upper:]')"
  existing_value="$(conn_json_scalar_value_anycase "${env_alias}" "${key}" || true)"

  if [[ -n "${!env_key:-}" ]]; then
    value="${!env_key}"
  else
    value="${existing_value}"
  fi

  [[ -n "${value}" ]] || return 0

  wizard_append_answer "${key}" "${value}"
  preview_value="$(mask_wizard_value "${key}" "${value}")"
  wizard_append_preview_line "${key}=${preview_value}"
}

wizard_connection_metadata_autofill() {
  local env_alias="$1"

  wizard_append_optional_conn_value "${env_alias}" 'apex_builder_login_url'
  wizard_append_optional_conn_value "${env_alias}" 'apex_builder_username'
  wizard_append_optional_conn_value "${env_alias}" 'apex_builder_password'
  wizard_append_optional_conn_value "${env_alias}" 'apex_browser_smoke_url'
  wizard_append_optional_conn_value "${env_alias}" 'apex_browser_expect_text'
  wizard_append_optional_conn_value "${env_alias}" 'apex_browser_expect_selector'
}

prompt_init_mode() {
  local mode

  while true; do
    mode="$(prompt_wizard_value \
      'db_connection_mode' \
      'choose how this environment connects' \
      'direct, tns')" || return 1

    case "${mode}" in
      direct|tns)
        printf '%s\n' "${mode}"
        return 0
        ;;
    esac

    printf 'Unsupported init mode: %s\n' "${mode}" >&2
    printf 'Use direct or tns.\n' >&2
  done
}

prompt_direct_access_path() {
  local access_path

  while true; do
    access_path="$(prompt_wizard_value \
      'direct_access_path' \
      'choose how direct mode reaches the database' \
      'localhost, ssh, custom')" || return 1

    case "${access_path}" in
      localhost|ssh|custom)
        printf '%s\n' "${access_path}"
        return 0
        ;;
    esac

    printf 'Unsupported direct access path: %s\n' "${access_path}" >&2
    printf 'Use localhost, ssh, or custom.\n' >&2
  done
}

run_init_direct_wizard() {
  local env_alias="$1"
  local update_mode="${2:-merge-preserve-advanced}"
  local access_path=""
  local db_username=""
  local db_connect_string=""
  local ssh_host=""
  local ssh_key_path=""
  local local_forward_port=""
  local db_service=""
  local db_container=""
  local db_schema=""
  local apex_workspace=""
  local ssh_tunnel_command=""
  local verification_status=0

  access_path="$(prompt_direct_access_path)" || return 1

  case "${access_path}" in
    localhost)
      db_connect_string="$(prompt_wizard_value 'db_connect_string' 'EZ Connect string for local database access' 'dev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1, app_user/__fill_me__@localhost:1521/FREEPDB1')" || return 1
      ;;
    ssh)
      db_username="$(prompt_wizard_value 'db_username' 'database username used for login' 'dev_user, app_user')" || return 1
      ssh_host="$(prompt_wizard_value 'ssh_host' 'SSH login for the remote host' 'opc@1.2.3.4, ubuntu@db.example.com')" || return 1
      ssh_key_path="$(prompt_wizard_value 'ssh_key_path' 'optional SSH private key path when default SSH auth is not enough' '/Users/me/.ssh/id_rsa, /keys/dev.key' true)" || return 1
      local_forward_port="$(prompt_wizard_value 'local_forward_port' 'local port that forwards to the remote database' '15210, 15211')" || return 1
      db_service="$(prompt_wizard_value 'db_service' 'Oracle service name used after the tunnel opens' 'ORCLPDB1, FREEPDB1')" || return 1
      db_container="$(prompt_wizard_value 'db_container' 'optional remote Docker DB container used to derive tunnel target IP' 'db-main, db-replica' true)" || return 1
      db_connect_string="${db_username}/__fill_me__@127.0.0.1:${local_forward_port}/${db_service}"
      ;;
    custom)
      db_connect_string="$(prompt_wizard_value 'db_connect_string' 'custom Oracle connect string when you already have one' 'dev_user/__fill_me__@dbhost:1521/ORCLPDB1, dev_user/__fill_me__@//scan-host:1521/service')" || return 1
      ;;
  esac

  db_schema="$(prompt_wizard_value 'db_schema' 'default schema for this environment' 'dev, app_schema')" || return 1
  apex_workspace="$(prompt_wizard_value 'apex_workspace' 'APEX workspace name' 'DEV, APEXCN')" || return 1

  wizard_append_answer 'env_name' "${env_alias}"
  wizard_append_answer 'db_connection_mode' 'direct'
  if [[ -n "${db_username}" ]]; then
    wizard_append_answer 'db_username' "${db_username}"
  fi
  wizard_append_answer 'db_connect_string' "${db_connect_string}"
  wizard_append_answer 'db_schema' "${db_schema}"
  wizard_append_answer 'apex_workspace' "${apex_workspace}"

  if [[ "${access_path}" == 'ssh' ]]; then
    ssh_tunnel_command="$(build_ssh_tunnel_command "${ssh_host}" "${ssh_key_path}" "${local_forward_port}" "${db_container}")" || return 1
    wizard_append_answer 'ssh_host' "${ssh_host}"
    wizard_append_answer 'ssh_key_path' "${ssh_key_path}"
    wizard_append_answer 'local_forward_port' "${local_forward_port}"
    wizard_append_answer 'db_service' "${db_service}"
    wizard_append_answer 'db_container' "${db_container}"
    wizard_append_answer 'ssh_tunnel_command' "${ssh_tunnel_command}"
  fi

  wizard_emit_answers "${env_alias}"
  wizard_runtime_autofill "${env_alias}" "${update_mode}"
  wizard_connection_metadata_autofill "${env_alias}"
  wizard_emit_preview "${env_alias}"
  persist_wizard_answers "${env_alias}" "${update_mode}" || return 1
  set +e
  run_post_init_verification "${env_alias}"
  verification_status=$?
  set -e
  emit_post_init_guidance "${env_alias}" "${POST_INIT_COMBINED_STATUS:-FAIL}"
  return "${verification_status}"
}

run_init_tns_wizard() {
  local env_alias="$1"
  local update_mode="${2:-merge-preserve-advanced}"
  local db_username=""
  local db_password=""
  local db_tns_alias=""
  local db_tns_admin=""
  local db_schema=""
  local apex_workspace=""
  local verification_status=0

  db_username="$(prompt_wizard_value 'db_username' 'database username used for login' 'dev_user, app_user')" || return 1
  db_password="$(prompt_wizard_value 'db_password' 'database password for the selected username' 'use __fill_me__ now, paste the real password later')" || return 1
  db_tns_alias="$(prompt_wizard_value 'db_tns_alias' 'wallet TNS service name' 'DEVADB_HIGH, MYADB_LOW')" || return 1
  db_tns_admin="$(prompt_wizard_value 'db_tns_admin' 'wallet directory used by SQLcl' 'wallet/dev_adb, /opt/oracle/wallets/dev_adb')" || return 1
  db_schema="$(prompt_wizard_value 'db_schema' 'default schema for this environment' 'dev, app_schema')" || return 1
  apex_workspace="$(prompt_wizard_value 'apex_workspace' 'APEX workspace name' 'DEV, APEXCN')" || return 1

  wizard_append_answer 'env_name' "${env_alias}"
  wizard_append_answer 'db_connection_mode' 'tns'
  wizard_append_answer 'db_username' "${db_username}"
  wizard_append_answer 'db_password' "${db_password}"
  wizard_append_answer 'db_tns_alias' "${db_tns_alias}"
  wizard_append_answer 'db_tns_admin' "${db_tns_admin}"
  wizard_append_answer 'db_schema' "${db_schema}"
  wizard_append_answer 'apex_workspace' "${apex_workspace}"

  wizard_emit_answers "${env_alias}"
  wizard_append_tns_preview "${db_tns_alias}" "${db_tns_admin}"
  wizard_runtime_autofill "${env_alias}" "${update_mode}"
  wizard_connection_metadata_autofill "${env_alias}"
  wizard_emit_preview "${env_alias}"
  persist_wizard_answers "${env_alias}" "${update_mode}" || return 1
  set +e
  run_post_init_verification "${env_alias}"
  verification_status=$?
  set -e
  emit_post_init_guidance "${env_alias}" "${POST_INIT_COMBINED_STATUS:-FAIL}"
  return "${verification_status}"
}

run_init_action() {
  local env_alias="${1:-}"
  local mode="${2:-}"
  local update_mode="merge-preserve-advanced"

  if [[ "${env_alias}" == '-h' || "${env_alias}" == '--help' ]]; then
    apex_ai_init_usage
    return 0
  fi

  [[ -n "${env_alias}" ]] || {
    printf 'Missing environment alias for init.\n' >&2
    apex_ai_init_usage >&2
    return 1
  }

  if [[ $# -gt 2 ]]; then
    printf 'Unsupported invocation for init.\n' >&2
    apex_ai_init_usage >&2
    return 1
  fi

  normalize_env_alias "${env_alias}" >/dev/null

  WIZARD_KEYS=()
  WIZARD_VALUES=()
  PREVIEW_LINES=()

  if existing_env_update_mode "${env_alias}"; then
    update_mode="$(prompt_existing_env_action)" || return 1
    if [[ "${update_mode}" == 'cancel' ]]; then
      printf 'Cancelled init for existing environment: %s\n' "${env_alias}" >&2
      return 1
    fi
  fi

  if [[ -n "${mode}" ]]; then
    case "${mode}" in
      direct|tns)
        ;;
      *)
        printf 'Unsupported init mode: %s\n' "${mode}" >&2
        printf 'Use direct or tns.\n' >&2
        apex_ai_init_usage >&2
        return 1
        ;;
    esac
  else
    mode="$(prompt_init_mode)" || return 1
  fi

  case "${mode}" in
    direct)
      run_init_direct_wizard "${env_alias}" "${update_mode}"
      ;;
    tns)
      run_init_tns_wizard "${env_alias}" "${update_mode}"
      ;;
  esac
}

require_dispatch_env_alias() {
  local action="$1"
  local env_alias="${2:-}"
  local conn_json_file=""

  [[ -n "${env_alias}" ]] || {
    printf 'Missing environment alias for %s.\n' "${action}" >&2
    apex_ai_usage >&2
    return 1
  }

  env_alias="$(normalize_env_alias "${env_alias}")" || return 1
  conn_json_file="$(resolve_conn_json_file_for_env "${env_alias}" || true)"

  if [[ -z "${conn_json_file}" ]]; then
    printf 'Missing environment config for alias: %s\n' "${env_alias}" >&2
    printf 'Expected %s#%s\n' "$(root_conn_json_file)" "${env_alias}" >&2
    return 1
  fi

  printf '%s\n' "${env_alias}"
}

resolve_dispatch_app_id_from_env() {
  local env_alias="$1"
  local conn_json_file=""

  conn_json_file="$(resolve_conn_json_file_for_env "${env_alias}" || true)"
  [[ -n "${conn_json_file}" ]] || {
    printf 'Missing environment config for alias: %s\n' "${env_alias}" >&2
    return 1
  }

  python3 - "${conn_json_file}" "${env_alias}" "${LOCAL_CONFIG_FILE:-}" <<'PY'
import json
import os
import sys

path, env_alias = sys.argv[1:3]
local_path = sys.argv[3] if len(sys.argv) > 3 else ""

with open(path, "r", encoding="utf-8") as handle:
    payload = json.load(handle)

entry = payload.get(env_alias)
if not isinstance(entry, dict):
    raise SystemExit(1)

if local_path and os.path.exists(local_path) and os.path.abspath(local_path) != os.path.abspath(path):
    with open(local_path, "r", encoding="utf-8") as handle:
        local_payload = json.load(handle)
    local_entry = local_payload.get(env_alias)
    if isinstance(local_entry, dict):
        merged = dict(entry)
        merged.update(local_entry)
        entry = merged

for key in ("apex_app_id", "app_id", "target_app_id"):
    value = entry.get(key)
    if value is not None and str(value).strip():
        print(str(value).strip())
        raise SystemExit(0)

raise SystemExit(1)
PY
}

require_or_default_app_id() {
  local action="$1"
  local env_alias="$2"
  local provided="${3:-}"
  local label="${4:-Application id}"
  local app_id=""

  if [[ -n "${provided}" ]]; then
    require_dispatch_numeric "${provided}" "${label}" || return 1
    printf '%s\n' "${provided}"
    return 0
  fi

  app_id="$(resolve_dispatch_app_id_from_env "${env_alias}" 2>/dev/null)" || {
    printf 'Missing %s for %s and no apex_app_id is configured for alias: %s\n' \
      "${label}" \
      "${action}" \
      "${env_alias}" >&2
    apex_ai_usage >&2
    return 1
  }

  require_dispatch_numeric "${app_id}" "${label}" || return 1
  printf '%s\n' "${app_id}"
}

require_dispatch_numeric() {
  local value="${1:-}"
  local label="$2"

  [[ "${value}" =~ ^[0-9]+$ ]] || {
    printf '%s must be numeric: %s\n' "${label}" "${value}" >&2
    return 1
  }
}

require_dispatch_app_dir() {
  local env_alias="$1"
  local app_id="$2"
  local app_code=""
  local target_dir=""

  app_code="$(resolve_app_code_from_app_id "${app_id}")" || return 1
  target_dir="$(app_dir "${app_code}" "${env_alias}")"

  [[ -d "${target_dir}" ]] || {
    printf 'Missing application directory: %s\n' "${target_dir}" >&2
    printf 'Export or create %s first.\n' "${target_dir#${ROOT_DIR}/}" >&2
    return 1
  }
}

run_dispatch_script() {
  local script_path="$1"
  shift

  bash "${script_path}" "$@"
}

warn_dispatch_sync_failure() {
  local summary="$1"
  local step="$2"

  printf 'WARN: %s succeeded but %s failed.\n' "${summary}" "${step}" >&2
}

run_dispatch_with_activity_sync() {
  local activity="$1"
  local summary="$2"
  shift
  shift

  if run_dispatch_script "$@"; then
    update_current_task_activity "${activity}" "success" || warn_dispatch_sync_failure "${summary}" "current task activity sync"
    append_feature_markdown_section_line "Implementation Log" "${summary}: success" || warn_dispatch_sync_failure "${summary}" "feature markdown sync"
    sync_feature_markdown_current_status || warn_dispatch_sync_failure "${summary}" "feature status markdown sync"
    return 0
  fi

  update_current_task_activity "${activity}" "failure" || true
  append_feature_markdown_section_line "Implementation Log" "${summary}: failure" || true
  sync_feature_markdown_current_status || true
  return 1
}

run_export_app_action() {
  local env_alias=""
  local app_id=""
  local db_export_mode=""

  env_alias="$(require_dispatch_env_alias 'export-app' "${1:-}")" || return 1

  case $# in
    1)
      app_id="$(require_or_default_app_id 'export-app' "${env_alias}" "" 'Application id')" || return 1
      ;;
    2)
      if [[ "${2:-}" == 'nodb' ]]; then
        app_id="$(require_or_default_app_id 'export-app' "${env_alias}" "" 'Application id')" || return 1
        db_export_mode="${2:-}"
      else
        app_id="$(require_or_default_app_id 'export-app' "${env_alias}" "${2:-}" 'Application id')" || return 1
      fi
      ;;
    3)
      app_id="$(require_or_default_app_id 'export-app' "${env_alias}" "${2:-}" 'Application id')" || return 1
      db_export_mode="${3:-}"
      ;;
    *)
      printf 'Unsupported invocation for export-app.\n' >&2
      apex_ai_usage >&2
      return 1
      ;;
  esac

  if [[ -n "${db_export_mode}" && "${db_export_mode}" != 'nodb' ]]; then
    printf 'Unsupported third argument: %s (expected nodb)\n' "${db_export_mode}" >&2
    return 1
  fi

  printf 'Dispatching export-app for %s/f%s\n' "${env_alias}" "${app_id}"
  if [[ -n "${db_export_mode}" ]]; then
    run_dispatch_with_activity_sync "export" "Export app ${env_alias}/f${app_id}" "${SCRIPT_DIR}/export_apex_app.sh" "${env_alias}" "${app_id}" "${db_export_mode}"
    return $?
  fi

  run_dispatch_with_activity_sync "export" "Export app ${env_alias}/f${app_id}" "${SCRIPT_DIR}/export_apex_app.sh" "${env_alias}" "${app_id}"
}

run_export_page_action() {
  local env_alias=""
  local app_id=""
  local page_id=""

  env_alias="$(require_dispatch_env_alias 'export-page' "${1:-}")" || return 1

  case $# in
    2)
      app_id="$(require_or_default_app_id 'export-page' "${env_alias}" "" 'Application id')" || return 1
      page_id="${2:-}"
      ;;
    3)
      app_id="$(require_or_default_app_id 'export-page' "${env_alias}" "${2:-}" 'Application id')" || return 1
      page_id="${3:-}"
      ;;
    *)
      printf 'Unsupported invocation for export-page.\n' >&2
      apex_ai_usage >&2
      return 1
      ;;
  esac

  [[ -n "${page_id}" ]] || {
    printf 'Missing page id for export-page.\n' >&2
    apex_ai_usage >&2
    return 1
  }
  require_dispatch_numeric "${page_id}" 'Page id' || return 1
  require_dispatch_app_dir "${env_alias}" "${app_id}" || return 1

  printf 'Dispatching export-page for %s/f%s page %s\n' "${env_alias}" "${app_id}" "${page_id}"
  run_dispatch_with_activity_sync "export" "Export page ${env_alias}/f${app_id} page ${page_id}" "${SCRIPT_DIR}/export_apex_page.sh" "${env_alias}" "${app_id}" "${page_id}"
}

run_import_app_action() {
  local source_env_alias=""
  local source_app_id=""
  local target_env_alias=""
  local target_app_id=""

  source_env_alias="$(require_dispatch_env_alias 'import-app' "${1:-}")" || return 1

  case $# in
    1)
      source_app_id="$(require_or_default_app_id 'import-app' "${source_env_alias}" "" 'Source app id')" || return 1
      target_env_alias="${source_env_alias}"
      ;;
    2)
      if [[ "${2:-}" =~ ^[0-9]+$ ]]; then
        source_app_id="$(require_or_default_app_id 'import-app' "${source_env_alias}" "${2:-}" 'Source app id')" || return 1
        target_env_alias="${source_env_alias}"
      else
        source_app_id="$(require_or_default_app_id 'import-app' "${source_env_alias}" "" 'Source app id')" || return 1
        target_env_alias="$(require_dispatch_env_alias 'import-app' "${2:-}")" || return 1
      fi
      ;;
    3)
      if [[ "${2:-}" =~ ^[0-9]+$ ]]; then
        source_app_id="$(require_or_default_app_id 'import-app' "${source_env_alias}" "${2:-}" 'Source app id')" || return 1
        if [[ "${3:-}" =~ ^[0-9]+$ ]]; then
          target_env_alias="${source_env_alias}"
          target_app_id="${3:-}"
        else
          target_env_alias="$(require_dispatch_env_alias 'import-app' "${3:-}")" || return 1
        fi
      else
        source_app_id="$(require_or_default_app_id 'import-app' "${source_env_alias}" "" 'Source app id')" || return 1
        target_env_alias="$(require_dispatch_env_alias 'import-app' "${2:-}")" || return 1
        target_app_id="${3:-}"
        require_dispatch_numeric "${target_app_id}" 'Target app id' || return 1
      fi
      ;;
    4)
      source_app_id="$(require_or_default_app_id 'import-app' "${source_env_alias}" "${2:-}" 'Source app id')" || return 1
      [[ "${3:-}" =~ ^[0-9]+$ ]] && {
        printf 'Cross-environment import-app requires <target_env_alias> before target_app_id.\n' >&2
        apex_ai_usage >&2
        return 1
      }
      target_env_alias="$(require_dispatch_env_alias 'import-app' "${3:-}")" || return 1
      target_app_id="${4:-}"
      require_dispatch_numeric "${target_app_id}" 'Target app id' || return 1
      ;;
    *)
      printf 'Unsupported invocation for import-app.\n' >&2
      apex_ai_usage >&2
      return 1
      ;;
  esac

  require_dispatch_numeric "${source_app_id}" 'Source app id' || return 1

  require_dispatch_app_dir "${source_env_alias}" "${source_app_id}" || return 1

  if [[ -n "${target_app_id}" ]]; then
    printf 'Dispatching import-app from %s/f%s to %s/f%s\n' \
      "${source_env_alias}" \
      "${source_app_id}" \
      "${target_env_alias}" \
      "${target_app_id}"
    run_dispatch_with_activity_sync "import" "Import app ${source_env_alias}/f${source_app_id} to ${target_env_alias}/f${target_app_id}" "${SCRIPT_DIR}/import_apex_app.sh" "${source_env_alias}" "${source_app_id}" "${target_env_alias}" "${target_app_id}"
    return $?
  fi

  if [[ "${target_env_alias}" == "${source_env_alias}" ]]; then
    printf 'Dispatching import-app from %s/f%s to %s/f%s\n' \
      "${source_env_alias}" \
      "${source_app_id}" \
      "${target_env_alias}" \
      "${source_app_id}"
    run_dispatch_with_activity_sync "import" "Import app ${source_env_alias}/f${source_app_id} to ${target_env_alias}/f${source_app_id}" "${SCRIPT_DIR}/import_apex_app.sh" "${source_env_alias}" "${source_app_id}"
    return $?
  fi

  printf 'Dispatching import-app from %s/f%s to %s (auto app id)\n' \
    "${source_env_alias}" \
    "${source_app_id}" \
    "${target_env_alias}"
  run_dispatch_with_activity_sync "import" "Import app ${source_env_alias}/f${source_app_id} to ${target_env_alias}" "${SCRIPT_DIR}/import_apex_app.sh" "${source_env_alias}" "${source_app_id}" "${target_env_alias}"
}

run_import_page_action() {
  local env_alias=""
  local source_app_id=""
  local page_id=""
  local target_app_id=""
  local target_page_id=""
  local summary_target=""

  env_alias="$(require_dispatch_env_alias 'import-page' "${1:-}")" || return 1

  case $# in
    2)
      source_app_id="$(require_or_default_app_id 'import-page' "${env_alias}" "" 'Source app id')" || return 1
      page_id="${2:-}"
      ;;
    3)
      source_app_id="$(require_or_default_app_id 'import-page' "${env_alias}" "${2:-}" 'Source app id')" || return 1
      page_id="${3:-}"
      ;;
    4)
      source_app_id="$(require_or_default_app_id 'import-page' "${env_alias}" "${2:-}" 'Source app id')" || return 1
      page_id="${3:-}"
      target_app_id="${4:-}"
      ;;
    5)
      source_app_id="$(require_or_default_app_id 'import-page' "${env_alias}" "${2:-}" 'Source app id')" || return 1
      page_id="${3:-}"
      target_app_id="${4:-}"
      target_page_id="${5:-}"
      ;;
    *)
      printf 'Unsupported invocation for import-page.\n' >&2
      apex_ai_usage >&2
      return 1
      ;;
  esac

  [[ -n "${page_id}" ]] || {
    printf 'Missing page id for import-page.\n' >&2
    apex_ai_usage >&2
    return 1
  }
  require_dispatch_numeric "${page_id}" 'Page id' || return 1
  if [[ -n "${target_app_id}" ]]; then
    require_dispatch_numeric "${target_app_id}" 'Target app id' || return 1
  fi
  if [[ -n "${target_page_id}" ]]; then
    require_dispatch_numeric "${target_page_id}" 'Target page id' || return 1
  fi
  require_dispatch_app_dir "${env_alias}" "${source_app_id}" || return 1

  summary_target="page ${page_id}"
  if [[ -n "${target_app_id}" || -n "${target_page_id}" ]]; then
    summary_target="page ${page_id}"
    [[ -n "${target_app_id}" ]] && summary_target+=" -> app ${target_app_id}"
    [[ -n "${target_page_id}" ]] && summary_target+=" page ${target_page_id}"
  fi

  printf 'Dispatching import-page for %s/f%s %s\n' "${env_alias}" "${source_app_id}" "${summary_target}"

  if [[ $# -eq 2 || $# -eq 3 ]]; then
    run_dispatch_with_activity_sync "import" "Import page ${page_id} into ${env_alias}/f${source_app_id}" "${SCRIPT_DIR}/import_apex_page.sh" "${env_alias}" "${source_app_id}" "${page_id}"
    return $?
  fi
  if [[ $# -eq 4 ]]; then
    run_dispatch_with_activity_sync "import" "Import page ${page_id} into ${env_alias}/f${target_app_id}" "${SCRIPT_DIR}/import_apex_page.sh" "${env_alias}" "${source_app_id}" "${page_id}" "${target_app_id}"
    return $?
  fi

  run_dispatch_with_activity_sync "import" "Import page ${page_id} into ${env_alias}/f${target_app_id} page ${target_page_id}" "${SCRIPT_DIR}/import_apex_page.sh" "${env_alias}" "${source_app_id}" "${page_id}" "${target_app_id}" "${target_page_id}"
}

run_rebuild_test_from_single_sql_action() {
  local source_app_id="${1:-}"
  local target_app_id="${2:-}"

  [[ -n "${source_app_id}" ]] || {
    printf 'Missing source app id for rebuild-test-from-single-sql.\n' >&2
    apex_ai_usage >&2
    return 1
  }
  [[ -n "${target_app_id}" ]] || {
    printf 'Missing target app id for rebuild-test-from-single-sql.\n' >&2
    apex_ai_usage >&2
    return 1
  }
  [[ $# -eq 2 ]] || {
    printf 'Unsupported invocation for rebuild-test-from-single-sql.\n' >&2
    apex_ai_usage >&2
    return 1
  }

  require_dispatch_numeric "${source_app_id}" 'Source app id' || return 1
  require_dispatch_numeric "${target_app_id}" 'Target app id' || return 1
  require_dispatch_app_dir "dev@oci" "${source_app_id}" || return 1

  printf 'Dispatching rebuild-test-from-single-sql from dev@oci/f%s to test@oci/f%s\n' "${source_app_id}" "${target_app_id}"
  run_dispatch_with_activity_sync \
    "deploy" \
    "Rebuild test@oci/f${target_app_id} from dev@oci/f${source_app_id} via single SQL" \
    "${SCRIPT_DIR}/rebuild_test_from_single_sql.sh" "${source_app_id}" "${target_app_id}"
}

run_feature_start_action() {
  local env_alias=""
  local app_id=""
  local feature_slug=""
  local normalized_slug=""
  local business_goal=""
  local acceptance_criteria=""
  local feature_file=""

  env_alias="$(require_dispatch_env_alias 'feature-start' "${1:-}")" || return 1

  case $# in
    4)
      app_id="$(require_or_default_app_id 'feature-start' "${env_alias}" "" 'Application id')" || return 1
      feature_slug="${2:-}"
      business_goal="${3:-}"
      acceptance_criteria="${4:-}"
      ;;
    5)
      app_id="$(require_or_default_app_id 'feature-start' "${env_alias}" "${2:-}" 'Application id')" || return 1
      feature_slug="${3:-}"
      business_goal="${4:-}"
      acceptance_criteria="${5:-}"
      ;;
    *)
      printf 'Unsupported invocation for feature-start.\n' >&2
      apex_ai_usage >&2
      return 1
      ;;
  esac

  [[ -n "${feature_slug}" ]] || {
    printf 'Missing feature slug for feature-start.\n' >&2
    apex_ai_usage >&2
    return 1
  }
  [[ -n "${business_goal}" ]] || {
    printf 'Missing business goal for feature-start.\n' >&2
    apex_ai_usage >&2
    return 1
  }
  [[ -n "${acceptance_criteria}" ]] || {
    printf 'Missing acceptance criteria for feature-start.\n' >&2
    apex_ai_usage >&2
    return 1
  }

  require_dispatch_app_dir "${env_alias}" "${app_id}" || return 1
  normalized_slug="$(normalize_feature_slug "${feature_slug}")" || {
    printf 'Unable to normalize feature slug: %s\n' "${feature_slug}" >&2
    return 1
  }

  feature_file="$(build_feature_file_path "${env_alias}" "${app_id}" "${normalized_slug}")" || return 1
  create_feature_markdown "${feature_file}" "${normalized_slug}" "${business_goal}" "${acceptance_criteria}" || return 1
  write_current_task_context "${feature_file}" "${env_alias}" "${app_id}" "NEW" || return 1
  local connectivity_record=""
  connectivity_record="$(check_env_quick_probe "${env_alias}")"
  if [[ "$(printf '%s\n' "${connectivity_record}" | cut -d '|' -f5)" == "OK" ]]; then
    update_current_task_state "NEW" "PASSED" "" "" "" "" || return 1
  else
    update_current_task_state "NEW" "FAILED" "" "" "" "" || return 1
  fi
  sync_feature_markdown_current_status || return 1

  printf 'Feature file ready: %s\n' "${feature_file#${ROOT_DIR}/}"
  render_result_text 'check' "${connectivity_record}"
  [[ "$(printf '%s\n' "${connectivity_record}" | cut -d '|' -f5)" == "OK" ]]
}

run_feature_analyze_action() {
  local proposed_pages="${1:-}"
  local proposed_db_objects="${2:-}"

  [[ $# -eq 2 ]] || {
    printf 'Unsupported invocation for feature-analyze.\n' >&2
    apex_ai_usage >&2
    return 1
  }

  [[ -n "${proposed_pages}" ]] || {
    printf 'Missing impacted pages for feature-analyze.\n' >&2
    apex_ai_usage >&2
    return 1
  }
  [[ -n "${proposed_db_objects}" ]] || {
    printf 'Missing impacted DB objects for feature-analyze.\n' >&2
    apex_ai_usage >&2
    return 1
  }

  update_current_task_analysis "${proposed_pages}" "${proposed_db_objects}" || return 1
  sync_feature_markdown_analysis || return 1
  sync_feature_markdown_current_status || return 1
  printf 'Feature analysis recorded: pages=%s db_objects=%s\n' "${proposed_pages}" "${proposed_db_objects}"
}

run_feature_confirm_action() {
  local confirmed_pages="${1:-}"
  local confirmed_db_objects="${2:-}"

  [[ $# -eq 2 ]] || {
    printf 'Unsupported invocation for feature-confirm.\n' >&2
    apex_ai_usage >&2
    return 1
  }

  [[ -n "${confirmed_pages}" ]] || {
    printf 'Missing confirmed pages for feature-confirm.\n' >&2
    apex_ai_usage >&2
    return 1
  }
  [[ -n "${confirmed_db_objects}" ]] || {
    printf 'Missing confirmed DB objects for feature-confirm.\n' >&2
    apex_ai_usage >&2
    return 1
  }

  update_current_task_scope_confirmation "${confirmed_pages}" "${confirmed_db_objects}" || return 1
  sync_feature_markdown_scope_confirmation || return 1
  sync_feature_markdown_current_status || return 1
  printf 'Feature scope confirmed: pages=%s db_objects=%s\n' "${confirmed_pages}" "${confirmed_db_objects}"
}

run_feature_status_action() {
  [[ $# -eq 0 ]] || {
    printf 'Unsupported invocation for feature-status.\n' >&2
    apex_ai_usage >&2
    return 1
  }

  render_feature_status
}

run_feature_next_action() {
  [[ $# -eq 0 ]] || {
    printf 'Unsupported invocation for feature-next.\n' >&2
    apex_ai_usage >&2
    return 1
  }

  render_feature_next
}

run_task_state_action() {
  local status_input="${1:-}"
  local status=""
  local connectivity=""
  local scope_confirmation=""
  local implementation=""
  local verification=""
  local delivery=""

  [[ $# -gt 0 ]] || {
    printf 'Missing task status for task-state.\n' >&2
    apex_ai_usage >&2
    return 1
  }

  status="$(normalize_task_status "${status_input}")" || return 1
  shift

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --connectivity)
        shift
        connectivity="$(normalize_stage_status "${1:-}")" || return 1
        ;;
      --scope-confirmation)
        shift
        scope_confirmation="$(normalize_stage_status "${1:-}")" || return 1
        ;;
      --implementation)
        shift
        implementation="$(normalize_stage_status "${1:-}")" || return 1
        ;;
      --verification)
        shift
        verification="$(normalize_stage_status "${1:-}")" || return 1
        ;;
      --delivery)
        shift
        delivery="$(normalize_stage_status "${1:-}")" || return 1
        ;;
      *)
        printf 'Unsupported invocation for task-state: %s\n' "$1" >&2
        apex_ai_usage >&2
        return 1
        ;;
    esac
    shift
  done

  update_current_task_state "${status}" "${connectivity}" "${scope_confirmation}" "${implementation}" "${verification}" "${delivery}" || return 1
  sync_feature_markdown_current_status || return 1
  printf 'Current task state updated: %s\n' "${status}"
}

run_gate_action() {
  local env_alias=""
  local app_id=""
  local gate=""

  env_alias="$(require_dispatch_env_alias 'gate' "${1:-}")" || return 1

  case $# in
    2)
      app_id="$(require_or_default_app_id 'gate' "${env_alias}" "" 'Application id')" || return 1
      gate="${2:-}"
      ;;
    3)
      app_id="$(require_or_default_app_id 'gate' "${env_alias}" "${2:-}" 'Application id')" || return 1
      gate="${3:-}"
      ;;
    *)
      printf 'Unsupported invocation for gate.\n' >&2
      apex_ai_usage >&2
      return 1
      ;;
  esac

  [[ -n "${gate}" ]] || {
    printf 'Missing gate name for gate.\n' >&2
    apex_ai_usage >&2
    return 1
  }

  gate="$(normalize_gate_name "${gate}")" || return 1
  require_dispatch_app_dir "${env_alias}" "${app_id}" || return 1

  run_dispatch_script "${SCRIPT_DIR}/run_gate.sh" "${env_alias}" "${app_id}" "${gate}" || return $?
  append_feature_markdown_section_line "Verification" "Gate ${gate}: synced from ai-context.json"
  sync_feature_markdown_current_status || return 1
  printf 'Synchronized feature status from ai-context.json\n'
}

emit_records() {
  local action="$1"
  local json_mode="$2"
  shift 2
  local records=("$@")
  local overall_status="OK"
  local record=""
  local record_status_value=""

  for record in "${records[@]}"; do
    record_status_value="$(printf '%s\n' "${record}" | cut -d '|' -f5)"
    overall_status="$(merge_status "${overall_status}" "${record_status_value}")"
  done

  if [[ "${json_mode}" == "true" ]]; then
    if [[ "${#records[@]}" -eq 1 ]]; then
      render_result_json "${action}" "${records[0]}"
    else
      render_batch_json "${action}" "${overall_status}" "$(status_exit_code "${overall_status}")" "${records[@]}"
    fi
  else
    for record in "${records[@]}"; do
      render_result_text "${action}" "${record}"
    done
  fi

  return "$(status_exit_code "${overall_status}")"
}

run_check_env_action() {
  local env_alias=""
  local deep_mode="false"
  local json_mode="false"
  local records=()
  local record=""
  local all_envs=()
  local env_inventory=""
  local env_name=""

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --deep)
        deep_mode="true"
        ;;
      --json)
        json_mode="true"
        ;;
      -h|--help)
        apex_ai_usage
        return 0
        ;;
      *)
        if [[ -z "${env_alias}" ]]; then
          env_alias="$1"
        else
          printf 'Unsupported invocation. Use --help for examples.\n' >&2
          return 1
        fi
        ;;
    esac
    shift
  done

  if [[ -n "${env_alias}" ]]; then
    if [[ "${deep_mode}" == "true" ]]; then
      record="$(check_env_deep_probe "${env_alias}")"
    else
      record="$(check_env_quick_probe "${env_alias}")"
    fi
    if [[ "$(printf '%s\n' "${record}" | cut -d '|' -f5)" == "OK" ]]; then
      update_connectivity_stage_if_current_task_matches "${env_alias}" "" "PASSED"
    else
      update_connectivity_stage_if_current_task_matches "${env_alias}" "" "FAILED"
    fi
    sync_feature_markdown_current_status || return 1
    records=("${record}")
    emit_records 'check' "${json_mode}" "${records[@]}"
    return $?
  fi

  env_inventory="$(list_conn_json_envs)" || return 1

  while IFS= read -r env_name; do
    [[ -n "${env_name}" ]] || continue
    all_envs+=("${env_name}")
  done <<EOF
${env_inventory}
EOF

  for env_name in "${all_envs[@]}"; do
    if [[ "${deep_mode}" == "true" ]]; then
      records+=("$(check_env_deep_probe "${env_name}")")
    else
      records+=("$(check_env_quick_probe "${env_name}")")
    fi
  done

  emit_records 'check' "${json_mode}" "${records[@]}"
}

run_sql_check_action() {
  local env_alias=""
  local app_id=""
  local json_mode="false"
  local record=""

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --json)
        json_mode="true"
        ;;
      -h|--help)
        apex_ai_usage
        return 0
        ;;
      *)
        if [[ -z "${env_alias}" ]]; then
          env_alias="$1"
        elif [[ -z "${app_id}" ]]; then
          app_id="$(require_numeric_app_id "$1")" || return 1
        else
          printf 'Unsupported invocation. Use --help for examples.\n' >&2
          return 1
        fi
        ;;
    esac
    shift
  done

  [[ -n "${env_alias}" ]] || {
    apex_ai_usage >&2
    return 1
  }

  env_alias="$(require_dispatch_env_alias 'sql-check' "${env_alias}")" || return 1
  if [[ -z "${app_id}" ]]; then
    app_id="$(resolve_dispatch_app_id_from_env "${env_alias}" 2>/dev/null || true)"
    if [[ -n "${app_id}" ]]; then
      require_dispatch_numeric "${app_id}" 'Application id' || return 1
    fi
  fi

  record="$(sql_check_probe "${env_alias}" "${app_id}")"
  if [[ "$(printf '%s\n' "${record}" | cut -d '|' -f5)" == "OK" ]]; then
    update_connectivity_stage_if_current_task_matches "${env_alias}" "${app_id}" "PASSED"
  else
    update_connectivity_stage_if_current_task_matches "${env_alias}" "${app_id}" "FAILED"
  fi
  sync_feature_markdown_current_status || return 1
  emit_records 'sql-check' "${json_mode}" "${record}"
}

run_usql_check_action() {
  local env_alias=""
  local json_mode="false"
  local record=""

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --json)
        json_mode="true"
        ;;
      -h|--help)
        apex_ai_usage
        return 0
        ;;
      *)
        if [[ -z "${env_alias}" ]]; then
          env_alias="$1"
        else
          printf 'Unsupported invocation. Use --help for examples.\n' >&2
          return 1
        fi
        ;;
    esac
    shift
  done

  [[ -n "${env_alias}" ]] || {
    apex_ai_usage >&2
    return 1
  }

  record="$(usql_check_probe "${env_alias}")"
  if [[ "$(printf '%s\n' "${record}" | cut -d '|' -f5)" == "OK" ]]; then
    update_connectivity_stage_if_current_task_matches "${env_alias}" "" "PASSED"
  else
    update_connectivity_stage_if_current_task_matches "${env_alias}" "" "FAILED"
  fi
  sync_feature_markdown_current_status || return 1
  emit_records 'usql-check' "${json_mode}" "${record}"
}

run_app_version_action() {
  "${SCRIPT_DIR}/app_version.sh" "$@"
}

main() {
  local action="${1:-}"

  [[ $# -gt 0 ]] || {
    apex_ai_usage >&2
    return 1
  }

  shift

  case "${action}" in
    init)
      run_init_action "$@"
      ;;
    check)
      run_check_env_action "$@"
      ;;
    check-env)
      printf 'check-env has been removed. Use tools/apex_ai.sh check ... instead.\n' >&2
      return 1
      ;;
    sql-check)
      run_sql_check_action "$@"
      ;;
    usql-check)
      run_usql_check_action "$@"
      ;;
    feature-start)
      run_feature_start_action "$@"
      ;;
    feature-analyze)
      run_feature_analyze_action "$@"
      ;;
    feature-confirm)
      run_feature_confirm_action "$@"
      ;;
    feature-next)
      run_feature_next_action "$@"
      ;;
    feature-status)
      run_feature_status_action "$@"
      ;;
    task-state)
      run_task_state_action "$@"
      ;;
    gate)
      run_gate_action "$@"
      ;;
    export-app)
      run_export_app_action "$@"
      ;;
    export-page)
      run_export_page_action "$@"
      ;;
    import-app)
      run_import_app_action "$@"
      ;;
    import-page)
      run_import_page_action "$@"
      ;;
    rebuild-test-from-single-sql)
      run_rebuild_test_from_single_sql_action "$@"
      ;;
    app-version)
      run_app_version_action "$@"
      ;;
    -h|--help)
      apex_ai_usage
      ;;
    *)
      printf 'Unsupported action: %s\n' "${action}" >&2
      apex_ai_usage >&2
      return 1
      ;;
  esac
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
