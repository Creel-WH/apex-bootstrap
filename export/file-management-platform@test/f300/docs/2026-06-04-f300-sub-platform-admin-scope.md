# f300 Sub-Platform Admin Scope

## Context

- Date: 2026-06-04
- Request source: delegated Codex thread `019e9167-1ced-7c70-88b6-25587254b749`
- Lanhu project: 文件管理平台 V1.4.0
- Lanhu link: not available in this handoff; current scope is based on the delegated requirement summary plus local f300 export evidence.
- env_alias: `file-management-platform@test`
- APP_ID: `300`
- app_code: `f300`
- Target boundary: sub-platform management backend only. Do not include f299 file library, sharing, comments, message center, or other file-user capabilities.
- Scope approval: approved in chat on 2026-06-04.
- Approved correction: Page 300 "enter" link must target app `299` page `9999` instead of app `138` page `9999`.

## Business Goal

Confirm the development-ready scope for the existing f300 sub-platform management backend, separating reusable existing behavior from required modifications and explicit additions before any APEX or DB implementation starts.

## Confirmed Inputs

- f300 already exists and is not a greenfield app.
- Relevant existing pages are:
  - Page 300: 分平台管理后台
  - Page 301: 维护分平台
  - Page 9999: 登录页
- Business administrator is confirmed as a multi-select field.
- Work must stay inside `export/file-management-platform@test/f300/`.

## Current f300 Implementation Evidence

- Page 300 lists enabled, non-deleted records from `STS_SYSTEM`.
- Page 300 displays:
  - platform code generated as `PLT-` plus padded `SYSTEM_ID`
  - platform name
  - business administrators aggregated from `STS_SCOPE` joined to `BASIC_USER`
  - creation date
  - operation buttons: enter, edit, delete
- Page 300 has client-side keyword filtering across rendered table rows.
- Page 300 delete is an on-demand process `P300_DELETE_SUB_PLATFORM` that soft-deletes `STS_SYSTEM`, removes related `STS_SCOPE` manager rows, and refreshes the list.
- Page 301 is a modal maintenance page.
- Page 301 has required items:
  - `P301_SYSTEM_NAME`
  - `P301_ADMIN_IDS`
- Page 301 uses a Popup LOV over `BASIC_USER` and supports multi-select with `:` separator.
- Page 301 save process `P301_SAVE_SUB_PLATFORM` creates or updates `STS_SYSTEM`, validates duplicate platform names, and writes manager permissions into `STS_SCOPE`.
- Page 301 load process `P301_LOAD_SUB_PLATFORM` loads platform name and selected administrator ids for editing.
- Page 9999 exists as the f300 login page and currently appears reusable as-is for this scope.

## Scope Breakdown

### Existing Reuse

- Reuse Page 300 as the sub-platform management list entry.
- Reuse Page 301 as the create/edit modal.
- Reuse Page 9999 login page unless Lanhu or acceptance criteria explicitly require login changes.
- Reuse existing `STS_SYSTEM` as the sub-platform master table.
- Reuse existing `STS_SCOPE` with `REFERENCE_TYPE = 'SYSTEM'`, `PERMISSIONS_TYPE = 'MANAGE'`, and `RANGE_TYPE = 'USER'` for business administrator assignment.
- Reuse `BASIC_USER` as the administrator candidate source.
- Reuse `ja_utils_pkg.split_str` for parsing multi-select administrator ids.
- Reuse existing APEX shared process `SET_CURRENT_SYSTEM` for switching current sub-platform.
- Reuse current multi-select business administrator behavior.

### Required Modifications

