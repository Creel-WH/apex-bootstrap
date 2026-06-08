# P133 上传保存 JSON 响应修复

## 请求
- 原始问题：文件上传时出现 `Unexpected token 'O', "OK" is not valid JSON`。
- 环境：`sales-tools@test`
- 应用：`f138`
- 页面：`P133`

## 范围
- 受影响页面：`P133`
- 受影响数据库对象：无
- 受影响 APEX 过程：`P133_SAVE_UPLOAD`

## 根因
- 前端上传流程调用 `apex.server.process('P133_SAVE_UPLOAD', ...)` 后按 JSON 解析响应。
- `P133_SAVE_UPLOAD` 成功时返回纯文本 `OK`，失败时返回纯文本 `ERROR: ...`。
- 浏览器将 `OK` 当作 JSON 解析，触发 `SyntaxError: Unexpected token 'O', "OK" is not valid JSON`。

## 设计
- `P133_SAVE_UPLOAD` 成功和失败均返回 JSON 对象。
- 前端调用显式设置 `dataType: 'json'`。
- 前端仅在 `data.status === 'success'` 时将文件视为保存成功，否则抛出中文上传保存错误。

## 实施记录
- 更新 `P133_SAVE_UPLOAD`，成功返回 `{ "status": "success", "fileId": ... }`。
- 更新 `P133_SAVE_UPLOAD`，异常返回 `{ "status": "error", "message": ... }`。
- 更新前端上传保存调用，显式请求 JSON 并校验 `status`。
- 导入到 `sales-tools@test/f138` 后，live APEX metadata 已确认页面过程和前端脚本为最新版本。

## 验证
- 本地结构测试：`tests/test_f138_p133_save_upload_returns_json.sh`
- 回归测试：`tests/test_f138_p133_drag_drop_upload.sh`
- 回归测试：`tests/test_f138_p133_upload_dropdown_folder_upload.sh`
- 回归测试：`tests/test_f138_p133_rename_updated_by.sh`
- 浏览器功能验证：
  - 使用 `JA016181` 登录测试环境。
  - 从文件库目录进入 `测试文件库`，有效上下文为 `P133_PARENT_FOLDER_ID=40021`。
  - 通过“上传 -> 文件上传”上传 `codex-p133-json-upload-20260603150322.txt`。
  - 页面显示 `上传完成`，网格新增文件行，未再出现 `OK is not valid JSON`。
  - 上传后的 Codex 测试文件已通过页面删除流程清理。
- 说明：裸开 `P133` 不带父目录参数时，上传会因父文件夹上下文缺失触发 `ORA-01403`；这是无效入口上下文，不是本次 JSON 解析问题。

## 当前状态
- 状态：`DONE`
- 阶段：connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- 遗留问题：未发现与本次上传 JSON 响应相关的问题。
- 恢复说明：机器状态以 `ai-context.json` 为准。

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json
