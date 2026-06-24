#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
DIST_DIR="${ROOT_DIR}/dist"
PROJECT_NAME="$(basename "${ROOT_DIR}")"
VERSION="${1:-$(date +%Y.%m.%d.%H%M)}"
ARCHIVE_FILE="${DIST_DIR}/${PROJECT_NAME}-${VERSION}.tgz"
TODAY="$(date +%F)"

mkdir -p "${DIST_DIR}"

release_entries=()
for path in AGENTS.md README.md QUICKSTART.md RELEASE_NOTES.md export tools tests docs .github; do
  if [[ -e "${ROOT_DIR}/${path}" ]]; then
    release_entries+=("${path}")
  fi
done

if [[ ${#release_entries[@]} -eq 0 ]]; then
  printf 'No release entries found under %s\n' "${ROOT_DIR}" >&2
  exit 1
fi

if ! grep -q "^## ${VERSION} - ${TODAY}$" "${ROOT_DIR}/RELEASE_NOTES.md"; then
  cat >> "${ROOT_DIR}/RELEASE_NOTES.md" <<EOF

## ${VERSION} - ${TODAY}

- TODO: summarize application changes
- TODO: summarize database changes
- TODO: summarize validation scope
EOF
fi

tar \
  --exclude=".git" \
  --exclude=".DS_Store" \
  --exclude=".local" \
  --exclude="dist" \
  --exclude=".env" \
  --exclude="conn.json" \
  -czf "${ARCHIVE_FILE}" \
  -C "${ROOT_DIR}" \
  "${release_entries[@]}"

printf '%s\n' "${VERSION}" > "${DIST_DIR}/current-release-version.txt"
printf '%s\n' "${ARCHIVE_FILE}" > "${DIST_DIR}/current-release-archive.txt"
printf 'Release bundle created: %s\n' "${ARCHIVE_FILE}"
