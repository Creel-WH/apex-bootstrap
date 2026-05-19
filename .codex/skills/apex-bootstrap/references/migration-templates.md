# 迁移类确认模板

适用于：

- `export-app`
- `export-page`
- `import-app`
- `import-page`
- app / page 在不同环境或应用之间迁移

## 读取重点

进入 migration lane 后，优先读取：

1. `AGENTS.md`
2. `ai-context.json`
3. `tools/apex_ai.sh` 中 import / export 路由
4. 对应 import / export 脚本
5. source / target 对应的 `export/<env_alias>/f<APP_ID>/`

只读取 source / target 边界相关内容，不扫描无关应用。

## 必填字段

### app 级迁移
- `source env_alias`
- `source APP_ID`
- `source app_code`
- `target env_alias`（如适用）
- `target APP_ID`（如适用）
- `target app_code`（如适用）

### page 级迁移
除以上字段外，还必须有：
- `source PAGE_ID`
- `target PAGE_ID`（如适用）

## app 级迁移模板

```md
**我的理解**
- 你希望我执行一项 app 级迁移或导入导出任务。

**任务归类**
- `import/export migration`

**目标边界**
- `source env_alias`: `<必填>`
- `source APP_ID`: `<必填>`
- `source app_code`: `<必填>`
- `source PAGE_ID`: `N/A`
- `target env_alias`: `<如适用>`
- `target APP_ID`: `<如适用>`
- `target app_code`: `<如适用>`
- `target PAGE_ID`: `N/A`

**请确认或修正**
- 请确认 source / target 边界；确认后我再执行。
```

## page 级迁移模板

```md
**我的理解**
- 你希望我执行一项 page 级迁移或导入导出任务。

**任务归类**
- `import/export migration`

**目标边界**
- `source env_alias`: `<必填>`
- `source APP_ID`: `<必填>`
- `source app_code`: `<必填>`
- `source PAGE_ID`: `<必填>`
- `target env_alias`: `<如适用>`
- `target APP_ID`: `<如适用>`
- `target app_code`: `<如适用>`
- `target PAGE_ID`: `<如适用，否则 N/A>`

**请确认或修正**
- 请确认 source / target 页面边界；确认后我再执行。
```

## 关键规则

1. 不得推断缺失的 source / target。
2. migration 不等于 feature implementation。
3. 用户修改 source / target / PAGE_ID 后，必须整单重确认。
4. migration 完成不等于自动获得下一步 verification 或 feature 授权。

## 重确认示例：用户修改 target APP_ID

```md
**已收到修正**
- target 应用从 `APP_ID 120 (f120)` 更新为 `APP_ID 121 (f121)`

**任务归类**
- `import/export migration`

**目标边界**
- `source env_alias`: `...`
- `source APP_ID`: `...`
- `source app_code`: `...`
- `source PAGE_ID`: `...` / `N/A`
- `target env_alias`: `...`
- `target APP_ID`: `121`
- `target app_code`: `f121`
- `target PAGE_ID`: `...` / `N/A`

**请确认或修正**
- 请确认更新后的迁移边界；确认后我再执行。
```
