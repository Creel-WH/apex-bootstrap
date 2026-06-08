#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

python3 - "$repo_root" <<'PY'
from pathlib import Path
import re
import sys

repo_root = Path(sys.argv[1])
limits = {
    repo_root / "export/sales-tools@test/f138/apex/f138/application/pages/page_00202.sql": 4000,
    repo_root / "export/sales-tools@test/f138/apex/f138/application/pages/page_00204.sql": 4000,
}

pattern = re.compile(
    r"p_action=>'NATIVE_EXECUTE_PLSQL_CODE'[\s\S]*?p_attribute_01=>wwv_flow_string\.join\(wwv_flow_t_varchar2\((?P<body>[\s\S]*?)\)\)\s*,p_attribute_02"
)

for path, limit in limits.items():
    text = path.read_text(encoding="utf-8")
    for index, match in enumerate(pattern.finditer(text), start=1):
        size = len(match.group("body"))
        if size >= limit:
            raise SystemExit(f"{path} action{index} length {size} exceeds limit {limit}")

print("ok")
PY
