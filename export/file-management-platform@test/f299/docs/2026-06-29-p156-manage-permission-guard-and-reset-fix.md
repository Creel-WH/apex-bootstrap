# 2026-06-29 P156 管理权限控制与恢复继承修复

## Request

- Environment: `file-management-platform@test`
- Application: `f299` / APEX App ID `299`
- Target Page: `P156`
- Business Goal:
  - 访问页面时先获取当前用户对当前文件/文件夹是否具备管理权限。
  - 只有具备管理权限的人员可以修改分享范围、添加协助者、管理协助者。
  - 管理员不能删除自己的管理权限，多选框需要禁用。
  - 修复点击“恢复继承”后的报错，并在恢复后正确恢复继承文件夹协助者的权限。
- Acceptance Criteria:
  - P156 打开时即可区分“权限设置”与“权限查看”两种状态。
  - 无管理权限用户只能查看当前权限，不可修改分享范围、协助者、角色或执行保存/恢复继承。
  - 当前管理员自身的管理项不可被勾选移除，也不可降级到非管理角色。
  - 点击“恢复继承”后不再报错，页面会重新展示继承后的上级协助者权限。

## Current Findings

- Connectivity:
  - `bash tools/apex_ai.sh check 'file-management-platform@test'` passed on 2026-06-29.
- Existing runtime behavior in `P156`:
  - `P156_PERMISSION_SAVE` and `P156_PERMISSION_RESET` already use `fmp_is_file_manager(...)` server-side to block unauthorized writes.
  - `P156_PERMISSION_BOOTSTRAP` and `P156_PERMISSION_GET` currently return file name, share scope, restricted state, and collaborators, but do not return an explicit page-level `canManage` flag.
  - Frontend `p156State` currently has no `canManage` state, so buttons and role menus are rendered as editable by default.
  - Collaborator checkbox disable logic currently depends on `item.locked`; it does not explicitly protect the current manager from removing or downgrading their own manage permission.
  - `P156_PERMISSION_RESET` updates `FMP_FILE.scope_type`, clears current file `FMP_SCOPE`, and clears descendant inherited scopes, but does not repopulate the response payload directly; the page relies on a subsequent reload through `P156_PERMISSION_GET`.
- Likely cause of the reported reset error:
  - The reset path succeeds only when the follow-up `P156_PERMISSION_GET` can recompute inherited collaborators correctly.
  - The current bootstrap/get SQL still carries dead `SYSTEM`-scope branches guarded by `where 1 = 0`, and the reset flow may leave the UI with no explicit `canManage` / no protected self-manager record after reload, which matches the observed “权限信息加载失败”.

## Impacted Pages

- `P156` / `page_00156.sql`
  - Frontend state and rendering:
    - `p156State`
    - `p156RenderCollaborators`
    - `p156ApplyPermissionResponse`
    - `p156SavePermissionData`
    - `p156ResetInheritance`
    - `p156InitPermissionPage`
  - Page bootstrap / ajax processes:
    - `P156_PERMISSION_BOOTSTRAP`
    - `P156_PERMISSION_GET`
    - `P156_PERMISSION_RESET`
- `docs/pages/P156.md`
  - Needs to describe view-only vs manage mode once page behavior changes.

## Impacted DB Objects

- `FMP_FILE`
  - Source of current object inheritance flags and share scope.
- `FMP_SCOPE`
  - Source of collaborator roles and inherited collaborator resolution.
- `fmp_is_file_manager`
  - Existing effective-manage helper already used by save/reset authorization.

## Proposed Design

1. Add explicit page-level manage flag to permission payload.
   - `P156_PERMISSION_BOOTSTRAP` and `P156_PERMISSION_GET` return `canManage`.
   - The flag is computed from `fmp_is_file_manager(v_file_id, ...)`.
2. Drive UI editability from `canManage`.
   - No-manage users stay in view-only mode:
     - share scope button disabled
     - add/remove collaborator disabled
     - collaborator role menus disabled
     - save / restore inheritance disabled
     - page title shows `权限查看`
3. Protect current manager from self-removal or self-downgrade.
   - Mark the current user’s manage row as locked in the payload when it represents their effective manager identity on the current object.
   - Frontend renders that row as non-selectable and non-editable.
