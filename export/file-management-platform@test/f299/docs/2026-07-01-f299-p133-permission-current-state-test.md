# 2026-07-01 f299 P133 权限现状测试

## 基本信息

- 环境: `file-management-platform@test`
- 应用: `f299`
- 页面:
  - `P9999` 登录页
  - `P133` 文件库
  - `P156` 权限设置
- 测试账号:
  - `JA016181` 子平台管理员候选账号
  - `JA015117` 普通用户账号
- 执行边界:
  - 仅测试登录与当前现状
  - 不预置对象级权限
  - 不做权限变更前后数据操作

## 测试方案

### SQL 基线

1. 校验两账号已存在于 `FMP_USER`
2. 校验 `P133` 当前 3 个根目录对象:
   - `49775 / 子文件管理平台42`
   - `49776 / 子文件管理平台43`
   - `49777 / 子文件管理平台45`
3. 校验 `JA015117` 在上述根对象无 `MANAGE / DOWNLOAD / VIEW`
4. 校验 `JA016181` 在上述根对象无直接命中的 `MANAGE`
5. 校验两账号在 `FMP_USER_ROLE` 中均无启用角色记录

### 浏览器自动化

1. 使用账号密码登录 `P9999`
2. 登录成功后带会话直达 `P133`
3. 检查 `P133` 根层/当前层可见性、工具栏、列表/网格切换、刷新
4. 检查 `JA016181` 与 `JA015117` 在 `P133` 工具栏上的权限差异
5. 从 `P133` 页内调用 `P133_GET_ACTION_URL` 探测 `P156` 权限设置入口
6. 打开 `P156` 探测页，记录返回数据与异常信息

## 测试用例与结果

### 用例 1: 两账号登录

- 预期:
  - `JA016181` 可登录
  - `JA015117` 可登录
- 实际:
  - 两账号均可成功登录
  - 登录后均进入 `P1`

结论: 通过

### 用例 2: `JA016181` 访问 `P133`

- 预期:
  - 可进入 `P133`
  - 能看到当前子平台文件库内容
  - 若当前账号具备管理能力，应看到管理入口
- 实际:
  - 可成功进入 `P133`
  - 工具栏可见
  - `上传文件`、`创建文件夹` 可见且可点击
  - `列表/网格` 切换可用
  - `刷新` 可用
  - 未选择对象时 `分享 / 重命名 / 移动到 / 权限设置 / 删除` 不显示

结论: 部分通过

### 用例 3: `JA015117` 访问 `P133`

- 预期:
  - 可进入 `P133`
  - 只展示普通用户当前可见能力
- 实际:
  - 可成功进入 `P133`
  - 工具栏可见
  - `上传文件`、`创建文件夹` 不可见
  - `列表/网格` 切换可用
  - `刷新` 可用
  - 未选择对象时 `分享 / 重命名 / 移动到 / 权限设置 / 删除` 不显示

结论: 通过

### 用例 4: `P156` 权限设置入口探测

- 预期:
  - 从 `P133` 正常生成权限设置入口
  - `P156` 能根据目标对象加载权限数据
- 实际:
  - `P133_GET_ACTION_URL` 返回 `success`
  - 但返回的目标 URL 中 `P156_FILE_ID` 为空
  - 打开后 `P156_PERMISSION_JSON` 为:
    - `{"code":"500","message":"ORA-01403: 未找到任何数据"}`
  - 页面仍渲染出 `分享范围 / 添加协作者 / 保存` 等外壳
  - 该现象在 `JA016181` 与 `JA015117` 下均一致

结论: 失败

### 用例 5: 现有仓库浏览器基线复用

- 预期:
  - 复用 `docs/browser-functional.json` 通过主页基线
- 实际:
  - 现有基线卡在 `#p1_tabs_region`
  - 失败截图停留在登录页
  - 但单独调试确认真实登录成功

结论: 失败

说明:
- 这是测试资产与当前 `P1` 结构不一致，不是登录能力本身失败

## SQL 基线结果

### 账号存在性

- `FMP_USER`
  - `JA016181`
  - `JA015117`

### 根对象

- `49775 / 子文件管理平台42 / SYSTEM_ID 42`
- `49776 / 子文件管理平台43 / SYSTEM_ID 43`
- `49777 / 子文件管理平台45 / SYSTEM_ID 45`

### `JA015117` 根对象权限

