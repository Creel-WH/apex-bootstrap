# Migrate STS Objects To FMP Objects For f299

- Date: 2026-06-17
- Environment: `file-management-platform@test`
- App: `f299`
- Goal: copy the STS-backed file-library objects used by f299 into FMP-prefixed objects, then repoint f299 to the new FMP objects without changing the original sales-tools STS tables.

## Scope

- Copy the STS tables, triggers, and callable PL/SQL units actually used by f299 into FMP-prefixed equivalents.
- Update f299 APEX source to use the new FMP-prefixed objects.
- Keep the original STS objects unchanged.

## Impacted Pages

- P133
- P134
- P135
- P136
- P138
- P139
- P156
- P9999

## Impacted DB Objects

- Tables:
  - `STS_FILE` -> `FMP_FILE`
  - `STS_FOLDER` -> `FMP_FOLDER`
  - `STS_FOLDER_CLASS` -> `FMP_FOLDER_CLASS`
  - `STS_FOLDER_LIB` -> `FMP_FOLDER_LIB`
  - `STS_SCOPE` -> `FMP_SCOPE`
  - `STS_SYSTEM` -> `FMP_SYSTEM`
  - `STS_ROLE` -> `FMP_ROLE`
  - `STS_USER_ROLE` -> `FMP_USER_ROLE`
  - `STS_SYS_CONFIG` -> `FMP_SYS_CONFIG`
  - `STS_USER` -> `FMP_USER`
  - `STS_OPERATION_LOG` -> `FMP_OPERATION_LOG`
  - `STS_PERMISSION` -> `FMP_PERMISSION`
  - `STS_ROLE_PERMISSION` -> `FMP_ROLE_PERMISSION`
- PL/SQL units:
  - `STS_OPERATION_LOG_COMMON_FUN`
  - `STS_SAVE_VISIBLE_RANGE_FOLDER_LOG_PRO`
  - `STS_SAVE_VISIBLE_RANGE_LIB_LOG_PRO`
  - `STS_SAVE_VISIBLE_RANGE_LOG_PRO`
  - `STS_SYNCHRONIZE_ACCOUNTS_DELETE_PRO`
  - `STS_SYNCHRONIZE_ACCOUNTS_PRO`
  - `STS_PAY_ATTENTION_TO_FILE_UPDATES`
  - `STS_IS_HAVE_PERMISSION`
  - `STS_PERMISSION_CRUD`
  - `STS_RESOLVE_URL_BASIC`
  - `STS_TRANSFER_FILES_TO_FOLDER_PRO`
  - `STS_SYNC_PERMISSION_PAGE_DATA`

## Verification Plan

1. Copy and rename the required DB source files -> verification: source tree contains matching `fmp_*` assets.
2. Repoint f299 APEX source from `STS_*` to `FMP_*` where those migrated objects are used -> verification: no remaining in-scope `STS_*` hits.
3. Run static searches and any available repository checks -> verification: collect evidence and note blockers.

## Result

- Added `FMP_*` table, index, trigger, function, and procedure source files under `f299/db/`.
- Repointed f299 APEX source from the in-scope `STS_*` table and callable-object references to `FMP_*`.
- Deployed the new `FMP_*` DB objects to `file-management-platform@test` and copied data from the matching `STS_*` tables.
- Verified key live row counts now match between `STS_*` and `FMP_*` for `SYSTEM`, `ROLE`, `USER`, `SCOPE`, and `FILE`.
- Remaining blocker: APEX runtime import/deploy for the changed app export was not executed in this slice; `f300` full-app import was attempted first and is currently blocked by an APEX template parent/child dependency rollback.
