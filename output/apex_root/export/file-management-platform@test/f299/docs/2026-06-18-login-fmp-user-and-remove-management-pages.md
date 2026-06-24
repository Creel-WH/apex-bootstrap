# 2026-06-18 登录与 FMP_USER 收口、清理管理页

## Request
- Original Request: 1.优化登录及用户逻辑，用户信息来源于BASIC_USER和BASIC_JA_DING_USER，新登录的用户创建对应的用户数据到FMP_USER，默认密码为‘Aa135246..’。2.将“上次访问子平台”现在已经落地持久化这个功能生成的表的字段合并到FMP_USER即可。3.将李威豪的密码改为‘lwh123..’。4.删除文件库管理和分类管理两个apex页面。5.目前p221页面未在导航菜单展示出来，将其展示
- AI Summary: 收口 f299 登录用户来源到 BASIC_USER/BASIC_JA_DING_USER，首次登录自动落 FMP_USER，最近访问子平台回收进 FMP_USER，并清理 P101/P120 导航与页面残留。
- Business Goal: 让登录、用户影子表、子平台记忆与导航入口保持统一，减少旧页面和临时表残留。
- Acceptance Criteria:
  1. `BASIC_USER` / `BASIC_JA_DING_USER` 命中的用户可登录。
  2. 首次登录用户会自动创建 `FMP_USER` 记录，默认密码为 `Aa135246..`。
  3. `JA016181` / 李威豪密码固定为 `lwh123..`。
  4. 最近访问子平台信息不再使用独立 `FMP_USER_LAST_SYSTEM` 表，改存 `FMP_USER`。
  5. `P101`、`P120` 从 APEX 应用中删除，并从导航/页面管理默认项中移除。
  6. `P221` 在导航菜单中可见。

## Execution Plan
- Impacted Pages (AI Proposed): `P0`, `P101`, `P120`, `P221`, `P9999`
- Impacted DB Objects (AI Proposed): `BASIC_USER`, `BASIC_JA_DING_USER`, `FMP_USER`, `FMP_APEX_LOGIN`, `FMP_LOGIN_SUCCESS`, `FMP_SYSTEM`, shared navigation components
- Confirmed Pages:
- Confirmed DB Objects:
- Planned Steps:
  1. 调整 `FMP_USER` 结构并回收最近访问子平台字段。
  2. 调整 `FMP_APEX_LOGIN` / `FMP_LOGIN_SUCCESS` 到 `FMP_USER` 登录链。
  3. 删除 `P101` / `P120` 并修正导航与 `P221` 显示。
  4. 导入测试环境并记录结果。

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
- Status: IMPLEMENTING
- Current Step: Updating repo source for login, FMP_USER, and navigation cleanup.
- Open Issues:
- Next Action: Apply DB/APEX source changes and import to test.
- Resume Notes:
