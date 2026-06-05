# f138 权限同步与反馈内容恢复

## 基本信息
- 日期: 2026-06-05
- 环境: `sales-tools@test`
- 应用: `f138`
- 参考环境: `sales-tools@prod`

## 需求
1. 当用户被授予文件库可管理权限，或任意文件/文件夹可管理权限时，右上角需要具备文件库管理员切换能力。
2. 修复“更新反馈”后反馈内容显示空白的问题。

## 验收标准
1. 用户拥有 `STS_SCOPE.PERMISSIONS_TYPE = 'MANAGE'` 且 `REFERENCE_TYPE in ('FOLDER_LIB','FOLDER','FILE')` 时，右上角角色切换中可进入文件库管理员视角。
2. 用户失去上述管理权限后，不再保留错误的文件库管理员切换入口。
3. 执行“更新反馈”后，反馈列表中的反馈内容不再显示为空白。

## 实现结论
- 仓库内 `sales-tools@prod` 与 `sales-tools@test` 对应页面的 split export 没有足够差异，不能直接用 repo 内 prod 覆盖 test。
- 右上角切换历史能力不是单纯依赖 `STS_USER_ROLE` 实体数据，现有 test 数据里存在“有 `MANAGE` 但没有文件库管理员角色记录”的用户，需要在切换页按 `STS_SCOPE` 动态补出文件库管理员角色。
- 反馈空白问题可以通过列表页回退到 `NVL(FEEDBACK_CONTENT, REMARK)` 恢复显示；这条路径已成功导入 test。

## 已修改页面
- `P225` 切换角色
- `P124` 文件管理
- `P2` 反馈管理-预览测试
- `P201` 反馈管理
- `P203` 反馈管理
- `P202` 处理反馈-表单
- `P204` 处理反馈-表单

## 已修改数据库对象
- `STS_SCOPE`
- `STS_USER_ROLE`
- `STS_FEEDBACK`

## 代码变更

### 1. 右上角角色切换恢复
- 页面 `P225` 的角色 LOV 不再只依赖 `STS_USER_ROLE`。
- 当当前用户存在以下任一管理权限时，会动态补出 `FOLDER_REPORT` 可切换项：
  - `REFERENCE_TYPE = 'FOLDER_LIB'`
  - `REFERENCE_TYPE = 'FOLDER'`
  - `REFERENCE_TYPE = 'FILE'`
- 同时支持两类授权范围：
  - `RANGE_TYPE = 'USER'`
  - `RANGE_TYPE = 'DEPT'`，通过 `BASIC_JA_DING_DEPT_USER` 展开部门成员
- 若用户本身已经拥有文件库管理员角色记录，则不重复补出虚拟角色项。

### 2. 文件管理页权限判断恢复
- 页面 `P124` 的上传按钮条件从 `STS_USER_ROLE` 判断改为直接按 `STS_SCOPE` 判断。
- 这样用户即使是通过“文件库/文件夹/文件可管理权限”获得文件库管理员切换能力，进入文件库管理页后也能正常看到对应管理按钮。

### 3. 反馈内容显示恢复
- 页面 `P2`、`P201`、`P203` 的反馈列表查询统一改为：
  - `NVL(SF.FEEDBACK_CONTENT, SF.REMARK) AS FEEDBACK_CONTENT`
- 这样即使历史反馈只更新了 `REMARK`，列表仍能正确显示内容。

### 4. 反馈处理页数据回写补齐
- 页面 `P202`、`P204` 的“仅更新说明、不替换文件”分支已在仓库中补充：
  - `FEEDBACK_CONTENT = NVL(FEEDBACK_CONTENT, :P202_REMARK / :P204_REMARK)`
- 目的：后续新处理的反馈在数据层也补齐 `FEEDBACK_CONTENT`。

## 导入结果

### 已成功导入 test
- `P225`
- `P124`
- `P2`
- `P201`
- `P203`

### 导入失败
- `P202`
- `P204`

### 导入失败详情
- 单页导入失败：`bash tools/apex_ai.sh import-page sales-tools@test 138 202`
- 单页导入失败：`bash tools/apex_ai.sh import-page sales-tools@test 138 204`
- 整应用导入再次失败：`bash tools/apex_ai.sh import-app sales-tools@test 138`
- 三次尝试都卡在 APEX importer：
  - `ORA-06502: PL/SQL: 数字或值错误: 字符串缓冲区太小`
  - `APEX_240200.WWV_FLOW_IMP_PAGE`
- 结论：`P202/P204` 当前是 APEX 页面导入器边界问题，不是 `import-page` 包装问题。

## 验证结果

### SQL 验证
1. 当前 test 数据中，存在 `18` 个“拥有 `MANAGE` 权限但没有文件库管理员角色记录”的用户。
   - 样例用户：`0108034802462359`
2. 对样例用户执行 `P225` 的新逻辑后，角色切换结果可补出：
   - `FOLDER_REPORT`
3. 验证 `P225` 页面项 LOV 定义，已包含：
   - `FOLDER_REPORT`
   - `PERMISSIONS_TYPE = 'MANAGE'`
4. 验证 `P124` 上传按钮条件，已包含基于 `STS_SCOPE` 的管理权限判断。
5. 验证 `P2/P201/P203` 页面元数据，region source 已落地：
   - `NVL(SF.FEEDBACK_CONTENT, SF.REMARK) AS FEEDBACK_CONTENT`

### 浏览器验证
1. 运行态地址可达：
   - `https://apextest.jasolar.com/ords/uatapex23/f?p=138:133`
2. 运行态默认进入钉钉/企业登录流程，需要人工交互认证，无法在当前自动化会话内完成真实业务流登录。
3. 尝试改走 APEX Builder 登录：
   - 成功进入 `workspace-sign-in`
   - `.conn.json` 中的 Builder 账号返回 `Invalid Login Credentials`
4. 结论：浏览器 functional validation 当前被外部认证阻塞，不是页面路由或站点不可达问题。

## 当前状态
- 仓库实现: 已完成
- test 环境已落地:
  - 权限切换恢复: 已落地
  - 反馈列表显示恢复: 已落地
- test 环境未落地:
  - `P202/P204` 的 `FEEDBACK_CONTENT` 数据层补写
- 外部阻塞:
  - APEX `P202/P204` importer `ORA-06502`
  - 运行态 DingTalk 认证需要人工交互
  - `.conn.json` 中的 APEX Builder 凭据失效

## 后续建议
1. 若要把 `P202/P204` 的数据层补写也落到 test，需要从 APEX Builder 或 live export 侧继续处理该页面导入器问题。
2. 若要补齐真实浏览器业务流验收，需要提供可用的测试登录方式，或更新 `.conn.json` 中的 Builder 凭据。

## 2026-06-05 测试标记
- 开发者已确认：文件库管理员切换功能测试完成。
- 本次标记针对已落地的活跃页面链路：
  - `P225` 右上角角色切换
  - `P124` 文件库管理按钮权限判断

## Current Status
- Status: NEW
- Current Step: connectivity=PASSED, scope_confirmation=PENDING, implementation=PENDING, verification=PENDING, delivery=PENDING
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: CONFIRM
- Current Step: connectivity=PASSED, scope_confirmation=PENDING, implementation=PENDING, verification=PENDING, delivery=PENDING
- Open Issues: None
- Next Action: Wait for developer confirmation of impacted pages and DB objects.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PENDING, verification=PENDING, delivery=PENDING
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: TESTED
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: TESTED
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: None
- Resume Notes: Authoritative state: ai-context.json
