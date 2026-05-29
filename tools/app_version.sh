#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/app_version.sh list
  tools/app_version.sh show <env_alias> <app_id>
  tools/app_version.sh set <env_alias> <app_id> <version> [app_name]
  tools/app_version.sh tag <env_alias> <app_id> [version]

Examples:
  tools/app_version.sh list
  tools/app_version.sh show sales-tools@test 138
  tools/app_version.sh set sales-tools@test 138 1.1.0 "Sales Tools"
  tools/app_version.sh tag sales-tools@test 138
EOF
}

finish() {
  local status="$1"

  return "${status}" 2>/dev/null || exit "${status}"
}

manifest_path() {
  local env_alias="$1"
  local app_id="$2"
  local app_code

  app_code="$(resolve_app_code_from_app_id "${app_id}")" || return 1
  printf '%s/app.json\n' "$(app_dir "${app_code}" "${env_alias}")"
}

require_app_manifest() {
  local env_alias="$1"
  local app_id="$2"
  local path

  path="$(manifest_path "${env_alias}" "${app_id}")" || return 1
  [[ -f "${path}" ]] || {
    printf 'Missing app version manifest: %s\n' "${path#${ROOT_DIR}/}" >&2
    return 1
  }

  printf '%s\n' "${path}"
}

validate_version() {
  local version="$1"

  [[ "${version}" =~ ^[0-9]+\.[0-9]+\.[0-9]+([-.+][0-9A-Za-z.-]+)?$ ]] || {
    printf 'Version must be SemVer-like, for example 1.2.3 or 1.2.3-rc.1: %s\n' "${version}" >&2
    return 1
  }
}

default_tag_prefix() {
  local env_alias="$1"
  local app_id="$2"
  local app_code
  local env_slug

  app_code="$(resolve_app_code_from_app_id "${app_id}")" || return 1
  env_slug="$(printf '%s' "${env_alias}" | tr '[:upper:]' '[:lower:]' | tr '@._' '---' | tr -cs 'a-z0-9-' '-' | sed -E 's/^-+|-+$//g')"
  printf '%s-%s\n' "${env_slug}" "${app_code}"
}

show_manifest() {
  local path="$1"

  python3 - "${path}" <<'PY'
import json
import sys

path = sys.argv[1]
with open(path, "r", encoding="utf-8") as handle:
    payload = json.load(handle)

for key in ("app_name", "env_alias", "app_id", "app_code", "version", "tag_prefix", "release_single"):
    value = payload.get(key)
    if value is not None:
        print(f"{key}: {value}")
PY
}

write_manifest() {
  local path="$1"
  local env_alias="$2"
  local app_id="$3"
  local version="$4"
  local app_name="$5"
  local tag_prefix="$6"
  local app_code

  app_code="$(resolve_app_code_from_app_id "${app_id}")" || return 1
  mkdir -p "$(dirname "${path}")"

  python3 - "${path}" "${env_alias}" "${app_id}" "${app_code}" "${version}" "${app_name}" "${tag_prefix}" <<'PY'
import json
import pathlib
import sys
from datetime import date

path = pathlib.Path(sys.argv[1])
env_alias = sys.argv[2]
app_id = int(sys.argv[3])
app_code = sys.argv[4]
version = sys.argv[5]
app_name = sys.argv[6]
tag_prefix = sys.argv[7]

payload = {}
if path.exists():
    payload = json.loads(path.read_text(encoding="utf-8"))
    if not isinstance(payload, dict):
        raise SystemExit(f"Manifest root must be an object: {path}")

payload.update({
    "env_alias": env_alias,
    "app_id": app_id,
    "app_code": app_code,
    "app_name": app_name or payload.get("app_name") or app_code,
    "version": version,
    "tag_prefix": tag_prefix or payload.get("tag_prefix") or f"{env_alias.replace('@', '-')}-{app_code}",
    "release_single": f"release-single/{app_code}.sql",
    "updated_at": date.today().isoformat(),
})

path.write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
PY
}

manifest_tag() {
  local path="$1"
  local override_version="${2:-}"

  python3 - "${path}" "${override_version}" <<'PY'
import json
import sys

path = sys.argv[1]
override_version = sys.argv[2]
with open(path, "r", encoding="utf-8") as handle:
    payload = json.load(handle)

version = override_version or payload.get("version")
tag_prefix = payload.get("tag_prefix")
if not version:
    raise SystemExit("Manifest is missing version")
if not tag_prefix:
    raise SystemExit("Manifest is missing tag_prefix")

print(f"{tag_prefix}-v{version}")
PY
}

list_manifests() {
  local env_dir
  local app_path
  local manifest

  for env_dir in "${ROOT_DIR}/export"/*; do
    [[ -d "${env_dir}" ]] || continue
    for app_path in "${env_dir}"/f*; do
      [[ -d "${app_path}" ]] || continue
      [[ "${app_path##*/}" =~ ^f[0-9]+$ ]] || continue
      manifest="${app_path}/app.json"
      if [[ -f "${manifest}" ]]; then
        python3 - "${manifest}" <<'PY'
import json
import sys

path = sys.argv[1]
payload = json.loads(open(path, encoding="utf-8").read())
print("|".join(str(payload.get(key, "")) for key in ("env_alias", "app_code", "app_name", "version", "tag_prefix")))
PY
      else
        printf '%s|%s|||\n' "${env_dir##*/}" "${app_path##*/}"
      fi
    done
  done | LC_ALL=C sort
}

main() {
  local command="${1:-}"
  local env_alias=""
  local app_id=""
  local version=""
  local app_name=""
  local path=""
  local tag_prefix=""

  case "${command}" in
    -h|--help|"")
      usage
      finish 0
      ;;
    list)
      list_manifests
      ;;
    show)
      env_alias="$(normalize_env_alias "${2:-}")" || finish 1
      app_id="$(require_numeric_app_id "${3:-}")" || finish 1
      path="$(require_app_manifest "${env_alias}" "${app_id}")" || finish 1
      show_manifest "${path}"
      ;;
    set)
      env_alias="$(normalize_env_alias "${2:-}")" || finish 1
      app_id="$(require_numeric_app_id "${3:-}")" || finish 1
      version="${4:-}"
      app_name="${5:-}"
      validate_version "${version}" || finish 1
      path="$(manifest_path "${env_alias}" "${app_id}")" || finish 1
      if [[ -f "${path}" ]]; then
        tag_prefix=""
      else
        tag_prefix="$(default_tag_prefix "${env_alias}" "${app_id}")" || finish 1
      fi
      write_manifest "${path}" "${env_alias}" "${app_id}" "${version}" "${app_name}" "${tag_prefix}"
      show_manifest "${path}"
      ;;
    tag)
      env_alias="$(normalize_env_alias "${2:-}")" || finish 1
      app_id="$(require_numeric_app_id "${3:-}")" || finish 1
      version="${4:-}"
      [[ -z "${version}" ]] || validate_version "${version}" || finish 1
      path="$(require_app_manifest "${env_alias}" "${app_id}")" || finish 1
      manifest_tag "${path}" "${version}"
      ;;
    *)
      usage >&2
      finish 1
      ;;
  esac
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
