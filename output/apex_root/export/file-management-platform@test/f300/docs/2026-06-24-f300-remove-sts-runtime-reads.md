# Remove STS Runtime Reads In F300

- Date: `2026-06-24`
- Environment: `file-management-platform@test`
- App: `f300`
- Goal: check whether `f300` still reads `STS_*` tables at runtime, and switch those runtime reads to `FMP_*`.

## Findings

- Repository scan found many `STS_*` strings, but most were not active runtime table reads:
  - migration/backfill SQL under `db/data/`
  - APEX component names such as `STS_LOGIN`
  - application item names such as `STS_APPKEY`
  - docs/history
- The remaining runtime table-read path in repository-owned `f300` code was:
  - `db/functions/fmp_is_have_permission.sql`
  - it still delegated to `STS_IS_HAVE_PERMISSION`, which reads:
    - `STS_USER_ROLE`
    - `STS_ROLE_PERMISSION`
    - `STS_PERMISSION`

## Scope

- DB objects:
  - `FMP_IS_HAVE_PERMISSION`
- Audit-only, no planned change:
  - one-time migration SQL under `db/data/`
  - item/authentication names that still contain `STS_` but do not read `STS_*` tables

## Changes

- Reworked `db/functions/fmp_is_have_permission.sql`
  - removed delegation to `STS_IS_HAVE_PERMISSION`
  - now reads:
    - `FMP_USER_ROLE`
    - `FMP_ROLE_PERMISSION`
    - `FMP_PERMISSION`
- Added copied `FMP_*` application items while keeping the original `STS_*` items:
  - `FMP_APPKEY`
  - `FMP_APPSECRET`
  - `FMP_JY_API_URL`
- Added copied authentication scheme `FMP_LOGIN` while keeping the original `STS_LOGIN`.
- Switched the application export entry to `FMP_LOGIN`.
- Updated the active login-success procedure to populate both `FMP_*` and legacy `STS_*` session-state items during the transition.

## Verification

- Deployed the updated `FMP_IS_HAVE_PERMISSION` to `file-management-platform@test`.
- Compared a real positive case against the old function:
  - `STS=Y`
  - `FMP=Y`
- Checked a negative case on a nonexistent page id:
  - `MISS=N`
- Residual `STS_*` hits in the repository are now limited to:
  - migration/backfill SQL under `db/data/`
  - preserved legacy component names kept intentionally for compatibility:
    - `STS_LOGIN`
    - `STS_APPKEY`
    - `STS_APPSECRET`
    - `STS_JY_API_URL`
  - legacy session-state setters in the superseded `F300_ADMIN_LOGIN_SUCCESS` source
  - auth/item names such as `STS_LOGIN`, `STS_APPKEY`, `STS_APPSECRET`, `STS_JY_API_URL`
  - legacy session-state setters in the superseded `F300_ADMIN_LOGIN_SUCCESS` source
