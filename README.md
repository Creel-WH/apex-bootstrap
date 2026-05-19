# APEX Bootstrap 工作区

这是一个面向 AI 辅助交付的多应用 Oracle APEX + PL/SQL 工作区。

## 核心模型

每个环境位于 `export/<env_alias>/` 下，每个应用位于 `export/<env_alias>/f<APP_ID>/` 下。
共享层只存在于 `tools/`。根目录 `conn.json` 保存连接清单；每个环境只保留实际需要的标量运行时字段，包括数据库、SQLcl、Java、APEX Builder/浏览器访问，以及使用 OCI helper 时所需的 OCI 辅助配置。

如需提交示例或占位配置，必须用占位值替换密钥。真实本地凭据可以放在已忽略提交的 `.conn.json` 中。

## 目录结构

- `export/<env_alias>/f<APP_ID>/`：多 APEX 应用隔离空间。
- `conn.json`：规范的环境连接和运行时清单。
- `tools/`：共享入口脚本，包括 `apex_ai.sh`。
- `tests/`：仓库级 shell 检查。
- `docs/`：项目级约定和工作流文档。

## 日常使用

主入口：

```bash
bash tools/apex_ai.sh
```

## 内置 Skill

本仓库在 `.codex/skills/apex-bootstrap/` 下提供项目本地 `apex-bootstrap` skill，并为 `.agents` 和 `.opencode` 提供已跟踪的兼容链接。

调用规则、确认行为和安装说明见：

```text
docs/workflows/apex-bootstrap-skill-usage.md
```

### 对话优先工作流

对 APEX 开发者来说，首选入口是和 AI agent 对话：

1. 在聊天中描述功能需求。
2. 需要时审阅简洁的方案摘要。
3. 在聊天中批准执行。
4. AI 到达 `DONE` 后，可选择进行最终人工浏览器验证。

批准后，agent 会在内部使用仓库命令执行确认范围内的工作，直到任务达到 `DONE`。

### 开发者可见命令

- 添加环境：`bash tools/apex_ai.sh init <env_alias>`
- 检查单个环境：`bash tools/apex_ai.sh check <env_alias>`
- 检查所有已配置环境：`bash tools/apex_ai.sh check`
- 查看当前任务状态：`bash tools/apex_ai.sh feature-status`
- 查看推荐下一步：`bash tools/apex_ai.sh feature-next`
- 检查 SQL 连通性：`bash tools/apex_ai.sh sql-check <env_alias>`
- 检查 generic/usql 连通性：`bash tools/apex_ai.sh usql-check <env_alias>`

如果本地 `.conn.json` 的环境条目配置了 `apex_app_id`，支持应用上下文的命令可以省略命令行中的 app id；显式传入 app id 时仍以命令行为准。

### AI 内部命令

以下命令主要用于 AI agent 编排，而不是普通开发者的直接工作流：

- `feature-start`
- `feature-analyze`
- `feature-confirm`
- `task-state`
- `gate`
- `export-app`
- `export-page`
- `import-app`
- `import-page`

## 环境设置

添加环境或修复不完整环境配置时，优先使用：

```bash
bash tools/apex_ai.sh init <env_alias>
```

设置或修复环境时按以下顺序执行：

1. 初始化或修复环境条目。

   ```bash
   bash tools/apex_ai.sh init <env_alias>
   ```

2. 对选定环境执行深度检查。

   ```bash
   bash tools/apex_ai.sh check <env_alias> --deep
   ```

3. 修复每一个 `WARN` 或 `FAIL`。
4. 重新运行深度检查，直到环境就绪。
5. 只有选定环境检查干净后，才开始导出、导入、SQL 或功能开发工作。

初始化后，在使用导出或 SQL 工具前，应执行：

```bash
bash tools/apex_ai.sh check <env_alias> --deep
```

初始化向导会为选定连接模式写入最小支持的 `conn.json` 结构。优先使用 `init`，不要手工编辑 `conn.json`。

只有需要整体查看所有配置环境时，才使用不带 alias 的：

```bash
bash tools/apex_ai.sh check
```

如果 SSH 设置依赖系统默认 key 或 agent，初始化时 `ssh_key_path` 可以留空。后续某些 SSH helper 如果不能依赖本地默认 SSH 配置，仍可能需要 `ssh_key_path`。

## 导出、导入与 SQL 维护

