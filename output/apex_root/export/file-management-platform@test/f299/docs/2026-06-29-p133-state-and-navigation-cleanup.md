# P133 State And Navigation Cleanup

## Request

- Remove unused P133 hidden items `P133_ROLE_CODE` and `P133_ROOT_DISPLAY`.
- Remove the virtual breadcrumb level named `文件库`; the highest breadcrumb level should be the current sub-platform root folder name.
- Fix folder navigation state so `P133_UP_FOLDER_ID`, `P133_BREADCRUMB_JSON`, `P133_FILE_LEVEL`, and related context values update when entering a child folder.
- Refactor `P133_PAGE` navigation to use direct APEX page redirect actions instead of a hidden transition item.

## Scope

- Environment: `file-management-platform@test`
- App: `f299` / APEX App ID `299`
- Page: `P133`
- Docs: P133 page supplement docs

## Plan

1. Remove unused page items and references.
2. Make folder context refresh deterministic after `P133_PARENT_FOLDER_ID` changes.
3. Render breadcrumbs directly from `P133_BREADCRUMB_JSON`, without an extra virtual root.
4. Replace `P133_PAGE` branch flow with direct URL generation, using click-time current folder or selected-object values.
5. Import P133 and run browser functional validation.

## Status

- Status: IMPORTED
- Import: `bash tools/apex_ai.sh import-page "file-management-platform@test" 299 133` passed on 2026-06-29.
- Metadata verification: live APEX page 133 has no `P133_PAGE`, `P133_ROLE_CODE`, or `P133_ROOT_DISPLAY` page items, and no `P133_PAGE` branch/dynamic-action references.
- Browser functional gate: attempted twice. Both runs stopped at the unrelated login page error "账号不存在或已离职" before reaching P133, so P133 UI behavior was not covered by this gate run.
- Direct APEX-session browser validation was also attempted after creating an APEX session for `JA016181`; the app still redirected to `LOGIN`, so live browser validation remains blocked by authentication rather than by P133 rendering.
- Follow-up: `P133_UP_FOLDER_ID`, `P133_FILE_LEVEL`, and `P133_BREADCRUMB_JSON` are active browser-side state items. They were recalculated for breadcrumb/up navigation but were not consistently written back to APEX server session state, so Builder session-state inspection could show stale values. Added `P133_SYNC_FOLDER_STATE` to submit the derived folder state after recalculation.
- Follow-up: P133 could load with no rows when P0 resolved `SYSTEM_ID` asynchronously after P133 item defaults had already run. In that state the top system selector showed the correct sub-platform, but `P133_ROOT_FOLDER_ID` / `P133_PARENT_FOLDER_ID` stayed empty and the IG query returned no rows. Added `P133_RESOLVE_ROOT_FOLDER` so P133 can resolve the current user's root folder itself when root state is empty.
- Follow-up: P133 could load with no rows when P0 resolved `SYSTEM_ID` asynchronously after P133 item defaults had already run. In that state the top system selector showed the correct sub-platform, but `P133_ROOT_FOLDER_ID` / `P133_PARENT_FOLDER_ID` stayed empty and the IG query returned no rows. Added `P133_RESOLVE_ROOT_FOLDER` so P133 can resolve the current user's root folder itself when root state is empty.

## Implementation Notes

- Removed page items `P133_PAGE`, `P133_ROLE_CODE`, and `P133_ROOT_DISPLAY`.
- Removed all `P133_PAGE` branch conditions and page-submit transition actions.
- Rebuilt create-folder/upload/preview/permission navigation through `P133_GET_ACTION_URL`.
- Folder navigation now triggers the existing `P133_PARENT_FOLDER_ID` change flow after setting the target folder, so `P133_UP_FOLDER_ID`, `P133_BREADCRUMB_JSON`, `P133_FILE_LEVEL`, and related display values recalculate from the current folder.
- Breadcrumb rendering now uses `P133_BREADCRUMB_JSON` directly and no longer prepends a synthetic `文件库` crumb.