- `49775`: `MANAGE=0 / DOWNLOAD=0 / VIEW=0`
- `49776`: `MANAGE=0 / DOWNLOAD=0 / VIEW=0`
- `49777`: `MANAGE=0 / DOWNLOAD=0 / VIEW=0`

### `JA016181` 根对象直接管理权限

- `49775`: `MANAGE=0`
- `49776`: `MANAGE=0`
- `49777`: `MANAGE=0`

### 角色基线

- `FMP_USER_ROLE`
  - `JA016181`: `0`
  - `JA015117`: `0`

## 问题清单

### 1. 旧版主页浏览器基线已失效

- 分类: 测试资产问题
- 现象:
  - 复用 `export/file-management-platform@test/f299/docs/browser-functional.json` 时，脚本仍等待 `#p1_tabs_region`
  - 实际当前 `P1` 结构已调整，导致自动化误判失败
- 原因分析:
  - 现有 `browser-functional.json` 未跟随 `P1` 最新 DOM 结构更新
- 解决方案:
  - 更新 `browser-functional.json` 断言与步骤，改为使用当前稳定 selector
  - 不要再以 `#p1_tabs_region` 作为首页成功标志

### 2. `P133 -> P156` 权限设置入口生成后丢失 `P156_FILE_ID`

- 分类: 页面/后端联动问题
- 现象:
  - `P133_GET_ACTION_URL` 返回成功
  - 返回的 `P156` URL 中首个参数为空:
    - `P156_FILE_ID,P156_ROOT_FOLDER_ID,P156_PARENT_FOLDER_ID:,49775,49775`
  - `P156_PERMISSION_JSON` 返回 `ORA-01403`
- 原因分析:
  - 当前探测路径中，目标对象 `FILE_ID` 未被服务端成功带入 `P133_GET_ACTION_URL` 的 URL 生成结果
  - 因此 `P156` 首屏加载权限数据时无有效对象
- 解决方案:
  - 检查 `P133` 在打开 `SETTINGS / SHARE / PERMISSION` 时，是否先同步了正确的 `P133_FILE_ID`
  - 检查 `P133_GET_ACTION_URL` 是否需要显式提交 `P133_FILE_ID`
  - 建议为当前目录对象和选中对象分别建立稳定入口，避免依赖隐式会话状态

### 3. `JA016181` 的前台管理能力与 SQL 直接授权结果不一致

- 分类: 权限模型待确认
- 现象:
  - SQL 基线显示 `JA016181` 对根对象无直接 `MANAGE`
  - 但前台 `P133` 中 `上传文件`、`创建文件夹` 可见
- 原因分析:
  - 当前页面管理能力可能不是单纯由 `FMP_SCOPE` 直接命中控制
  - 也可能来自当前目录对象派生逻辑、系统级口径、创建者口径，或 `fmp_is_file_manager` 的扩展判断
- 解决方案:
  - 核查 `fmp_is_file_manager` 的完整业务口径
  - 明确“子平台管理员候选账号”与“对象级文件管理员”的关系
  - 若业务要求必须由对象级授权驱动，则需补齐口径一致性

## 自动化产物

- 自动化脚本:
  - [run.mjs](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-p133-permission-current-state/run.mjs)
- 自动化结果:
  - [result.json](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-p133-permission-current-state/result.json)
- 截图:
  - [ja016181-p133.png](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-p133-permission-current-state/ja016181-p133.png)
  - [ja015117-p133.png](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-p133-permission-current-state/ja015117-p133.png)
  - [ja016181-p156-probe.png](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-p133-permission-current-state/ja016181-p156-probe.png)
  - [ja015117-p156-probe.png](/D:/ja-projects/apex/apex-bootstrap/output/playwright/f299-p133-permission-current-state/ja015117-p156-probe.png)
- 旧版主页基线失败证据:
  - [result.json](/D:/ja-projects/apex/apex-bootstrap/.omx/results/20260701T080637Z-1125-2adb096e/browser/runner/result.json)
  - [failure.png](/D:/ja-projects/apex/apex-bootstrap/.omx/results/20260701T080637Z-1125-2adb096e/browser/runner/failure.png)

## 总结

- 两账号都能登录，`P133` 也都能访问
- `JA016181` 与 `JA015117` 在 `上传文件 / 创建文件夹` 上存在明显前台差异
- `列表/网格` 切换与 `刷新` 当前可用
- 当前最大阻塞不在登录，而在 `P133 -> P156` 权限设置链路
- 因本轮明确不做权限预置，原需求中的“权限变更前后对比”未继续执行，已按约定停在现状结论
