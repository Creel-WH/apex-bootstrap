#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
TMP_DIR="$(mktemp -d)"
TEST_ROOT="${TMP_DIR}/repo"

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

mkdir -p "${TEST_ROOT}/tools" "${TEST_ROOT}/tests" "${TEST_ROOT}/docs" "${TEST_ROOT}/.github"
cp "${ROOT_DIR}/tools/release.sh" "${TEST_ROOT}/tools/release.sh"
chmod +x "${TEST_ROOT}/tools/release.sh"

cat > "${TEST_ROOT}/AGENTS.md" <<'EOF'
# test
EOF

cat > "${TEST_ROOT}/README.md" <<'EOF'
# test
EOF

cat > "${TEST_ROOT}/QUICKSTART.md" <<'EOF'
# test
EOF

cat > "${TEST_ROOT}/RELEASE_NOTES.md" <<'EOF'
# Release Notes

## Unreleased

- 暂无
EOF

(
  cd "${TEST_ROOT}"
  bash tools/release.sh v9.9.9
)

test -f "${TEST_ROOT}/dist/repo-v9.9.9.tgz" || {
  printf 'Expected release archive to be created when export/ is absent.\n' >&2
  exit 1
}

printf 'release without exports test passed\n'
