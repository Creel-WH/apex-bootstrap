# Tests Overview

This scaffold keeps repository-level tests directly under `tests/` so the layout
stays flat and easy to scan.

## What stays here

- `check_*.sh` — contract and repository invariant checks
- `test_apex_ai_*.sh` — CLI orchestration behavior
- `test_export_*`, `test_import_*`, `test_sql_as_*` — core tool behavior
- `test_browser_*`, `test_run_gate_*`, `test_reset_*` — delivery and cleanup flows

## Cleanup policy

- remove app-specific or environment-specific historical tests
- merge or delete tests that only duplicate broader invariant coverage
- prefer concise names that still identify the tool + behavior under test

## Running tests

```bash
find tools tests -maxdepth 1 -name '*.sh' -print0 | xargs -0 -n1 bash -n
for script in tests/*.sh; do bash "$script"; done
```