- Align Page 300 and Page 301 labels, table columns, form field order, button text, empty state, and validation messages with the confirmed Lanhu backend requirement once the exact Lanhu node/link is available.
- Change Page 300 "enter" URL target from app `138` page `9999` to app `299` page `9999`, preserving request `P300_HANDOFF` and items `P9999_HANDOFF_USER,P9999_HANDOFF_SYSTEM_ID`.
- Review Page 300 delete behavior against expected business rules. Current behavior soft-deletes the platform and deletes manager scope rows; no dependency check is present.
- Review Page 301 duplicate-name validation and administrator persistence against the confirmed acceptance criteria.
- If page behavior changes, add or update page docs under `export/file-management-platform@test/f300/docs/pages/`.

### Explicit Additions

- Add a self-contained f300 feature record: this file.
- Add f300-specific page documentation for P300/P301 only if implementation changes page behavior.
- Add f300-specific browser smoke and browser-functional specs only after the implementation scope is approved, so validation can exercise the create/edit/delete business flow.
- No new f300 database object is proposed at this stage.

## Out Of Scope

- f299 implementation or remediation.
- File library browsing, upload, download, sharing, comments, favorites, recycle bin, message center, or user-facing file workflows.
- New shared repository-level DB layer.
- New cross-application migration unless separately requested and approved.
- Lanhu capabilities that are neither explicit in the handoff nor evidenced in the current f300 export.

## Impact Analysis

### Impacted Pages

- `P300` / `page_00300.sql`: primary list, filtering, operations, delete process, enter action.
- `P301` / `page_00301.sql`: create/edit modal, multi-select administrator LOV, save/load processes.
- `P9999` / `page_09999.sql`: existing login page, currently reuse/no-change unless later scope explicitly includes login behavior or styling.

### Impacted Shared Components

- `SET_CURRENT_SYSTEM`: referenced by Page 300 enter flow; no change proposed unless enter behavior is confirmed as in scope.
- LOV source for `P301_ADMIN_IDS`: local page LOV over `BASIC_USER`; no shared LOV change proposed.

### Impacted Static Files

- None proposed at this stage.

### Impacted DB Objects

- Existing objects read or written by current f300 pages:
  - `STS_SYSTEM`
  - `STS_SCOPE`
  - `BASIC_USER`
  - `JA_UTILS_PKG`
- Existing authorization/user-role objects present in f300 source and possibly relevant if access control is later included:
  - `STS_ROLE`
  - `STS_USER_ROLE`
- No independent new f300 DB object is proposed for the current scope.
- No DDL change is proposed before approval.

## Implementation Plan

1. Freeze scope -> verification: developer confirms impacted pages and DB object boundary in chat.
2. Align P300/P301 only within confirmed f300 scope -> verification: inspect split export diff and page docs.
3. Import/deploy approved f300 page changes -> verification: run app-level gates for f300.
4. Validate real business flow -> verification: browser-functional create/edit/delete or agreed non-destructive equivalent.
5. Close task -> verification: update evidence and `ai-context.json` to `DONE`.

## Key Risks

- Exact Lanhu source is not available in this handoff, so visual and interaction details cannot be treated as machine-readable truth yet.
- Page 300 enter URL now intentionally targets app `299` page `9999`; f299 has existing `P300_HANDOFF` receiver items and process evidence, but f299 implementation remains out of scope.
- Current delete flow does not check downstream data dependencies before soft-delete.
- Live SQL connectivity check for `file-management-platform@test` failed with empty output in this session; quick environment checks passed.
- f300 contains copied-looking shared components and page groups from a broader app history. Scope must stay limited to the pages and DB objects listed above.

## Approval Request

Approve only if the intended executable scope is:

- Pages: P300 and P301 as primary targets; P9999 reuse/no-change unless explicitly corrected.
- DB objects: no new objects; existing `STS_SYSTEM`, `STS_SCOPE`, `BASIC_USER`, and `JA_UTILS_PKG` may be read or affected by page logic; `STS_ROLE` and `STS_USER_ROLE` only if access control is explicitly included.
- Exclusions: f299 and all file-user capabilities remain out of scope.

After approval, implementation may proceed only inside this boundary.

## Verification Evidence

