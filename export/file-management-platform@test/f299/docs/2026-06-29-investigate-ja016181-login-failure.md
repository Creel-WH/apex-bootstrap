# 2026-06-29 JA016181 登录失败排查

- Original Request: 排查 `f299` 项目中账号 `JA016181` 无法登录的问题，并修复到可稳定登录为止。
- AI Summary: 围绕 `P9999` 登录页、`FMP_APEX_LOGIN` 认证函数、`FMP_LOGIN_SUCCESS` 登录后初始化，以及来源表 `BASIC_USER` / `BASIC_JA_DING_USER` 排查并修复 `JA016181` 登录失败问题。

## 边界

- Env Alias: `file-management-platform@test`
- APP_ID: `299`
- App Code: `file-management-platform`
- Impacted Pages:
  - `P9999`
- Impacted DB Objects:
  - `FMP_APEX_LOGIN`
  - `FMP_LOGIN_SUCCESS`
  - `BASIC_USER`
  - `BASIC_JA_DING_USER`
  - `FMP_USER`

## 当前已知事实

- 当前运行时认证方案为 `STS_LOGIN`，认证函数绑定 `FMP_APEX_LOGIN`，登录后处理为 `FMP_LOGIN_SUCCESS`。
- `JA016181` 在 live 库中可命中 `FMP_APEX_LOGIN` 的存在性判断，不属于稳定性的“账号不存在或已离职”。
- `FMP_USER` 中 `JA016181` 已存在有效记录，且 `last_login_time` 为 `2026-06-29 11:07:48`。
- `FMP_LOGIN_SUCCESS` 基于 `BASIC_USER` 与 `BASIC_JA_DING_USER` 的 `FULL OUTER JOIN` 查人，对 `JA016181` 当前会返回多行，存在不稳定风险。

## 验收目标

1. `JA016181` 使用正确密码登录时，不再出现“账号不存在或已离职，请检查后输入”提示。
2. 登录链路对同工号多来源记录的取数结果稳定且可解释。
3. 至少完成一次真实业务流登录验证，并保留排查结论。

## 排查结论

- `JA016181` 并非来源表中“不存在”或“已离职”。
- `FMP_APEX_LOGIN` 在数据库会话实验中可正常返回 `TRUE`，说明账号数据和密码规则本身没有问题。
- 真实浏览器失败时，`JA_SYSTEM_LOGS` 记录到 `FMP_APEX_LOGIN` 收到的 `p_username` / `p_password` 为空，因此落入 `NO_DATA_FOUND` 分支并显示“账号不存在或已离职”。
- `FMP_LOGIN_SUCCESS` 还存在两个稳健性问题：
  - post-auth 只依赖 `P9999_USERNAME`，页面项丢失时会误判失败。
  - `BASIC_USER` 与 `BASIC_JA_DING_USER` 合并取数可能返回多行，结果不稳定。

## 实际修复

- `db/procedures/fmp_login_success.sql`
  - 登录工号优先取认证后的 `APP_USER`，再回退到 `P9999_USERNAME` / 登录用户名 cookie。
  - 同工号来源数据改为单行优选：
    - `BASIC_USER` 优先取当前租户 `tenant_id = 3` 的有效记录。
    - `BASIC_JA_DING_USER` 取最新有效记录。
  - 补充对 cookie 读取异常的保护，避免在非浏览器上下文报 `OWA_COOKIE`。
- `apex/f299/application/pages/page_09999.sql`
  - `P9999_USERNAME` / `P9999_PASSWORD` 改为保存 session state。
  - `Login` invoke API 的 `p_username` / `p_password` 参数改为直接绑定 `:P9999_USERNAME` / `:P9999_PASSWORD`。
- `docs/browser-functional.json`
  - 登录步骤改为点击真实按钮 `#login`，与运行时真实用户路径保持一致。

## 验证

- 数据库验证：
  - 重新编译 `FMP_LOGIN_SUCCESS` 后，在未设置 `P9999_USERNAME` 的 APEX 会话中执行 `fmp_login_success`，`USER_JOB_NUMBER` 与 `P9999_USERNAME` 都能正确回填为 `JA016181`。
- 真实浏览器验证：
  - 自定义 Playwright 直接点击 `#login` 后，页面成功进入 `f?p=299:133...`。
  - 标准 `browser-functional` 在通过 `bash -lc` 显式注入运行时凭据后成功通过。
  - 通过证据目录：`.omx/results/20260629T034649Z-750-f130b23d`
