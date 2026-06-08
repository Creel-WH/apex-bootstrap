# P9999 钉钉授权登录失败排查与修复记录

## 请求
- 原始问题：排查钉钉授权登录失败原因，并在确认范围后推进修复。
- 环境：`dingtalk-workbench@prod`
- 应用：`f230`
- 页面：`P9999`

## 范围
- 受影响页面：`P9999`
- 受影响数据库对象：`JW_RESOLVE_URL_BASIC`、`JW_DING_LOGIN`
- 同步纳入仓库真相源的相关登录对象：`JW_AUTHENTICATION_LOGIN`、`JW_LOGIN_SUCCESS_SAVE_USER`
- 受影响 APEX 组件：`login_auth` 认证方案、`P9999` 的 `免登` / `ding_login` 过程

## 现象
- 用户在钉钉环境发起授权登录后，未能稳定完成免登。
- 生产日志 `JW_LOGS` 中存在多条 `login_debug = {"data":"error"}`。
- 生产日志中也出现过 `login_error`，堆栈指向 `APEX_240200.WWV_FLOW_WEB_SERVICES`。

## 本次执行中的重新校正
### 1. 生产库里的 `JW_RESOLVE_URL_BASIC` 已经是修正后的版本
- 本次直接从生产库 `USER_SOURCE` / `DBMS_METADATA.GET_DDL` 复查后确认：
- `JW_RESOLVE_URL_BASIC` 当前实际调用的是 `JA_HTTP_REQUEST(v_url, 'GET')`。
- 因此“仍在请求 `p_url` 而不是 `v_url`”不是当前生产库的现状，属于过时结论。

### 2. `JW_DING_LOGIN` 确实存在对象状态问题
- 本次执行前，`JW_DING_LOGIN` 在生产库中状态为 `INVALID`。
- 现场执行 `alter function jw_ding_login compile;` 后，状态已恢复为 `VALID`。
- `show errors function JW_DING_LOGIN` 未显示编译错误，说明此前更像是失效状态残留而非持续性语法错误。

### 3. 数据库外呼能力并未完全失效，但上游接口返回了业务错误
- 使用应用实际依赖的 `JA_HTTP_REQUEST` 访问：
  - `https://jingapi.jasolar.com/jingjie/oapi/decode/test`
  - `https://api.jasolar.com:26000/workbench/apis/session/apex/automatic-authorized/test`
- 两个地址都能返回 `{"data":"error"}`，没有直接抛出证书或网络异常。
- 这说明应用实际使用的 HTTP 调用链路具备基本访问能力，但当前拿到的是上游业务错误响应，而不是成功的授权解析结果。

### 4. 直接 `UTL_HTTP` 探测与应用调用结果不一致
- 直接 `UTL_HTTP.REQUEST('https://jingapi.jasolar.com/jingjie/oapi/decode/test')` 仍返回 `ORA-29024: 证书验证失败`。
- 但应用实际走的 `JA_HTTP_REQUEST` 能返回业务响应。
- 结论：不能仅依据 `UTL_HTTP` 的探测结果判断应用链路不可用，当前更应以 `JA_HTTP_REQUEST` 这条真实执行路径为准。

## 当前结论
- 当前最明确、已落地修复的问题是：`JW_DING_LOGIN` 的 `INVALID` 状态，现已修复为 `VALID`。
- `JW_RESOLVE_URL_BASIC` 在线上已是正确版本，本次未再改库内逻辑。
- 钉钉授权登录仍存在的剩余风险，更像是“授权码换取用户信息阶段拿到上游错误响应”，而不是本地认证规则错误。
- `JW_AUTHENTICATION_LOGIN` 的工号/手机号 + `JOB_NUMBER || '..'` 校验规则与登录页前端填充值保持一致，不是当前主因。

## 已执行变更
- 生产库执行：重新编译 `JW_DING_LOGIN`
- 仓库同步：
  - 新增 `db/functions/jw_resolve_url_basic.sql`
  - 新增 `db/functions/jw_ding_login.sql`
  - 新增 `db/functions/jw_authentication_login.sql`
  - 新增 `db/procedures/jw_login_success_save_user.sql`
- 重新执行 `export-app dingtalk-workbench@prod 230`，同步最新 APEX export

## 证据摘要
- 数据库上下文：`SESSION_USER = JA_WORKBENCH`，`DB_NAME = YWJAPDB`
- 对象状态修复前：
  - `JW_DING_LOGIN = INVALID`
- 对象状态修复后：
  - `JW_DING_LOGIN = VALID`
- 生产日志近况：
  - 多条 `login_debug = {"data":"error"}`
  - 存在 `login_error` 指向 `WWV_FLOW_WEB_SERVICES`
- 字典配置：
  - `DING_LOGIN = https://api.jasolar.com:26000/workbench/apis/session/apex/automatic-authorized/`
  - `DING_REQUEST_URL = https://api.jasolar.com:26000/workbench/apex`

## 验证
- 数据库验证：
  - 已确认 `JW_DING_LOGIN` 编译后为 `VALID`
  - 已确认 `JA_HTTP_REQUEST` 可访问两个目标接口并返回业务响应
- APEX 资产验证：
  - 已重新导出 `f230` 应用及 DB 资产
- 未完成项：
  - 真实钉钉容器内的端到端授权登录验证，本地当前无法直接构造有效钉钉授权码完成复现

## 风险与后续建议
- 如果线上用户仍报钉钉授权失败，下一步应优先抓取一次真实失败时的完整回调 URL、授权码对应日志、以及上游接口原始响应。
- 建议在 `JW_RESOLVE_URL_BASIC` / `JW_DING_LOGIN` 中补更细的诊断日志，例如目标 URL、返回 code/msg、解析出的工号字段是否为空。
- 如果需要继续追到最终根因，下一步最有效的是在真实钉钉环境中做一次带日志的功能验证，而不是继续用占位 `test` code 探测。
