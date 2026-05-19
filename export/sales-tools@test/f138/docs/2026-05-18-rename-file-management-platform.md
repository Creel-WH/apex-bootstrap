# Rename File Management Platform

## Request
- Original Request: 删除 99999 页，将项目名称由文件管理平台改为文件管理平台，并同步修改本项目中的中文备注；以后统一称为文件管理平台。
- AI Summary: 在 `sales-tools@test / f138` 中移除旧登录页 P99999，并将应用展示名称、中文注释和项目文档中的“文件管理平台”统一为“文件管理平台”。
- Business Goal: APP_ID 138 后续以“文件管理平台”作为统一中文名称，避免旧名称继续出现在应用、页面导出、验证配置和文档中。
- Acceptance Criteria:
  - APEX split export 不再包含或安装 P99999。
  - 应用名称、logo 文本、APP_NAME 替换值统一为“文件管理平台”。
  - 本项目内与 f138 相关的中文备注、页面文档和浏览器验证文案同步使用“文件管理平台”。
  - P9999 登录页和账号密码登录验证不回退。

## Execution Plan
- Impacted Pages (AI Proposed): 删除 P99999；更新 P1、P9999、P222 中涉及旧名称的页面元数据或中文注释。
- Impacted DB Objects (AI Proposed): 无。
- Confirmed Pages: P99999 删除；P1、P9999、P222 中文名称/注释更新；应用级 create_application 元数据更新。
- Confirmed DB Objects: 无。
- Planned Steps:
  - Confirm feature boundary and affected assets.
  - Remove `page_99999.sql` and its `install.sql` reference.
  - Rename app metadata and page-visible/comment strings to “文件管理平台”.
  - Update f138 docs and browser smoke text.
  - Import/deploy changed APEX app to `sales-tools@test / f138`.
  - Run deploy, browser, and browser-functional validation.

## Implementation Log
- Changes Made:
  - Removed P99999 from the split export and from `install.sql`.
  - Renamed app metadata, logo text, APP_NAME substitution, P1/P9999 visible titles, and P222 comment from the old name to `文件管理平台`.
  - Updated f138 documentation and browser smoke expected text.
- Updated Files:
  - `apex/f138/install.sql`
  - `apex/f138/application/create_application.sql`
  - `apex/f138/application/pages/page_00001.sql`
  - `apex/f138/application/pages/page_00222.sql`
  - `apex/f138/application/pages/page_09999.sql`
  - `docs/browser-smoke.json`
  - `docs/pages/P133.md`
  - `docs/2026-05-18-p9999-dingtalk-login-fix.md`
- Updated DB Objects: 无。
- Updated Page Docs: `docs/pages/P133.md`
- Updated Browser Specs: `docs/browser-smoke.json`

- Import page 0 into sales-tools@test/f138: success
## Verification
- Connectivity Check: `sales-tools@test --deep` already passed in current session.
- DB / APEX Check:
  - `apex_applications` shows `APPLICATION_NAME = 文件管理平台`.
  - `apex_application_pages` shows `PAGE_99999_COUNT = 0`.
- Deploy Result: Passed. Evidence: `.omx/results/20260518T032643Z-661-d59351f8`
- Browser Smoke: Passed. Evidence: `.omx/results/20260518T032841Z-1474-c84aa366`
- Browser Functional: Passed. Evidence: `.omx/results/20260518T032841Z-1478-36084512`
- Evidence Paths:
  - `.omx/results/20260518T032643Z-661-d59351f8`
  - `.omx/results/20260518T032841Z-1474-c84aa366`
  - `.omx/results/20260518T032841Z-1478-36084512`

## Current Status
- Status: DONE
- Current Step: Deployed and verified.
- Open Issues: None.
- Next Action: None.
- Resume Notes: This is a new feature slice after the P9999 DingTalk login fix.

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json
