# APEX Deployment

## 前置条件

- 已创建目标应用目录：`export/<env_alias>/f<APP_ID>/`
- 已填写根目录 `conn.json`
- 已确认脚本使用的环境别名与 `conn.json` 中的 key 完全一致
- 如使用 TNS / wallet 模式，已准备好 `db_tns_admin`
- 已执行 `bash tools/export_apex_app.sh <env_alias> <APP_ID>`
- APEX 导出文件已存在于 `export/<env_alias>/f<APP_ID>/apex/`
- 页面文档已同步维护在 `export/<env_alias>/f<APP_ID>/docs/pages/`

下面示例中的 `dev@oci`、`100`、`10` 只是占位示例；APEX app id
可能随环境变化，不能在代码中写死。

## 整应用导出

```bash
bash tools/export_apex_app.sh <env_alias> <APP_ID>
bash tools/export_apex_app.sh <env_alias> <APP_ID> nodb
```

导出结果写入 `export/<env_alias>/f<APP_ID>/apex/`。

如果发布目标固定为 `dev@oci -> test@oci`，推荐直接走仓库内标准化脚本：

```bash
bash tools/rebuild_test_from_single_sql.sh <source_app_id> <target_app_id>
```

该脚本强制执行以下顺序：

1. `dev@oci` 导出单一 SQL 文件
2. `test@oci` 用单一 SQL 导入目标 app
3. 重新 canonicalize `export/test@oci/f<TARGET_APP_ID>/`
4. 执行 `db` gate
5. 执行 `deploy` gate（含 compare）
6. 执行 `browser`
7. 执行 `browser-functional`

也就是说，未来从 `dev@oci` 推 `test@oci` 时，不再允许跳过单一 SQL 导入步骤。

`tools/export_apex_app.sh` 会在导出后移除 `workspace/credentials/*.sql`
以及 `install.sql` 里的对应 include。它会保留应用里已经维护好的 curated
supporting objects，并保留 supporting_objects_*.sql 这类 app static files。
这是必须的，因为超大的 package body 不能直接塞进 supporting object 安装
脚本；它们需要先作为 static application files 导入目标环境，再由
`application/deployment/install/*.sql` 中的 loader 脚本读取并执行。依赖
workspace credential 的社交登录 authentication export 仍会被移除，避免
导入时引用不存在的 credential。OAuth / Web Credential 这类运行时凭据必须
通过环境配置、CI secrets 或部署后的显式配置恢复，不能提交到应用源码目录。

### 单一 SQL 文件导入的特别说明

通过：

```bash
apex export -applicationid <APP_ID>
```

生成的单一 `f<APP_ID>.sql` 文件可以包含：

- APEX 应用元数据
- Supporting Objects 元数据
- `application/deployment/install/*.sql` installer 定义
- `supporting_objects_*.pks/.pkb` 这类静态文件引用

这意味着它适合 **APEX Builder 页面导入** 场景，因为 Builder 导入流程能够在
安装向导里执行 Supporting Objects。

但是要注意：

- `workspace/credentials/*.sql` 会被有意移除
- 社交登录 credential、其他外部 API token 这类 **workspace-scoped
  Web Credential / OAuth Credential** 不会随单一 SQL 一起恢复

因此，即使单一 SQL 已成功导入应用，下面这些环境能力仍可能缺失：

- Google / OAuth 登录 credential
- 其他依赖 workspace credential 的外部集成

如果应用配置中已经启用对应功能，则仍需补齐对应环境配置，否则：

- 页面本身可能能打开
- 但点击外部集成动作时会在运行态失败

例如本仓库里的 `P122 Coze` 现已改为通过本地 `apexcn_rag_pkg`
处理 URL 内容抓取与翻译：

- 优先读取 `apexcn_configs.FIRECRAWL_API_KEY` 调用 Firecrawl 抓取 markdown
- 若 `FIRECRAWL_API_KEY` 缺失或 Firecrawl 返回不可用内容，则回退到包内的其他抓取 provider

因此该链路不再依赖 workspace 级 `COZE_PAT` credential，但仍依赖目标环境具备可用的
外网访问能力与正确的 `apexcn_configs` 配置。

从 `2026-04-20` 起，`tools/export_apex_app.sh` 还会对目标环境导出的
`db/` 与浏览器 specs 做 **canonical normalization**：

1. 原始数据库对象导出保存在 `export/<env_alias>/f<APP_ID>/db.raw-export/`
2. 如果仓库中能找到同 alias 的 richer canonical baseline（优先 `dev@oci`）
3. 则以 baseline 重建 `export/<env_alias>/f<APP_ID>/db/`
4. 并对目标 app 做最小环境补丁（例如 `apexcn_app_versions` 的
   `application_id` 默认值）
5. 同时复制 `browser-smoke.json` / `browser-functional.json` 到目标
   `docs/`，确保目标环境也具备可直接 gate 的浏览器基线

这一步的目的不是“覆盖原始导出”，而是把导出物规范成：

