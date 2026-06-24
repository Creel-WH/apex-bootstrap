# P133 上传文件名中文编码与默认同步状态修复

## 请求
- 原始问题：修复上传文件名中文被编码的问题。
- 原始问题：将文件表同步状态改为默认未同步，后续新增文件默认都是未同步。
- 环境：`sales-tools@test`
- 应用：`f138`
- 页面：`P133`

## 范围
- 受影响页面：`P133`
- 受影响数据库对象：`STS_FILE`

## 初步判断
- `P133` 上传链路前端对 `file.name` 做了双重 `encodeURIComponent`，后端 `UTL_URL.UNESCAPE` 只执行一次，导致中文文件名入库后仍保留 URL 编码。
- `STS_FILE.NEED_SYNC` 当前默认值为 `1`，而 `P133` 页面静态 LOV 定义为 `未同步=0`、`已同步=1`，因此默认值应改为 `0`。

## 验证目标
- 新上传的中文文件名落库后应保持原始中文名称。
- `STS_FILE` 后续新增记录默认 `NEED_SYNC = 0`。
- `P133` 页面同步状态显示继续保持 `0=未同步`、`1=已同步`。

## 设计
- 将 `P133` 上传保存参数中的文件名、文件夹名改为原样传值，不在前端手工做 `encodeURIComponent`，由 APEX 请求层处理传输编码，后端保持单次 `UTL_URL.UNESCAPE`。
- 将 `STS_FILE.NEED_SYNC` 数据库默认值改为 `0`，统一后续新增文件的默认同步状态。
- 保持 P133 页面同步状态 LOV 映射不变，仍然使用 `未同步=0`、`已同步=1`。

## 实施记录
- 更新 `P133` 上传前端逻辑，将 `file.name` 从手工编码改为原样传值。
- 更新 `P133` 文件夹上传前端逻辑，将 `folderName` 从手工编码改为原样传值。
- 更新 `STS_FILE` 表定义，将 `NEED_SYNC` 默认值从 `1` 调整为 `0`。
- 更新 `P133` 页面文档，补充中文文件名和默认同步状态说明。
- 新增结构回归测试，覆盖文件名编码和 `NEED_SYNC` 默认值。

## 验证
- 本地结构测试：`tests/test_f138_p133_upload_name_and_need_sync_default.sh`
- 回归测试：`tests/test_f138_p133_save_upload_returns_json.sh`
- 回归测试：`tests/test_f138_p133_drag_drop_upload.sh`
- 回归测试：`tests/test_f138_p133_upload_dropdown_folder_upload.sh`
- 回归测试：`tests/test_f138_p133_rename_updated_by.sh`
- 浏览器功能验证：
- 已重新导入 `sales-tools@test/f138` 的 `P133` 页面。
- 已执行 `alter table sts_file modify need_sync default 0`，并查询到 `DATA_DEFAULT = 0`。
- 在测试文件库 `40021` 中实际上传中文文件名样本：
- 旧样本 `%E4...` 为修复前数据；
- 新样本 `中文修复验证-20260603165000.txt` 在页面中已按原始中文正常显示；
- 新上传文件同步状态默认显示为 `未同步`。
- 上传后的 Codex 验证文件已通过页面删除流程清理。
- 结果：以上测试与测试环境验证均已通过。

## 部署状态
- 页面源码与数据库源码已在仓库修复完成。
- `P133` 页面已导入测试环境。
- `STS_FILE.NEED_SYNC` 默认值已下发到测试库。

## 当前状态
- 状态：`DONE`
- 遗留阻塞：无。

## Current Status
- Status: TESTED
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: TESTED
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: TESTED
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=FAILED, verification=PASSED, delivery=FAILED
- Open Issues: implementation, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=PASSED, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=PASSED, delivery=FAILED
- Open Issues: delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=PASSED, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=PASSED, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json