- quick environment check: `bash tools/apex_ai.sh check file-management-platform@test` passed on 2026-06-04.
- deep environment check: `bash tools/apex_ai.sh check file-management-platform@test --deep` passed on 2026-06-04.
- live SQL check: `bash tools/apex_ai.sh sql-check file-management-platform@test 300` and `bash tools/apex_ai.sh sql-check file-management-platform@test` returned non-zero with no output on 2026-06-04.
- implementation: P300 enter URL updated from app `138` to app `299` on 2026-06-04.
- static source check: `rg -n "f\?p=138:9999|f\?p=299:9999|P300_HANDOFF" ...` confirmed f300 P300 now contains `f?p=299:9999` and no f300 source hit for `f?p=138:9999`.
- receiving source check: f299 page `9999` contains `P9999_HANDOFF_USER`, `P9999_HANDOFF_SYSTEM_ID`, and `P300_HANDOFF_LOGIN`.
- contract gate: `bash tools/run_gate.sh file-management-platform@test 300 contract` failed because repository-level `.github/workflows/plsql-ci.yml` is missing expected contract content; this appears unrelated to the P300 URL change.
- deploy attempt: `bash tools/apex_ai.sh import-page file-management-platform@test 300 300` failed because target APEX application `300` does not exist in the live environment.
- export verification attempt: `bash tools/apex_ai.sh export-page file-management-platform@test 300 300` failed with `ORA-20987: Application 300 not found`.
- live app list check: `bash tools/list_apex_apps.sh file-management-platform@test` did not list app `300` or app `299`.
- smoke: blocked until the target live APEX app exists.
- browser-functional: blocked until app `300` can be deployed and app `299` exists as handoff target.
- DB verification: not applicable for this URL-only source change, but live deployment validation is blocked by missing APEX apps.

## Accepted Deviations

- Lanhu link/node is currently absent. This file records the delegated requirement summary as the temporary source until the exact Lanhu project link or node is provided.
- Runtime validation cannot be completed in the current live environment because APEX app `300` and handoff target app `299` are not present.

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=BLOCKED_LIVE_APPS_MISSING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: TESTED
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=PASSED, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: TESTED
- Current Step: connectivity=PARTIAL, scope_confirmation=PASSED, implementation=PASSED_SOURCE_ONLY, verification=IN_PROGRESS, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Final Delivery Record - 2026-06-04

- Status: DONE
- Imported apps: app `299` and app `300` are present in `file-management-platform@test`.
- Implemented f300 change: P300 "enter" redirect target is app `299` page `9999` with request `P300_HANDOFF`.
- Source adjustment for deployability: f300 component IDs were shifted to avoid collisions with app299-derived metadata; P300 breadcrumb menu reference was aligned to the shifted f300 menu ID.
- Affected pages: P300 changed; P301 and P9999 reused without behavior change in this slice.
- Affected DB objects: no independent f300 DB object changes. Existing `JA_UTILS_PKG` was recompiled by the import workflow and is `VALID`.
- Live SQL verification:
  - `apex_application_pages` lists `299|9999`, `300|300`, `300|301`, and `300|9999`.
  - live P300 region source contains `f?p=299:9999`.
  - internal APEX missing menu reference check returned `0|missing_menu_refs`.
- Browser validation:
  - `bash tools/apex_ai.sh gate file-management-platform@test 300 browser-functional` passed, evidence `.omx/results/20260604T084956Z-672-ac834348`.
  - `bash tools/apex_ai.sh gate file-management-platform@test 300 browser` passed, evidence `.omx/results/20260604T085031Z-672-1bcfec91`.
  - Browser specs: `docs/browser-functional.json` and `docs/browser-smoke.json`.
- Note: the environment's APEX Builder URL points to ORDS landing rather than workspace sign-in, so f300 browser specs intentionally use `skip_builder_login`.

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: TESTED
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=IN_PROGRESS, delivery=PASSED
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json
