#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NODE_BIN="${NODE_BIN:-}"

if [[ -z "${NODE_BIN}" ]]; then
  if command -v node >/dev/null 2>&1; then
    NODE_BIN="node"
  elif [[ -x /mnt/e/numPath/nodejs/node.exe ]]; then
    NODE_BIN="/mnt/e/numPath/nodejs/node.exe"
  elif command -v node.exe >/dev/null 2>&1; then
    NODE_BIN="node.exe"
  fi
fi

[[ -n "${NODE_BIN}" ]] || {
  printf 'node is required for browser smoke validation.\n' >&2
  exit 1
}

SCRIPT_PATH="${SCRIPT_DIR}/browser_smoke_runner_playwright.mjs"
if [[ "${NODE_BIN}" == *.exe || "${NODE_BIN}" == /mnt/*/node.exe ]] && command -v wslpath >/dev/null 2>&1; then
  SCRIPT_PATH="$(wslpath -w "${SCRIPT_PATH}")"
  if [[ $# -ge 2 ]]; then
    exec "${NODE_BIN}" "${SCRIPT_PATH}" "$(wslpath -w "$1")" "$(wslpath -w "$2")"
  fi
fi

exec "${NODE_BIN}" "${SCRIPT_PATH}" "$@"
