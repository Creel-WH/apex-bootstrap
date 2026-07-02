# 2026-07-02 f299 权限模型业务逻辑测试

## 基本信息

- 环境: `file-management-platform@test`
- 应用: `f299`
- 页面:
  - `P9999` 登录页
  - `P133` 文件库
  - `P156` 权限设置 / 权限查看
- 测试账号:
  - `JA016181`
  - `JA015117`
- 业务图关键规则:
  - 层级继承
  - 子级降权
  - 本级叠加
  - 可见但能力受限

## 测试对象

- 系统根对象: `49775 / 子文件管理平台42`
- 本轮独立测试树:
  - `49781 / UT_P133_PM_20260702_ROOT`
  - `49782 / UT_P133_PM_20260702_A`
  - `49783 / UT_P133_PM_20260702_B`
  - `49784 / UT_P133_PM_20260702_File_A1`
  - `49785 / UT_P133_PM_20260702_File_B1`

## 执行方案

### SQL 基线

- 核验测试账号存在
- 核验测试树父子层级
- 记录目标对象 `FMP_FILE.scope_type / is_permission_changes`
- 记录目标对象 `FMP_SCOPE` 当前命中结果

### 浏览器自动化

- 两账号登录
- `P133` 根层可见性
- 测试树进入 / 返回 / 列表视图验证
- `P156` 打开、只读态 / 可编辑态验证
- 通过 `P156_PERMISSION_SAVE / P156_PERMISSION_RESET` 执行权限变更
- 每轮保存 `permissionJson`、页面截图、关键行为结果

## 测试轮次

### 轮次 0: 基线

- 验证 `JA016181 / JA015117` 均可见测试树
- 验证 `JA016181` 打开 `P156` 为可编辑态
- 验证 `JA015117` 打开 `P156` 为只读态

### 轮次 1: 管理权限继承

- 在 `UT_P133_PM_20260702_ROOT` 设置:
  - `JA016181 = manage`
- 验证:
  - `A / B / File_A1 / File_B1` 对管理员继承管理能力

### 轮次 2: 下载权限继承

- 在 `UT_P133_PM_20260702_ROOT` 设置:
  - `JA016181 = manage`
  - `JA015117 = download`
- 验证:
  - `JA015117` 在整棵测试树中可见、可进入、可预览
  - `JA015117` 的 `P156` 为只读态

### 轮次 3: 子级降权

- 在 `UT_P133_PM_20260702_A` 设置:
  - `JA016181 = manage`
  - `JA015117 = view`
- 验证:
  - `A / File_A1` 为仅查看
  - `B / File_B1` 仍保持下载

### 轮次 4: 子级叠加

- 在 `UT_P133_PM_20260702_A` 追加:
  - `王家豪 = download`
- 在 `UT_P133_PM_20260702_File_A1` 追加:
  - `蒋照 = manage`
- 验证:
  - `A = A + JA015117 + 王家豪`
  - `File_A1 = A + JA015117 + 王家豪 + 蒋照`

### 轮次 5: 恢复继承

- 先对 `File_A1` 执行恢复继承
- 再对 `A` 执行恢复继承
- 验证:
  - `File_A1` 先回到 `A`
  - `A / File_A1` 最终回到 `UT_P133_PM_20260702_ROOT`

## 自动化产物

- 浏览器脚本:
  - [run.mjs](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-permission-model-business-logic/run.mjs)
- 建树 SQL:
  - [create_test_tree.sql](/D:/ja-projects/apex/apex-bootstrap/output/sql/f299-permission-model/create_test_tree.sql)
- 结果 JSON:
  - [result.json](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-permission-model-business-logic/result.json)

## 执行结果

- 轮次 0 通过
  - `JA016181` 可见测试树，`P156` 为可编辑态
  - `JA015117` 可见测试树，`P156` 标题为“权限查看”，`saveDisabled=true`
- 轮次 1 通过
  - 在 `UT_P133_PM_20260702_ROOT` 保存 `JA016181=manage` 后
  - `UT_P133_PM_20260702_A / UT_P133_PM_20260702_File_A1` 均显示 `李威豪:manage:INHERITED`
