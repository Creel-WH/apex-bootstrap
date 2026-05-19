# PROJECT.md

## 1. 项目简介

- 项目名称：apex-bootstrap
- 项目类型：Oracle APEX + PL/SQL 多应用工作区脚手架
- 项目用途：为多个 Oracle APEX 应用提供导入、导出、数据库对象维护、功能迁移、验证门禁和 AI 协作交付流程。
- 核心入口：`tools/apex_ai.sh`
- 主要约束：以 `export/<env_alias>/f<APP_ID>/` 为应用隔离边界，数据库源码归属到具体应用的 `db/` 目录。

## 2. 技术架构

- APEX：使用 Oracle APEX split export 作为应用源码。
- 数据库：Oracle SQL / PL/SQL，按对象类型组织表、视图、包、触发器、索引、物化视图、测试数据等。
- Shell 工具：Bash 脚本负责环境检查、SQLcl 调用、APEX 导入导出、浏览器验证和交付门禁。
- 浏览器验证：Playwright/脚本化 smoke 与 functional flow 校验。
- 配置模型：根目录 `conn.json` 保存共享非密连接清单，本地 secret overlay 可使用忽略提交的 `.conn.json`；`.conn.json` 可以用 `apex_app_id` 为具体 alias 提供默认应用 ID。
- AI 协作状态：`ai-context.json` 提供机器可读任务状态，功能切片完成状态以 `current_task.status == "DONE"` 为准。

## 3. 目录结构

| 路径 | 说明 |
|---|---|
| `AGENTS.md` | 仓库级 AI 协作规则与执行协议 |
| `PROJECT.md` | 项目学习档案与维护说明 |
| `README.md` | 面向开发者的总体使用说明 |
| `ai-context.json` | AI 自动化上下文与当前任务状态 |
| `conn.json` | 共享环境连接与运行时清单，不应包含数据库密码 |
| `.conn.json` | 本地 secret 或同名环境覆盖文件，应保持忽略提交 |
| `.codex/skills/apex-bootstrap/` | 项目内置 Codex skill 与执行参考文档 |
| `.agents/` | Agent 兼容入口与本地协作配置 |
| `.opencode/` | OpenCode 兼容入口与本地协作配置 |
| `docs/` | 项目级约定、工作流、ADR、发布与验证说明 |
| `export/<env_alias>/f<APP_ID>/` | 单个环境下单个 APEX 应用的源码和交付资产 |
| `export/<env_alias>/f<APP_ID>/db/` | 该应用拥有的数据库对象源码 |
| `export/<env_alias>/f<APP_ID>/docs/` | 该应用的功能记录、页面文档和浏览器验证规格 |
| `export/_template/` | 应用导出目录模板 |
| `tools/` | 共享脚本工具，保持扁平结构 |
| `tests/` | 仓库级 shell 测试与验证用例 |

## 4. 核心工作模型

本仓库的顶层模型是应用隔离，而不是共享数据库层。

- 每个环境放在 `export/<env_alias>/` 下，例如 `dev@oci`、`dev@adb`、`prod@oci`。
- 每个应用放在 `export/<env_alias>/f<APP_ID>/` 下，例如 `export/dev@oci/f101/`。
- APEX export、页面文档、浏览器验证规格和数据库对象都归属于具体应用。
- 不创建仓库级共享 `db/` 或旧式 `applications/` 层。
- 多应用迁移以显式 copy-and-adapt 为准，不隐式共享对象所有权。

## 5. 主要命令

开发者通常只需要通过 `tools/apex_ai.sh` 进入：

```bash
bash tools/apex_ai.sh init <env_alias>
bash tools/apex_ai.sh check <env_alias> --deep
bash tools/apex_ai.sh check
bash tools/apex_ai.sh sql-check <env_alias>
bash tools/apex_ai.sh usql-check <env_alias>
bash tools/apex_ai.sh feature-status
bash tools/apex_ai.sh feature-next
```

显式维护或 AI 内部工作流会使用：

```bash
bash tools/apex_ai.sh export-app <env_alias> <app_id>
bash tools/apex_ai.sh export-page <env_alias> <app_id> <page_id>
bash tools/apex_ai.sh import-app <env_alias> <source_app_id>
bash tools/apex_ai.sh import-page <env_alias> <source_app_id> <page_id>
bash tools/apex_ai.sh gate <env_alias> <app_id> all
```

