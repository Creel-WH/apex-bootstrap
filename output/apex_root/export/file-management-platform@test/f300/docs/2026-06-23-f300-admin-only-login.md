# f300 Admin-Only Login

- Date: 2026-06-23
- Environment: `file-management-platform@test`
- App: `f300`
- Goal: restrict `f300` login so only the `ADMIN` account can sign in; all other accounts must be rejected.

## Current Findings

- `f299` and `f300` are not using the exact same login chain now.
- `f299` authentication scheme `STS_LOGIN` already points to:
  - auth function: `FMP_APEX_LOGIN`
  - post-auth process: `FMP_LOGIN_SUCCESS`
- `f300` authentication scheme `STS_LOGIN` still points to:
  - auth function: `STS_APEX_LOGIN`
  - post-auth process: `STS_LOGIN_SUCCESS`
- `f300` login page `P9999` is a simple username/password page and does not carry the richer DingTalk / handoff branches now present in `f299`.
- `f300` runtime pages depend on post-login session state such as:
  - `USER_TENANT`
  - `USER_ID`
  - `MPF_USER_ID`
  - `USER_NAME`
  - `USER_JOB_NUMBER`
  - `ROLE_ID`
  - `ROLE_CODE`
  - `ROLE_LEVEL`
  - `SYSTEM_ID`
  - `APP_ENV`
  - `STS_APPKEY`
  - `STS_APPSECRET`

## Scope

- Page / APEX components:
  - `P9999`
  - `shared_components/security/authentications/sts_login.sql`
- DB objects:
  - app-owned auth function: `F300_ADMIN_APEX_LOGIN`
  - app-owned post-auth procedure: `F300_ADMIN_LOGIN_SUCCESS_V2`
  - cleanup target in source app:
    - `f299/db/procedures/fmp_login_success.sql`

## Design

- Keep the current `f300` login page UI unchanged unless validation proves a message tweak is needed.
- Split `f300` away from the shared runtime auth entry by repointing its authentication scheme to `f300`-owned objects.
- `F300_ADMIN_APEX_LOGIN` should:
  - allow only username `ADMIN` (case-insensitive after trim)
  - reject all other usernames immediately
  - validate the `ADMIN` password inside the copied `f300` auth function instead of delegating to `STS_APEX_LOGIN`
- `F300_ADMIN_LOGIN_SUCCESS_V2` should:
  - keep the current session initialization behavior that `f300` pages already depend on
  - only allow `ADMIN`
  - use `FMP_*` role/system tables
  - read app dictionary values from the current app id, while tolerating missing `APP_KEY` / `APP_SECRET` rows in test
- `FMP_LOGIN_SUCCESS` source in `f299` should:
  - switch role lookups from `STS_*` to `FMP_*`
  - prefer the current app id for `APP_KEY` / `APP_SECRET`

## Why This Design

- It satisfies “only `ADMIN` can log in”.
- It isolates `f300` from `f299` at the authentication entry point.
- It removes runtime dependence on `STS_APEX_LOGIN / STS_LOGIN_SUCCESS`.
- It keeps the change surface minimal while still making `f300` login fully app-owned.

## Verification Plan

1. Static compare `f299` / `f300` login assets and add `f300`-owned auth wrappers.
2. Import the changed `f300` auth artifacts to test.
3. Validate:
   - `ADMIN` can still log in to `f300`
   - a non-`ADMIN` account is rejected on `f300`
   - post-login `P300` can still load normally

## Implementation Notes

- Added `db/functions/f300_admin_apex_login.sql`
- Added `db/procedures/f300_admin_login_success_v2.sql`
- Repointed `apex/.../shared_components/security/authentications/sts_login.sql` to `F300_ADMIN_LOGIN_SUCCESS_V2`
- Updated `f299/db/procedures/fmp_login_success.sql` to use `FMP_*` role tables and current-app-first dictionary lookup
- Verified `f?p=300:LOGIN:0`:
  - `ADMIN / admin260520` can enter `P300`
  - non-admin accounts are rejected
- Noted runtime caveat:
  - the pretty login route `/r/ja_uat/300/login` still posts to a broken relative `wwv_flow.accept` URL in the current test environment, while the legacy `f?p=` login route works correctly
