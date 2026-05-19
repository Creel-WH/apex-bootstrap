# 仓库 Agent 指南

## 目的

- 本仓库是面向 AI 辅助交付的多应用 Oracle APEX + PL/SQL 工作区。
- 它支持创建新的 APEX 应用、导入已有应用、演进数据库对象，以及在应用之间迁移功能。
- 不同应用可以连接到不同数据库和 schema。
- 本仓库不假设存在单一共享数据库上下文。

## 仓库模型

- 顶层工作模型是应用隔离。
- 每个环境位于 `export/<env_alias>/` 下。
- 每个应用位于 `export/<env_alias>/f<APP_ID>/` 下。
- 每个应用拥有自己的 export 资产和 `db/`。
- 仓库级没有共享数据库对象层。
- 唯一共享层是 `tools/` 下的项目级工具。

## 目录布局

- `export/<env_alias>/f<APP_ID>/` 保存 APEX split export 和应用自有数据库源码。
- `export/<env_alias>/f<APP_ID>/db/` 只保存该应用拥有的数据库源码。
- 共享连接清单位于根目录 `conn.json`。
- `tools/` 保存跨应用共享的脚本。
- `tests/` 保存仓库级 shell 检查。
- 仓库级检查直接放在 `tests/` 下。
- `docs/` 保存项目级约定、工作流、迁移说明和架构决策。

## 应用隔离规则

- 将每个 `export/<env_alias>/f<APP_ID>/` 目录视为独立交付单元。
- 不要把一个应用的数据库对象放到另一个应用目录下。
- 不要在本仓库创建共享 `db/` 或共享 `apps/` 层。
- 如果两个应用需要相似功能，除非之后明确要求拆分平台层，否则各自资产仍应显式保留在自己的应用目录中。
- 应用之间的功能迁移必须作为显式 copy-and-adapt 操作处理，不能假定共享所有权。

## APEX 源码真相源

- 应用 export 资产的真相源是 `export/<env_alias>/f<APP_ID>/`。
- 目录结构应尽量贴近 Oracle APEX split export 输出。
- 如果应用维护页面文档，APEX 页面文档应与选定 export 放在一起。
- 如果页面行为改变，需要同时更新 APEX export 和对应页面文档。

## 数据库源码真相源

- 数据库对象的真相源是 `export/<env_alias>/f<APP_ID>/db/`。
- 按 Oracle 对象类型组织对象，例如 `tables/`、`views/`、`packages/specs/`、`packages/bodies/`、`functions/`、`procedures/`、`triggers/`、`indexes/`、`sequences/`、`types/`、`mviews/`、`synonyms/`、`grants/`、`jobs/`、`data/` 和 `tests/`。
- DDL 尽量保持幂等。
- 任何 `WHEN OTHERS` 块都必须记录日志，并重新抛出非预期异常。

## 配置与密钥

- 根目录 `.env` 已不再使用，不应重新创建。
- 共享非密环境设置属于根目录 `conn.json`。
- 用户需要添加或修复环境配置时，优先建议通过 `tools/apex_ai.sh init <env_alias>` 执行 `init`，而不是先手工编辑 `conn.json`。
- 执行 `tools/apex_ai.sh init <env_alias>` 后，引导用户对选定环境运行 `tools/apex_ai.sh check <env_alias> --deep`。只有用户需要检查全部环境时，才使用裸 `tools/apex_ai.sh check`。
- `conn.json` 中的环境 alias 应明确，例如 `dev@oci`、`dev@adb` 或 `prod@oci`。
- `conn.json` 条目应保持最小且机器可用；当前 shell 工具只读取选定环境条目的顶层标量 key。
- 不要在本仓库创建 `config/`、`config/<env>.env` 或其他按环境划分的运行时文件。
- `conn.json` 不得包含 `APEX_APP_ID`。
- 本地忽略提交的 `.conn.json` 可以为具体 alias 保存 `apex_app_id`，用于让命令在未显式传入 app id 时自动补全应用上下文；显式命令行 app id 仍然优先。
- 根目录 `conn.json` 是共享运行时资产，常规工作区重置操作不得删除它。
- 永远不要提交数据库密码、wallet 文件、生成的 env 文件或连接密钥。
- 不要重建旧版 `applications` 层。
- 当本地 SSH 默认配置足够时，`init` 中的 `ssh_key_path` 是可选的，但某些 SSH helper 流程后续仍可能需要它。

## 命名约定

- 应用目录使用 `f<APP_ID>`，例如 `f100`。
- SQL 文件名使用 lowercase snake_case。
- 有序安装文件可以使用数字前缀，例如 `001_create_customer.sql`。
- 包规格使用 `.pks`。
- 包体使用 `.pkb`。
- 页面文档文件使用 `Pxx.md` 或 `Pxxx.md`。

## 共享工具规则

