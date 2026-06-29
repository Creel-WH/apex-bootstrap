# F300 Login Messages Chinese

- Original Request: 优化 `f300` 的登录失败提示为中文，并检查项目中是否还有英文提示，一并改为中文；改完后列举更改内容确认。
- AI Summary: 统一 `f300` 运行时用户可见英文提示为中文，重点覆盖登录失败、登录初始化失败、子平台切换失败等提示。
- Business Goal: 提升 `f300` 中文使用一致性，避免后台登录、切换和交互提示中残留英文文案。
- Acceptance Criteria:
  1. `f300` 登录失败提示改为中文。
  2. `f300` 运行时用户可见英文提示统一改为中文。
  3. 完成后列出实际修改项供确认。

## Scope

- Env: `file-management-platform@test`
- App: `f300`
- Impacted Pages:
  - `P9999`
  - `Page 0` application process / current system switch
- Impacted DB Objects:
  - `f300_admin_apex_login`
  - `f300_admin_login_success`
  - `f300_admin_login_success_v2`

## Notes

- 本次优先处理运行时用户可见提示，不默认翻译插件元数据、模板帮助文本或纯开发者说明。
- 若存在少量边界提示同时用于运行时和配置界面，将按“最终用户可见优先”原则处理。