- 可重跑的 `db gate` 输入
- 可追溯的 release artifact
- 可保留原始环境快照的双层结构

因此：

- `db.raw-export/` 是原始快照
- `db/` 是 gate/deploy 所使用的 canonical 结构

如果某个环境的 `db/` 明显少于 canonical baseline，优先以
`tools/export_apex_app.sh` 重导，而不是手工补若干单文件。

如需单独导出由 APEX 页面/共享组件引用到的数据库对象：

```bash
bash tools/export_apex_db.sh <env_alias> <APP_ID>
```

## 单页面导出

```bash
bash tools/export_apex_page.sh <env_alias> <APP_ID> <PAGE_ID>
```

页面导出结果写入 `export/<env_alias>/f<APP_ID>/apex/application/pages/page_<PAGE_ID>.sql`。

## 整应用导入

```bash
bash tools/import_apex_app.sh <env_alias> <SOURCE_APP_ID>
bash tools/import_apex_app.sh <env_alias> <SOURCE_APP_ID> <TARGET_APP_ID>
bash tools/import_apex_app.sh <source_env_alias> <SOURCE_APP_ID> <target_env_alias>
bash tools/import_apex_app.sh <source_env_alias> <SOURCE_APP_ID> <target_env_alias> <TARGET_APP_ID>
```

## Migration Pitfalls To Preserve In Future Exports

The export/import path for app-owned supporting objects has a few non-obvious
constraints that must stay intact.

### 1. Do not strip curated supporting objects from the split export

The split export must keep:

- `application/deployment/install/*.sql`
- `application/shared_components/files/supporting_objects_*.sql`

Those files are not optional duplicates. They are part of the deployment
contract for cross-environment imports.

If they are removed from `install.sql` or deleted from the export tree, the
target environment may import the APEX UI successfully while silently skipping
required supporting object installation.

### 2. Large package bodies must travel as app static files first

Large package bodies must **not** be inlined directly into one huge supporting
object install script.

The safe pattern is:

1. export the package spec/body payload as
   `application/shared_components/files/supporting_objects_<name>.pks/.pkb`
2. import those files as app static files in the target application
3. let `application/deployment/install/*.sql` loader scripts read the static
   files from `apex_application_static_files`
4. compile the package after the loader runs

This is required for oversized packages such as `APEXCN_RAG_PKG`, where direct
inline supporting-object SQL becomes brittle and can fail during import.

### 3. Views must be split into one install script per view

Do **not** group every view into a single combined script such as
`install_*_db_views_sql.sql`.

Instead, generate one install script per source file under `db/views/`, for
example:

- `install_apexcn_users_v_sql.sql`
- `install_apexcn_threads_v_sql.sql`
- `install_apexcn_threads_v2_sql.sql`
- `install_apexcn_threads_fs_v_sql.sql`
- `install_apexcn_rag_admin_ingest_v_sql.sql`

This makes import failures easier to isolate and prevents one broken view from
blocking the entire view batch.

### 4. Re-export before re-import when the supporting-object generator changes

If you modify the supporting-object generation rules, do not reuse an old split
export. Re-run:

```bash
bash tools/export_apex_app.sh <env_alias> <APP_ID> nodb
```

or the full export when DB source also needs refreshing.

Then confirm the regenerated `install.sql` includes the expected
`application/deployment/install/*.sql` and `supporting_objects_*.sql` lines
before importing again.

### 5. Verify the target app identity after every cross-environment import

When importing into another workspace, always query the final target app id and
alias after import. Do not assume the runtime alias will match the source alias
if the target workspace already contains a conflicting application.

At minimum, verify:

- imported app id
- imported alias
- page count
- supporting static file count
- invalid object count
- real browser reachability of the target runtime URL

### 6. Builder 手工导入后的强制复核

如果目标环境是通过 **APEX Builder 页面手工导入** 单一 SQL 文件完成发布，
不要把“导入成功”直接等同于“运行态一致”。

原因：

- Builder 可以执行 Supporting Objects
- 但 Supporting Objects 读取的是导出工件中携带的 static files / install scripts
- 如果这些 Supporting Objects 静态文件本身已经过期，就可能把目标环境中的
  package / view / MV **重新覆盖回旧版本**

这是一个真实存在的回退风险，尤其对以下对象要重点复核：

- `APEXCN_FORUM_PKG`
- `APEXCN_RAG_PKG`
- `APEXCN_THREADS_FS_V`
- `APEXCN_THREAD_FS_BASE_MV`

Builder 导入后，至少必须立刻执行：

```bash
bash tools/check_release_config_guardrails.sh <target_env> <target_app_id>
bash tools/compare_apex_release_state.sh <source_env> <source_app_id> <target_env> <target_app_id>
```

如果 compare 失败，不允许把该次 Builder 导入视为发布完成。

### 7. 代码验证完成后，必须回写 Supporting Objects 快照

从 `2026-04-20` 起，凡是影响 app-owned DB 源码的交付，在代码修改、数据库验证、
浏览器验证全部通过后，还必须把**目标应用自身**携带的 APEX Supporting Objects
快照同步到当前 repo 的 DB 源码版本，再视为交付完成。

