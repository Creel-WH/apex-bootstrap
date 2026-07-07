# 2026-07-03 MPF_USER_ID 对齐 BASIC_USER

- Original Request: 应用程序项 `MPF_USER_ID` 保存的应该是 `BASIC_USER.USER_ID`，调整登录后存储过程，并修正受影响的 `userid` 使用位置。
- AI Summary: 将 `f299` 登录成功后的 `MPF_USER_ID` 会话值切换为 `BASIC_USER.USER_ID`，保留 `USER_ID = FMP_USER.USER_ID`，同步修正收藏与权限页面对当前用户主键的使用口径，并补充历史收藏数据迁移脚本。

## 边界

- Env Alias: `file-management-platform@test`
- APP_ID: `299`
- App Code: `file-management-platform`
- Impacted Pages:
  - `P1`
  - `P156`
  - `P157`
- Impacted DB Objects:
  - `FMP_LOGIN_SUCCESS`
  - `FMP_FAVORITE_GROUP`
  - `FMP_FAVORITE_FILE`

## 当前已知事实

- 当前 `FMP_LOGIN_SUCCESS` 同时把 `USER_ID` 与 `MPF_USER_ID` 都写成 `FMP_USER.USER_ID`。
- `P1` 的收藏分组与收藏文件当前按 `DIAN_USER_ID` 读写，若改动 `MPF_USER_ID` 语义，历史收藏会出现“登录后不可见”的风险。
- `P156` 有两处通过 `MPF_USER_ID -> FMP_USER.USER_ID` 反查 `FMP_USER.EXT_USER_ID`，这和新的 `MPF_USER_ID` 语义不一致，必须同步修正。
- `P157` 的隐藏项 `P157_USER_ID`、默认排序和所有权校验当前都绑定 `DIAN_USER_ID`。

## 验收目标

1. 登录成功后，`MPF_USER_ID` 优先保存当前登录人对应的 `BASIC_USER.USER_ID`。
2. `USER_ID` 继续保存 `FMP_USER.USER_ID`，不影响现有 `FMP_USER` 角色与系统偏好逻辑。
3. 收藏分组与收藏文件统一按 `MPF_USER_ID` 归属，历史以 `DIAN_USER_ID` 存储的收藏可迁移到新口径。
4. `P156` 当前用户权限键集合仍可正常包含 `DIAN_USER_ID`、`MPF_USER_ID` 与 `FMP_USER.EXT_USER_ID`。

## 实施说明

- `FMP_LOGIN_SUCCESS` 增加 `BASIC_USER.USER_ID` 捕获，并把 `MPF_USER_ID` 写为该值；若未命中 `BASIC_USER`，则回退为 `FMP_USER.USER_ID`，避免会话值为空。
- `P1 / P157` 的收藏归属统一切换到 `:MPF_USER_ID`。
- `P156` 保留 `MPF_USER_ID` 作为基础用户键参与权限匹配，但反查 `FMP_USER.EXT_USER_ID` 时改用 `V('USER_ID')`。
- 新增收藏历史数据归一脚本，将 `BASIC_JA_DING_USER.USER_ID` 存储的收藏迁移到同工号对应的 `BASIC_USER.USER_ID`。
