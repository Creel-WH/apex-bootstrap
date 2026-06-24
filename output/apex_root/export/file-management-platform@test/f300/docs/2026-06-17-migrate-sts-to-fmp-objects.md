# Migrate STS Objects To FMP Objects For f300

- Date: 2026-06-17
- Environment: `file-management-platform@test`
- App: `f300`
- Goal: copy the STS-backed sub-platform and permission objects used by f300 into FMP-prefixed objects, then repoint f300 to the new FMP objects without changing the original sales-tools STS tables.

## Scope

- Keep the historical `STS_* -> FMP_*` copy script for audit and one-time data migration.
- Keep `f300` runtime and `db/` truth source on the `FMP_*` object set only.
- Clean residual `STS_*` naming that would mislead future export/import or maintenance work.

## Impacted Pages

- P300
- P301

## Impacted DB Objects

- Tables:
  - `STS_SCOPE` -> `FMP_SCOPE`
  - `STS_SYSTEM` -> `FMP_SYSTEM`
  - `STS_ROLE` -> `FMP_ROLE`
  - `STS_USER_ROLE` -> `FMP_USER_ROLE`
  - `STS_SYS_CONFIG` -> `FMP_SYS_CONFIG`
  - `STS_USER` -> `FMP_USER`

## Current f300 Runtime Tables

- `FMP_SYSTEM`
- `FMP_SCOPE`
- `FMP_ROLE`
- `FMP_USER_ROLE`
- `FMP_SYS_CONFIG`
- `FMP_USER`
- `BASIC_USER`
- `JA_SYSTEM_DICT`
## Verification Plan

1. Remove old `STS_*` table truth files that duplicate `FMP_*` objects -> verification: `f300/db` keeps only the `FMP_*` runtime source of truth.
2. Repoint or rename residual `STS_*` runtime/export artifacts that already use `FMP_*` content -> verification: no remaining in-scope `STS_*` table references outside the historical migration script.
3. Run static searches -> verification: collect the residual historical-only `STS_*` hits.

## Result

- `f300/db/tables` now keeps `FMP_SYSTEM`, `FMP_SCOPE`, `FMP_ROLE`, `FMP_USER_ROLE`, `FMP_SYS_CONFIG`, and `FMP_USER` as the active runtime table truth source.
- Removed duplicate `STS_*` table/index source files that no longer represent the `f300` runtime target.
- Renamed the residual `STS_*` LOV export files whose contents were already based on `FMP_*`, so export/install naming now matches the actual object set.
- Retained `db/data/2026-06-17_copy_sts_to_fmp_objects.sql` as the historical one-time migration script.
