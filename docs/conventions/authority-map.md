# Authority Map

This document defines the canonical source for each platform contract and how legacy inputs are handled during migration.

| Domain | Canonical Source | Legacy Source | Migration Rule |
|---|---|---|---|
| Runtime connection config | tracked `conn.json` keyed by env alias; untracked `.conn.json` may hold local-only real credentials for aliases absent from `conn.json` | `config/*.env` | Accept legacy env files temporarily with warning; never commit `.conn.json` |
| Environment argument | `<env_alias>` such as `dev`, `lab`, `ci` | `dev.env`, `lab.env` | Accept temporarily with deprecation warning |
| App targeting | Numeric `app_id` passed to public tools | Implicit default app in config | Not allowed |
| App directory layout | `export/<env_alias>/f<APP_ID>/` | `export/f<APP_ID>/` | Invalid |
| SQL execution contract | `tools/sql_as.sh <env_alias> [app_id] ...` | Mixed positional / stale legacy examples | Canonical positional form only in docs and tests |
| Import contract | `tools/import_apex_app.sh <env_alias> <source_app_id> [target_app_id]` and `tools/import_apex_page.sh <env_alias> <source_app_id> <page_id> [target_app_id] [target_page_id]` | Legacy `.env` invocation examples | Canonical env alias form only in docs and tests |
| Evidence output | `.omx/results/<run-id>/` | Ad hoc logs only | Replace with structured output incrementally |
| Oracle / APEX execution guardrails | `docs/conventions/oracle-delivery-guardrails.md` | Ad hoc Oracle knowledge in chat only | Route DB/APEX implementation and diagnosis through the documented guardrails |

## Notes

- Compatibility is a migration aid, not a second permanent contract.
- CI, tests, and documentation should always move to the canonical side first.
- Legacy handling must remain observable through warnings until it is removed.
- `.conn.json` is not a legacy public contract; it is a local secret-bearing override and must stay ignored by Git.
