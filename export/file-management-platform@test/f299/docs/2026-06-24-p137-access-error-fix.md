## 背景

- 页面：P137 文件预览
- 现象：从 P133 打开文件预览时，P137 访问报 `ORA-01403: 未找到任何数据`

## 根因

- P137 的表单区域 `报告内容` 使用 `NATIVE_FORM_INIT` 初始化。
- 该区域的数据源仍然是 `STS_FILE`：
  - `select FILE_ID, FILE_NAME, FILE_URL, FILE_PATH||'/'||FILE_NAME FILE_PATH from STS_FILE`
- 但 P133 当前已经基于 `FMP_FILE` 运行，并把 `P133_FILE_ID` 传给 P137。
- 当传入的 `FILE_ID` 仅存在于 `FMP_FILE` 或以 `FMP_FILE` 为准时，P137 初始化表单查不到记录，触发 `ORA-01403`。

## 修复

- 将 P137 表单区域来源从 `STS_FILE` 切换为 `FMP_FILE`。

## 影响范围

- APEX 页面：`P137`
- 未涉及数据库对象变更
