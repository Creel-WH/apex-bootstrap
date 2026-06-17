# Migrate STS Objects To FMP Objects For f300

- Date: 2026-06-17
- Environment: `file-management-platform@test`
- App: `f300`
- Goal: copy the STS-backed sub-platform and permission objects used by f300 into FMP-prefixed objects, then repoint f300 to the new FMP objects without changing the original sales-tools STS tables.

## Scope

- Copy the STS tables and callable PL/SQL units actually used by f300 into FMP-prefixed equivalents.
- Update f300 APEX source to use the new FMP-prefixed objects.
- Keep the original STS objects unchanged.

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
- PL/SQL units:
  - `STS_IS_HAVE_PERMISSION`

## Verification Plan

1. Copy and rename the required DB source files -> verification: source tree contains matching `fmp_*` assets.
2. Repoint f300 APEX source from `STS_*` to `FMP_*` where those migrated objects are used -> verification: no remaining in-scope `STS_*` hits.
3. Run static searches and any available repository checks -> verification: collect evidence and note blockers.

## Result

- Added the `f300`-side `FMP_*` table source files required by the sub-platform and permission flow.
- Repointed the in-scope f300 APEX page/shared-component references from `STS_*` to `FMP_*`.
- Reused the same newly deployed `FMP_*` objects in `file-management-platform@test` so `f300` can target the migrated object set.
- Attempted to import the updated `f300` export into the test runtime, but the import rolled back with `ORA-02291` on `APEX_240200.WWV_FLOW_NAV_TEMPLATE_FK`.
- Remaining blocker: APEX runtime import/deploy for the changed app export is still blocked by the APEX import dependency error above.