这些命令通常是 AI 内部原语，但仍可用于显式维护：

```bash
bash tools/apex_ai.sh sql-check <env_alias>
bash tools/apex_ai.sh sql-check <env_alias> <app_id>
bash tools/apex_ai.sh usql-check <env_alias>
bash tools/sql_as.sh <env_alias> --check
bash tools/apex_ai.sh export-app <env_alias>
bash tools/apex_ai.sh export-app <env_alias> <app_id>
bash tools/apex_ai.sh export-app <env_alias> nodb
bash tools/apex_ai.sh export-app <env_alias> <app_id> nodb
bash tools/apex_ai.sh export-page <env_alias> <page_id>
bash tools/apex_ai.sh export-page <env_alias> <app_id> <page_id>
bash tools/apex_ai.sh import-app <env_alias> <source_app_id>
bash tools/apex_ai.sh import-app <env_alias> <source_app_id> <target_app_id>
bash tools/apex_ai.sh import-app <source_env_alias> <source_app_id> <target_env_alias>
bash tools/apex_ai.sh import-app <source_env_alias> <source_app_id> <target_env_alias> <target_app_id>
bash tools/apex_ai.sh import-page <env_alias> <source_app_id> <page_id>
bash tools/apex_ai.sh import-page <env_alias> <source_app_id> <page_id> <target_app_id>
bash tools/apex_ai.sh import-page <env_alias> <source_app_id> <page_id> <target_app_id> <target_page_id>
```

`import-page` 当前是同环境页面迁移入口；不要把它当作跨环境页面导入接口。

## 工作区重置

`tools/reset_workspace.sh` 会删除生成的 workspace/export/scaffold 资产，但不会重置运行时连接文件。

受保护的运行时文件：

- `conn.json`
- `.conn.json`

示例：

```bash
bash tools/reset_workspace.sh --dry-run
bash tools/reset_workspace.sh
bash tools/reset_workspace.sh <env_alias> --dry-run
bash tools/reset_workspace.sh <env_alias>
bash tools/reset_workspace.sh <env_alias> <app_id>
```

即使 `conn.json` 暂时不存在，该命令也可以清理环境导出目录，因为清理不应依赖连接配置。

## 薄纵切基线

为应用自有的浏览器基线添加：

- `export/<env_alias>/f<APP_ID>/docs/browser-smoke.json`
- `export/<env_alias>/f<APP_ID>/docs/browser-functional.json`

示例：

```json
{
  "label": "app-{app_id}-home",
  "url": "https://example.test/ords/r/dev/app-{app_id}/home",
  "contains_text": "Home"
}
```

当应用自有规格存在时：

```bash
tools/run_gate.sh <env_alias> <APP_ID> all
```

会使用该规格执行浏览器门禁。这样可以让 DB 到 deploy 到 browser smoke 的切片归属于应用，而不是依赖一个共享的环境级运行 URL。

交互级检查使用：

```bash
bash tools/run_gate.sh <env_alias> <APP_ID> browser-functional
```

该门禁会读取 `browser-functional.json`，执行应用自有交互步骤，并保存独立的浏览器 functional 证据。

完整功能切片验证使用：

```bash
bash tools/run_gate.sh <env_alias> <APP_ID> all
```

它会按顺序运行 contract、DB、deploy、browser smoke 和 browser functional gates。`DONE` 需要 DB/deploy 成功，并且存在浏览器 functional 证据；browser smoke 单独不能作为完成信号。

## 运行时契约

- `docs/decisions/adr-0001-canonical-runtime-contract.md`
- `docs/conventions/authority-map.md`
- `docs/conventions/evidence-contract.md`
- `docs/conventions/oracle-delivery-guardrails.md`
- `docs/conventions/secret-credential-injection-map.md`
- `docs/workflows/conn-json-minimal-examples.md`
- `docs/workflows/oci-instance-and-docker-access.md`

已跟踪的 `conn.json` 仍是规范的共享清单。忽略提交的 `.conn.json` 仅用于本地含密 alias，或同名 alias 的标量密钥覆盖；这些内容不应提交。

APEX split export 是受源码管理的应用资产，因此 `tools/export_apex_app.sh` 会剔除导出的 workspace credential 文件，以及由 `export/<env_alias>/f<APP_ID>/db/` 拥有的 supporting-object SQL。

OAuth/web credentials 应在仓库外通过环境或 CI secret injection 重新创建。
