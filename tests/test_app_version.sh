#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
TMP_DIR="$(mktemp -d)"

cleanup() {
  rm -rf "${TMP_DIR}"
}
trap cleanup EXIT

cp -R "${ROOT_DIR}/tools" "${TMP_DIR}/tools"
mkdir -p "${TMP_DIR}/export/lab@test/f100"

cat > "${TMP_DIR}/export/lab@test/f100/app.json" <<'JSON'
{
  "env_alias": "lab@test",
  "app_id": 100,
  "app_code": "f100",
  "app_name": "Lab App",
  "version": "1.2.3",
  "tag_prefix": "lab-f100",
  "release_single": "release-single/f100.sql",
  "updated_at": "2026-05-19"
}
JSON

output="$(cd "${TMP_DIR}" && bash tools/app_version.sh tag lab@test 100)"
[[ "${output}" == "lab-f100-v1.2.3" ]] || {
  printf 'Unexpected tag output: %s\n' "${output}" >&2
  exit 1
}

output="$(cd "${TMP_DIR}" && bash tools/app_version.sh tag lab@test 100 1.2.4)"
[[ "${output}" == "lab-f100-v1.2.4" ]] || {
  printf 'Unexpected override tag output: %s\n' "${output}" >&2
  exit 1
}

cd "${TMP_DIR}" && bash tools/app_version.sh set lab@test 100 2.0.0 "Lab App" >/dev/null

python3 - "${TMP_DIR}/export/lab@test/f100/app.json" <<'PY'
import json
import sys

payload = json.loads(open(sys.argv[1], encoding="utf-8").read())
assert payload["env_alias"] == "lab@test"
assert payload["app_id"] == 100
assert payload["app_code"] == "f100"
assert payload["app_name"] == "Lab App"
assert payload["version"] == "2.0.0"
assert payload["tag_prefix"] == "lab-f100"
assert payload["release_single"] == "release-single/f100.sql"
PY

printf 'app version tests passed.\n'