原因：

- 单一 SQL 导出携带的是 **应用里当前内嵌的 Supporting Objects 快照**
- 它不会自动读取仓库里更新后的 `db/` 目录
- 如果这一步漏做，后续从线上 Builder 手工导出的单一 SQL 仍可能把旧版 package /
  view / install payload 带到其他环境

执行原则：

1. 先完成代码、SQL、浏览器验证
2. 再同步目标 app 的 Supporting Objects static files / install payload
3. 最后重新核对 live app 中 supporting object 内容与 repo `db/` 源码一致

至少要覆盖以下高风险对象：

- `APEXCN_AUTH_PKG`
- `APEXCN_UTIL_PKG`
- `APEXCN_FORUM_PKG`
- `APEXCN_RAG_PKG`

对于论坛主链路，最小浏览器复核至少应覆盖：

- Home
- P19 thread list（检查 avatar）
- P14 thread detail（检查详情是否正常渲染）

如果是管理链路发布，还应覆盖：

- P24 release management
- P120 RAG-KB
- P122 RAG-DOCS

## 单页面导入

```bash
bash tools/import_apex_page.sh <env_alias> <SOURCE_APP_ID> <PAGE_ID>
bash tools/import_apex_page.sh <env_alias> <SOURCE_APP_ID> <PAGE_ID> <TARGET_APP_ID>
bash tools/import_apex_page.sh <env_alias> <SOURCE_APP_ID> <PAGE_ID> <TARGET_APP_ID> <TARGET_PAGE_ID>
```

## Thin vertical slice browser baseline

如果某个应用需要自己的 browser smoke 基线，请在该应用目录下维护：

- `export/<env_alias>/f<APP_ID>/docs/browser-smoke.json`
- `export/<env_alias>/f<APP_ID>/docs/browser-functional.json`

最小示例：

```json
{
  "label": "app-{app_id}-home",
  "url": "https://example.test/ords/r/dev/app-{app_id}/home",
  "contains_text": "Home"
}
```

说明：

- `url`、`label`、`contains_text`、`selector` 都支持占位符
- 支持的占位符：`{env_alias}`、`{workspace}`、`{app_id}`、`{app_code}`、`{spec_app_id}`、`{spec_app_code}`
- `app_id` 表示**实际运行 smoke 的目标 app id**
- 当 deploy 目标 app id 与源码 app id 不同时，`tools/run_gate.sh` 会把 browser gate 的 runtime app id 自动切到 deploy target app id
- 如果应用未提供 `browser-smoke.json`，browser gate 才会回退到 `conn.json` 里的 env 级 `APEX_BROWSER_SMOKE_URL` / expectation

`browser-functional.json` 用于关键交互验证，最小示例：

```json
{
  "label": "app-{app_id}-functional",
  "url": "https://example.test/ords/r/dev/app-{app_id}/home",
  "steps": [
    { "type": "click", "selector": "#open-dialog" },
    { "type": "wait_for_selector", "selector": "#dialog" }
  ],
  "assertions": [
    { "type": "selector_visible", "selector": "#dialog" },
    { "type": "title_includes", "value": "Home" }
  ]
}
```

当前支持的 functional `steps`：

- `click`
- `fill`
- `press`
- `wait_for_text`
- `wait_for_selector`
- `goto`

当前支持的 functional `assertions`：

- `text_visible`
- `selector_visible`
- `url_includes`
- `title_includes`

## 发布检查清单

- SQL 已执行 `tools/sql_as.sh <env_alias> <APP_ID> @export/<env_alias>/f<APP_ID>/db/install.sql`
- SQL 已执行 `tools/sql_as.sh <env_alias> <APP_ID> @export/<env_alias>/f<APP_ID>/db/compile_all.sql`
- 受影响测试已运行
- APEX 导出文件已提交
- APEX split export 中不存在 `workspace/credentials/*.sql`
- APEX split export 中的 supporting objects 为基于 `db/` 受控生成的 curated 安装资产
- APEX split export 中不存在依赖 workspace credential 的社交登录 authentication export
- 对应页面文档已同步到 `export/<env_alias>/f<APP_ID>/docs/pages/`
- 如本次变更影响 app-owned DB 源码，已将目标 app 的 Supporting Objects 同步为当前 repo DB 源码快照
- 运行 `tools/check_release_config_guardrails.sh <env_alias> <APP_ID>` 并通过
- 如果目标环境要与另一个环境保持发布一致，运行
  `tools/compare_apex_release_state.sh <source_env> <source_app_id> <target_env> <target_app_id>`
  并通过
- 如果通过 `tools/run_gate.sh` 执行 deploy gate，可通过
  `RUN_GATE_COMPARE_SOURCE_ENV` / `RUN_GATE_COMPARE_SOURCE_APP_ID` 自动启用
  发布后 compare 检查
- deploy 后如存在 `APEXCN_THREAD_FS_BASE_MV`，应确保其状态为 `FRESH / VALID`