- 共享脚本只放在 `tools/` 下。
- 保持 `tools/` 目录扁平，不要在其下创建按关注点划分的子目录。
- 操作应用资产的工具脚本必须保持应用感知，并根据请求的 env alias 和 APEX app id 推导环境范围内的应用目录。
- 工具脚本的第一个参数必须是显式环境 alias，例如 `dev@oci` 或 `dev@adb`。
- 只操作环境的辅助脚本，例如 OCI host 或 Docker 访问 wrapper，在不读写应用自有资产时，可以只使用 `<env_alias>`。
- 工具脚本只从根目录 `conn.json` 解析连接设置。
- `import_apex_app.sh` 要求参数 2 是显式 source app id；它支持参数 3 作为同环境可选 target app id，也支持参数 3 和 4 作为跨环境 `<target_env_alias> [target_app_id]` 形式。
- `import_apex_page.sh` 要求显式 source app id 和 page id，并支持可选 target app id 和 target page id。
- `sql_as.sh` 只有在 ad-hoc `--check` 和 `-c` 用法中可以省略 app id；执行 `@export/...` SQL 脚本时必须提供显式 app id。
- `db_use.sh` 要求显式 app id。

## Shell 脚本风格

- 使用 `#!/usr/bin/env bash` 和 `set -euo pipefail`。
- 函数保持小而清晰，并使用 lowercase snake_case 命名。
- 除非确实需要未加引号的展开，否则引用变量展开。
- 函数作用域变量使用 `local`。
- 校验失败退出前，向 stderr 输出可执行的错误信息。

## 测试与验证

- 应用级 utPLSQL 资产属于 `export/<env_alias>/f<APP_ID>/db/tests/`。
- 仓库级 shell 检查属于 `tests/`。
- 不要创建仓库级 query fixture 目录；应用级 SQL 验证应放在所属应用的 `db/tests/` 下。
- 没有运行确切命令时，永远不要声称测试已经通过。

## Agent 工作规范

- 优先做小而精确的改动，并匹配当前仓库风格。
- 除非任务明确跨多个应用，否则在选定应用边界内工作。
- 编辑前识别目标资产属于哪个应用。
- 对多应用任务，要明确所有权，避免隐藏耦合。
- 代码变更验证后，在交付完成前，从当前仓库 DB 源码同步目标应用的 APEX Supporting Objects，这样后续从 live 环境手工导出的单文件也能携带最新 embedded Supporting Objects，便于跨环境导入。

## AI 上下文与自动化

- `ai-context.json` 为 AI agent 和自动化工具提供机器可读上下文。
- 自动化工作流主入口是 `tools/apex_ai.sh`，它是智能分发器。
- `tools/apex_ai.sh` 负责内部环境路由，因此豁免一般的 env-alias-first 规则。
- `tools/apex_ai.sh` 调用的单个工具脚本仍应在适用时遵守 env-alias-first 约定。

## AI 执行协议覆盖

### 会话协议

- 每次 `/new` 会话都先运行环境连通性检查。
- 尝试修复前，优先复用已有连接配置。
- 当 `conn.json`、`.conn.json` 和项目指导未变化且检查已通过时，不要重新配置连通性。
- 如果连通性失败，除非用户明确要求暂停连通性工作，否则先修复连通性。
- Agent 可以自主修复本地工具、非密配置、仓库验证配置和浏览器验证配置。
- Agent 不得自主创建或修改密钥、特权外部系统或破坏性的生产设置。

### 功能协议

- 默认工作单元是已有 APEX 应用上的增量功能切片。
- 人类入口是对话，不是内部 CLI 原语。`feature-start`、`feature-analyze`、`feature-confirm`、`task-state` 和 `gate` 等命令是 AI 内部控制原语。
- 收到功能需求后，立即在 `export/<env_alias>/f<APP_ID>/docs/` 下创建功能文件，命名模式为 `YYYY-MM-DD-<feature-slug>.md`。
- 每个处理功能切片的 agent 必须先读取对应功能文件。如果文件不存在，先创建它。
- 不要依赖仅存在于会话里的上下文作为真相源。功能 Markdown 文件必须足够自包含，便于交接和恢复。
- 最小请求输入是业务目标和验收标准。
- 实现前，agent 必须分析并提出受影响页面和受影响数据库对象。
- 自主执行前，在聊天中给出简洁审批摘要，覆盖方案设计、影响范围、实施计划、关键风险，以及可供深入审阅的相关 `.md` 文件路径。
- 开发者在聊天中批准执行。批准门覆盖拟定设计、影响范围和实施计划。
- 开发者只确认页面范围和数据库对象范围。具体实现细节由 AI 负责。
- 批准并确认范围后，agent 在确认边界内自主实现、测试、部署和验证，直到 `DONE`。
- 自主执行期间，不要因为常规实现问题打断开发者。先尝试至少 3 种真正不同的解决方案；只有 3 种方案都失败，或缺少必要密钥、外部授权、业务决策时才升级给用户。
- 如果开发者在升级后提供后续指导或缺失凭据，立即恢复同一任务并继续到 `DONE`。
- 如果页面行为改变，更新 `export/<env_alias>/f<APP_ID>/docs/pages/` 下对应页面文档。
- 数据库真相源仍是 `export/<env_alias>/f<APP_ID>/db/`；功能文件必须列出已变更的数据库对象。
- 每个功能切片至少包含一次真实业务流浏览器 functional validation，smoke validation 只能作为补充。
- 功能 Markdown 文件只是叙事执行记录。机器完成状态和阶段完成状态只由 `ai-context.json` 决定。
- 任务完成的条件是 `ai-context.json` 报告 `current_task.status == "DONE"`。
- 如果当前任务状态不是 `DONE`，agent 必须继续排障、实现和验证，直到达到 `DONE`。