4. Repair reset inheritance follow-up data load.
   - Keep reset operation focused on restoring current object to inherited mode.
   - Ensure `P156_PERMISSION_GET` can rebuild inherited collaborator rows after reset and return a valid payload for immediate UI refresh.

## Key Risks / Decisions

- There is one ambiguity I am not going to guess through silently:
  - “管理员不能删除自己的管理权限” currently reads like “protect the current operator only”.
  - It could also mean “all inherited/root managers are always protected”.
  - My proposed implementation uses the narrower interpretation: protect the current operator’s own effective manage row, and keep existing `locked` semantics for already non-editable inherited/root rows.
- I do not plan to expand this slice into new database helper functions unless the existing `fmp_is_file_manager` proves insufficient.

## Execution Plan

1. Return `canManage` and current-manager lock metadata from `P156_PERMISSION_BOOTSTRAP` / `P156_PERMISSION_GET`.
   - Verification: bootstrap JSON distinguishes manage vs view-only user.
2. Update `P156` frontend to honor view-only state and protect self-manager row.
   - Verification: disabled controls and non-editable self-manager row are present in the page export.
3. Fix reset inheritance reload path and inherited collaborator reconstruction.
   - Verification: reset ajax returns 200 and follow-up permission load succeeds.
4. Update `docs/pages/P156.md`.
   - Verification: page doc matches the new behavior.

## Current Status

- Status: IMPLEMENTED
- Current Step: `P156` page change imported to `file-management-platform@test / f299 / P156` and browser-validated.
- Open Issues:
  - `P156_PERMISSION_GET` still returns an empty 200 response in this runtime, so the restore-success path was hardened to reload the dialog and re-bootstrap page data instead of depending on the empty ajax body.
- Next Action: Optional developer spot-check in runtime.

## 2026-06-29 Implementation Update

- Updated `page_00156.sql` to return `canManage` and current-user identity keys during bootstrap.
- Updated the `P156` frontend state to enforce view-only mode when the current user lacks manage permission.
- Protected the current operator's own `manage` row from removal or downgrade by rendering it as locked.
- Fixed the `P156_PERMISSION_GET` source syntax defect that had been leaving the on-demand block invalid after page import.
- Hardened the restore-success refresh path to reload the dialog and reuse bootstrap data, which avoids the runtime's empty `P156_PERMISSION_GET` response body.
- Updated `docs/pages/P156.md`.

## 2026-06-29 Verification Update

- Static verification:
  - `git diff --check -- export/file-management-platform@test/f299/apex/f299/application/pages/page_00156.sql export/file-management-platform@test/f299/docs/pages/P156.md export/file-management-platform@test/f299/docs/2026-06-29-p156-manage-permission-guard-and-reset-fix.md`
- Import:
  - `bash tools/apex_ai.sh import-page 'file-management-platform@test' 299 156`
  - Result: success
- Browser validation:
  - Manage-mode object `49775`:
    - share scope / add / save / restore controls stayed enabled;
    - current operator `李威豪` manage row rendered without checkbox and without role menu;
    - other managers remained editable.
  - View-only object `17341`:
    - title rendered as `20250617测试1（权限查看）`;
    - share scope / add / save / restore controls were disabled;
    - restricted banner remained visible.
  - Restore-inheritance real click validation:
    - created temporary test folder `49779` under `49775`, marked it as restricted, opened `P156`, clicked `恢复继承`;
    - after reload, restricted banner disappeared and collaborator descriptions changed from `当前层级分配` to `继承自上级`;
    - no `权限信息加载失败` dialog appeared.
  - Cleanup:
    - temporary test folder `49779` marked deleted and its `FMP_SCOPE` rows removed.
- Evidence:
  - `output/playwright/f299-p156-permission-guard/result.json`
  - `output/playwright/f299-p156-permission-guard/manage-49775.png`
  - `output/playwright/f299-p156-permission-guard/readonly-17341.png`
  - `output/playwright/f299-p156-permission-guard/restore-49779.json`
  - `output/playwright/f299-p156-permission-guard/restore-49779-after.png`
