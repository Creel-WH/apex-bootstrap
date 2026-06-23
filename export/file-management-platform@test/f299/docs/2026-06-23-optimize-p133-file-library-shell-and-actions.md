# Optimize P133 File Library Shell And Actions

## Request
- Original Request: 继续参考 `D:/ja-projects/html/文件管理平台原型/file-library.html`，对 `P133` 页进行样式优化，包括删除顶部“文件库”文案、调整上传/新建文件夹按钮位置、未选中时隐藏“未选择文件或文件夹”及对应白底、选中后操作区样式对齐原型、面包屑样式对齐原型、鼠标悬浮显示单条文件操作按钮，并在完成后自行进入浏览器反复测试直到完全实现。
- AI Summary: 在不扩展数据库范围的前提下，继续将 `f299 / P133` 的文件库页面外观和交互向原型靠拢，重点优化顶部工具条、面包屑、选中操作条、单条悬浮操作和浏览器端验收。
- Business Goal: 让 `P133` 文件库页面在视觉和交互上更接近原型，减少当前 APEX 默认布局和原型之间的落差。
- Acceptance Criteria:
  1. 页面顶部不再显示“文件库”标题文案。
  2. “上传文件”“新建文件夹”按钮位于左侧，并与原型布局一致。
  3. 未选中任何文件时不显示“未选择文件或文件夹”提示，也不显示对应空白操作底板。
  4. 选中后出现的操作条样式接近原型。
  5. 面包屑区域样式接近原型。
  6. 鼠标悬浮单条文件时可见对应操作按钮，交互与原型一致或接近。
  7. 改动导入测试环境后，浏览器实际验证通过。

## Execution Plan
- Impacted Pages (AI Proposed): P133
- Impacted DB Objects (AI Proposed): None
- Confirmed Pages:
- Confirmed DB Objects:
- Planned Steps:
  1. 分析 `P133` 现有自绘 toolbar / pathbar / 列表渲染结构与原型差距。
  2. 在 `page_00133.sql` 内精确调整顶部工具条、选中态工具条、面包屑、列表行 hover 操作区和必要 CSS。
  3. 导入 `f299` 整应用到 `file-management-platform@test`。
  4. 进入浏览器登录并对 `P133` 做真实功能验证，直到交互与样式达到验收标准。

## Implementation Log
- Changes Made:
- Updated Files:
- Updated DB Objects:
- Updated Page Docs:
- Updated Browser Specs:

## Verification
- Connectivity Check:
- DB / APEX Check:
- Deploy Result:
- Browser Smoke:
- Browser Functional:
- Evidence Paths:
- Manual Verification Entry:

## Current Status
- Status: CONFIRM
- Current Step: Waiting for scope confirmation
- Open Issues: None
- Next Action: After confirmation, implement page-only UI refinements on P133 and rerun browser validation
- Resume Notes: Reuse existing P133 custom toolbar/pathbar/card/list shell where possible; avoid widening scope unless implementation proves it necessary

## 2026-06-23 Delivery Update
- Status: DONE
- Confirmed Pages: P133
- Confirmed DB Objects: None
- Changes Made:
  - Removed the top `文件库` title from the custom toolbar shell.
  - Moved `上传文件` and `新建文件夹` actions to the left side of the toolbar.
  - Hid the empty-state selection bar when nothing is selected.
  - Reworked the breadcrumb shell to match the prototype direction more closely.
  - Added row hover action buttons and a row-level more-actions popup menu.
  - Fixed runtime JS breakage caused by malformed HTML-expression strings.
  - Reduced `p_javascript_code` size to avoid APEX runtime truncation and moved late view/init logic into `p_javascript_code_onload`.
- Updated Files:
  - `export/file-management-platform@test/f299/apex/f299/application/pages/page_00133.sql`
  - `export/file-management-platform@test/f299/docs/pages/P133.md`
- Deploy Result:
  - Re-imported `file-management-platform@test / f299` successfully with `tools/apex_ai.sh import-app 'file-management-platform@test' 299`.
- Browser Functional:
  - Verified on June 23, 2026 in the `file-management-platform@test` runtime.
  - Verified left-side `上传文件` + `新建文件夹` buttons are visible.
  - Verified the legacy `未选择文件或文件夹` text is not shown when no row is selected.
  - Verified selecting a row shows the inline selection action bar.
  - Verified hovering a file cell reveals row action buttons.
  - Verified clicking the row `更多操作` button opens the popup menu.
- Evidence Paths:
  - `D:/ja-projects/apex/apex-bootstrap/tmp_p133_final_verify.png`
  - `D:/ja-projects/apex/apex-bootstrap/tmp_p133_functional3.png`

## 2026-06-23 Follow-up Fixes
- Scope:
  - `P133`
  - Runtime actions from `P133` into `P137` and `P155`
- Changes Made:
  - Changed list entry open behavior from single-click to double-click on the file name cell.
  - Limited list-view selection changes to the row selector checkbox only.
  - Corrected rename target from preview page `P137` to rename dialog page `P135`.
  - Replaced the broken rename/move direct URLs with server-side `apex_util.prepare_url(...)` output so APEX supplies the required dialog checksum.
  - Fixed view/sort sync by converting the placeholder view/action hooks into delegating wrappers and restoring the real implementations through `window.*Impl`.
- Browser Functional:
  - Verified on June 23, 2026 at `https://apextest.jasolar.com/ords/uatapex23/f?p=299:133`.
  - Verified clicking the row body does not change selection.
  - Verified clicking the row selector selects exactly one row and clicking it again clears the selection.
  - Verified double-clicking the file name enters the folder without error.
  - Verified grid/list view switching works again.
  - Verified switching from `MANUAL` to `NAME_ASC` hides the `SORT_NUM` column and switching back restores it.
  - Verified rename opens `P135` as a modal dialog and the dialog iframe contains `P135_FILE_ID` / `P135_FILE_NAME`.
  - Verified move opens `P155` as a modal dialog and the dialog iframe contains `P155_FILE_IDS` with no APEX error page.

## 2026-06-23 Button Template Fix
- Scope:
  - `P155`
  - Hidden action buttons on `P133`
- Changes Made:
  - Replaced the invalid legacy button template ids on `P155` with the current app template ids:
    - `Text` -> `9760159158825264299`
    - `Text with Icon` -> `9760159296056264299`
  - Applied the same template-id correction to `P133`, which was the only other page still referencing the same invalid legacy button template ids.
- Self-check:
  - Searched the full `f299` export for legacy button template ids `9726702811589842046` and `9726702948820842046`.
  - Confirmed they only existed in `P133` and `P155`; no other pages in the current app still reference them.
- Browser Functional:
  - Verified on June 23, 2026 that the `P155` modal footer now shows both `取消` and `确定` buttons.
  - Verified the `P155` dialog no longer shows `#DEFAULT_BUTTON_TEMPLATE#` invalid-template behavior.