底层脚本位于 `tools/`，例如 `sql_as.sh`、`db_use.sh`、`run_gate.sh`、`export_apex_app.sh`、`import_apex_app.sh`、`browser_smoke.sh`、`browser_functional.sh`。

## 6. 功能切片流程

默认工作单元是已有 APEX 应用上的增量功能切片。

1. 明确业务目标、验收标准、环境别名和应用 ID。
2. 在 `export/<env_alias>/f<APP_ID>/docs/` 下建立功能记录文件，命名为 `YYYY-MM-DD-<feature-slug>.md`。
3. 分析并提出受影响页面和受影响数据库对象。
4. 在聊天中确认方案、页面范围和数据库对象范围。
5. 在确认边界内实现、测试、部署、验证并更新证据。
6. 页面行为改变时，同步更新 `docs/pages/Pxx.md` 或 `Pxxx.md`。
7. 完成判定以 `ai-context.json` 中 `current_task.status == "DONE"` 为准。

每个功能切片至少需要一次真实业务流浏览器 functional validation，smoke validation 只能作为补充。

## 7. 数据库源码约定

数据库对象源码只放在所属应用的 `db/` 下：

```text
export/<env_alias>/f<APP_ID>/db/
  tables/
  views/
  packages/specs/
  packages/bodies/
  functions/
  procedures/
  triggers/
  indexes/
  sequences/
  types/
  mviews/
  synonyms/
  grants/
  jobs/
  data/
  tests/
```

约定：

- SQL 文件名使用 lowercase snake_case。
- 包规格使用 `.pks`，包体使用 `.pkb`。
- DDL 尽量保持幂等。
- `WHEN OTHERS` 必须记录日志并重新抛出非预期异常。
- 应用级 utPLSQL 或 SQL 验证资产放在该应用的 `db/tests/`。

## 8. 配置与安全

- 不使用根目录 `.env`，不要重新创建。
- 共享非密配置放在根目录 `conn.json`。
- `conn.json` 不应包含 `APEX_APP_ID`。
- 本地 `.conn.json` 可以包含 `apex_app_id`，用于命令省略 app id 时自动补全。
- 真实数据库密码、wallet、生成的 env 文件、连接密钥都不能提交。
- 添加或修复环境时优先使用 `bash tools/apex_ai.sh init <env_alias>`。
- 初始化后优先执行 `bash tools/apex_ai.sh check <env_alias> --deep`。
- 只有需要检查全部环境时，才使用不带 alias 的 `bash tools/apex_ai.sh check`。

## 9. 测试与验证

仓库级测试位于 `tests/`，常见验证包括：

- repository layout 检查
- `apex_ai.sh` 参数与状态流检查
- export/import 参数和证据摘要检查
- `conn.json` 与 SQLcl 连接检查
- browser smoke / browser functional runner 检查
- release guardrail 与 supporting objects 检查

常用命令：

```bash
bash tools/apex_ai.sh check <env_alias> --deep
bash tools/run_gate.sh <env_alias> <APP_ID> all
```

不要在未实际执行命令时声称测试通过。

## 10. 协作约束

- 修改前先确认目标环境和应用边界。
- 应用资产只在 `export/<env_alias>/f<APP_ID>/` 内修改。
- 工具脚本只放在 `tools/`，并保持扁平结构。
- 环境别名作为共享工具脚本的第一个显式参数，除非 `tools/apex_ai.sh` 作为路由入口自行管理。
- 页面行为改变时，同步修改 APEX export 和页面文档。
- 数据库对象改变后，交付完成前需要同步目标应用的 APEX Supporting Objects。
- 不要删除或重置 `conn.json`、`.conn.json` 等运行时连接资产。
- 仓库已有大量导出资产时，避免无意义格式化或批量重写。

## 11. 最近变更

| 日期 | 需求包 | 变更说明 |
|---|---|---|
| 2026-05-07 | 项目规范化 | 补充 `PROJECT.md`，与已有 `AGENTS.md`、`README.md`、`ai-context.json` 对齐，便于后续 Codex 按项目边界协作。 |

## 12. 未确认问题

- 当前工作区存在大量非本次变更的 Git 删除/修改状态，处理前应先确认这些变化是否为预期 workspace reset 或外部迁移结果。
- 具体环境连接可用性需按目标 alias 执行 `tools/apex_ai.sh check <env_alias> --deep` 后确认。
- 当前可交付应用列表应以 `conn.json`、实际 `export/<env_alias>/f<APP_ID>/` 目录和最新业务指令共同确认。
