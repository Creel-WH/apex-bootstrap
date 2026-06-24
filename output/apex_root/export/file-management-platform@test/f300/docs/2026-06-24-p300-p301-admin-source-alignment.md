# Align P300/P301 Admin Source

- Date: `2026-06-24`
- Environment: `file-management-platform@test`
- App: `f300`
- Goal: fix the mismatch where `P300` showed 3 business administrators but `P301` edit mode only loaded 2.

## Root Cause

- Live `P300` in the test environment was still reading administrator data from `STS_SYSTEM / STS_SCOPE`.
- Live `P301` was already reading and writing administrator data through `FMP_SYSTEM / FMP_SCOPE`.
- Because the two pages were no longer on the same table set, the list page and edit dialog could show different administrator counts for the same platform.

## Repository State

- Repository `P300` source was already updated to `FMP_SYSTEM / FMP_SCOPE`.
- Repository `P301` source was already using `FMP_SYSTEM / FMP_SCOPE`.
- The remaining gap was:
  - live `P300` page 300 had not been re-imported
  - one existing admin row still existed only in `STS_SCOPE`

## Changes

- Added data sync script:
  - `db/data/2026-06-24_sync_sts_scope_admins_to_fmp_scope.sql`
- Imported repository `P300` page 300 to the test environment.
- Backfilled missing `SYSTEM / MANAGE / USER` scope rows from `STS_SCOPE` to `FMP_SCOPE` for matching live platforms.

## Verification

- Data compare after sync:
  - no remaining admin-scope differences between `STS_SCOPE` and `FMP_SCOPE`
- Browser validation:
  - `P300` first row still shows 3 administrators
  - opening `P301` edit for the same row now loads all 3 administrators

