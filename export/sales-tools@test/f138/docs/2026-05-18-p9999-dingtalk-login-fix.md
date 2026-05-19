# P9999 DingTalk Login Fix

## Request
- Original Request: 对 APP_ID 138 的文件管理平台做优化和 bug 修复，主要修复测试环境 P9999 登录页扫码和钉钉授权登录无法成功的问题。
- AI Summary: 在 `sales-tools@test / f138` 中诊断并修复 P9999 登录页的钉钉扫码登录与钉钉容器授权登录链路。
- Business Goal: 测试环境用户可以通过 P9999 的钉钉扫码登录或钉钉内授权登录成功进入文件管理平台，同时保留账号密码登录作为兜底。
- Acceptance Criteria:
  - P9999 扫码回调带回 `code` 后，能够完成后端鉴权并触发 APEX 登录。
  - 钉钉容器内授权登录能够获取授权码、完成后端鉴权并触发 APEX 登录。
  - 登录失败时保留可诊断的错误信息，不静默失败。
  - 账号密码登录不回退、不破坏。

## Execution Plan
- Impacted Pages (AI Proposed): P9999 登录页；必要时同步 P9999 页面文档。
- Impacted DB Objects (AI Proposed): 先按只读诊断 `JA_STS_APEX_DING_LOGIN`、`JA_SYSTEM_DICT`、相关日志表；若确认根因在应用自有 DB 源码，再在 `export/sales-tools@test/f138/db/` 范围内修复。
- Confirmed Pages:
- Confirmed DB Objects:
- Planned Steps:
  - Confirm feature boundary and approval.
  - Analyze P9999 page export, login callbacks, authentication scheme, and runtime config.
  - Diagnose live test-environment behavior for scan login and DingTalk authorization login.
  - Implement the smallest safe fix inside the confirmed page / DB boundary.
  - Import or deploy the changed app assets to `sales-tools@test / f138`.
  - Run DB/deploy/browser smoke and at least one real browser functional validation.
  - Update page docs and this feature record.

## Implementation Log
- Changes Made:
- Updated Files:
- Updated DB Objects:
- Updated Page Docs:
- Updated Browser Specs:

## Verification
- Connectivity Check: `bash tools/apex_ai.sh check sales-tools@test --deep` passed on 2026-05-18.
- DB / APEX Check:
- Deploy Result:
- Browser Smoke:
- Browser Functional:
- Evidence Paths:
- Manual Verification Entry:

## Current Status
- Status: NEW
- Current Step: Gate A confirmed; impacted scope analysis complete and waiting for Gate B confirmation.
- Open Issues: Need confirmed impacted pages / DB objects before implementation.
- Next Action: Confirm impacted P9999 and `JA_SYSTEM_DICT` data scope, then implement and verify.
- Resume Notes: Authoritative machine state remains `ai-context.json`; this file is the narrative record for the new P9999 login fix slice.

## 2026-05-18 Analysis
- Connectivity: `sales-tools@test --deep` passed.
- Source finding: P9999 contains two hard-coded references to `https://api.jasolar.com:26000/jingjie/open/oauth2/dingtalk`, which can route the test login handoff through the production gateway.
- Live dictionary finding:
  - `APP_ENV = TEST`
  - `APEX_APP_URL_138 = http://apextest.jasolar.com/ords/uatapex23/`
  - `CODE_LOGIN_URL_138 = https://testjing.jasolar.com/i/salestool/apis/session/apex/automatic-authorized/`
  - `AUTO_LOGIN_URL_138 = https://testjing.jasolar.com/i/salestool/apis/session/apex/authorize`
  - `BASIC_URL = https://testjing.jasolar.com/i`
  - Another app has `DING_LOGIN_URL = https://testjing.jasolar.com/i/jingjie/open/oauth2/dingtalk`, but app 138 does not yet have `DING_LOGIN_URL_138`.
- Proposed fix:
  - Add a P9999 hidden item and computation for `P9999_DING_LOGIN_URL`, using `JA_SYSTEM_DICT.DING_LOGIN_URL_138` first, then generic `DING_LOGIN_URL`, then `BASIC_URL || '/jingjie/open/oauth2/dingtalk'`, with the current production URL only as final fallback.
  - Replace the hard-coded production URL in P9999 JavaScript with `$v('P9999_DING_LOGIN_URL')`.
  - Add or upsert `JA_SYSTEM_DICT` data key `DING_LOGIN_URL_138 = https://testjing.jasolar.com/i/jingjie/open/oauth2/dingtalk` for test app 138, so future environments can override it by dictionary data instead of page code.