- 轮次 2 通过
  - 在 `UT_P133_PM_20260702_ROOT` 保存 `JA016181=manage`、`JA015117=download` 后
  - `UT_P133_PM_20260702_A` 显示 `李威豪:manage:INHERITED; 丁若楠:download:INHERITED`
  - `JA015117` 在 `P133` 中 `上传文件 / 创建文件夹` 均隐藏
- 轮次 3 通过
  - 在 `UT_P133_PM_20260702_A` 保存 `JA016181=manage`、`JA015117=view` 后
  - `A / File_A1` 显示 `丁若楠:view:ASSIGNED_BY_USER`
  - `B / File_B1` 仍保持 `丁若楠:download:INHERITED`
- 轮次 4 通过
  - `UT_P133_PM_20260702_A` 显示 `李威豪:manage; 王家豪:download; 丁若楠:view`
  - `UT_P133_PM_20260702_File_A1` 显示 `李威豪:manage; 蒋照:manage; 王家豪:download; 丁若楠:view`
  - 说明当前实现支持“继承结果 + 本级新增”集合模型
- 轮次 5 通过
  - 先恢复 `File_A1`，再恢复 `A`
  - `A / File_A1` 最终均回到 `李威豪:manage:INHERITED; 丁若楠:download:INHERITED`
  - SQL 最终状态:
    - `49781 / scope_type=USER / is_permission_changes=1`
    - `49782~49785 / is_permission_changes=0`
    - `FMP_SCOPE` 仅保留 `49781` 上的两条记录:
      - `321285555352069 / MANAGE`
      - `24 / VIEW_DOWN`

## 问题清单

### 1. `P156` 保存成功后当前页未自动刷新为最新权限结果

- 分类: 页面状态同步问题
- 现象:
  - 第 1 轮 `P156_PERMISSION_SAVE` 返回 `code=200`
  - 但当前页仍展示旧的“集团内公开 + 3 个继承管理员”
  - 重新打开同一对象后，才显示最新保存结果
- 证据:
  - [ja016181-round1-test-root-p156.png](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-permission-model-business-logic/ja016181-round1-test-root-p156.png)
  - [ja016181-round1-folder-a-p156.png](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-permission-model-business-logic/ja016181-round1-folder-a-p156.png)
- 原因分析:
  - `P156_PERMISSION_SAVE` 成功后，前端当前页状态没有重新执行 `GET` 或重新装载 `P156_PERMISSION_JSON`
  - 导致“后端已保存、当前页仍是旧态”
- 解决建议:
  - 在保存成功回调中强制调用 `p156LoadPermissionData(true)` 或等价刷新逻辑
  - 同步更新 `P156_PERMISSION_JSON` 和页面内协作者列表、分享范围、标题状态

### 2. 文件预览服务当前不可用，阻塞“预览/下载差异”强验证

- 分类: 环境能力阻塞
- 现象:
  - `File_A1` 与 `File_B1` 都能打开预览页
  - 但预览页统一提示“当前文件预览服务不可用，请联系管理员检查 OSS 下载签名配置”
- 证据:
  - [ja015117-round3-file-a1-preview.png](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-permission-model-business-logic/ja015117-round3-file-a1-preview.png)
  - [ja015117-round3-file-b1-preview.png](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-permission-model-business-logic/ja015117-round3-file-b1-preview.png)
- 影响:
  - 本轮可以确认对象可见、可进入、可到达预览页
  - 但无法在当前环境下强验证 `view` 与 `download` 在真实文件服务上的最终下载差异
- 解决建议:
  - 先修复 OSS 预览 / 下载签名配置
  - 修复后补跑 `File_A1(view)` 与 `File_B1(download)` 的真实下载链路验证

## 结论

- 结论: 核心权限模型已基本实现业务逻辑图中的四类规则
  - 层级继承: 通过
  - 子级降权: 通过
  - 本级叠加: 通过
  - 恢复继承: 通过
  - 可见但能力受限: 基本通过
- 当前最主要的实现问题不是权限计算本身，而是 `P156` 保存后的前端状态未即时刷新。
- 当前最主要的验证阻塞不是 `P133/P156` 权限逻辑，而是预览服务环境异常，导致“仅查看 vs 可下载”的文件服务侧差异不能完全闭环。
