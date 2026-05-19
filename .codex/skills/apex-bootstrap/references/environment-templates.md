# 环境类确认模板

适用于：

- `init`
- `check`
- `sql-check`
- 环境配置修复
- 环境准备度评估后的执行确认

## 读取重点

进入环境类 lane 后，优先读取：

1. `AGENTS.md`
2. `ai-context.json`
3. `README.md`
4. `tools/apex_ai.sh` 中环境相关动作
5. 必要时读取 `conn.json` 结构与相关 helper 脚本

如果环境类任务会继续进入 live SQL 检查、数据库连通性验证或 DB 侧排障，
补读：

6. `references/oracle-delivery-guardrails.md`

只聚焦当前 `env_alias`，不要扩展到无关环境。

## 必填字段

- `env_alias`

如果没有 `env_alias`，不得执行。

## 模板：环境初始化 / 修复

```md
**我的理解**
- 你希望我为当前仓库初始化或修复一个环境配置。

**任务归类**
- `environment setup/check`

**目标边界**
- `env_alias`: `<必填>`
- `APP_ID`: `N/A`
- `app_code`: `N/A`
- `PAGE_ID`: `N/A`

**请确认或修正**
- 请只确认目标环境别名是否正确；确认后我再执行。
```

## 模板：环境检查 / 深度检查

```md
**我的理解**
- 你希望我检查某个仓库环境是否就绪。

**任务归类**
- `environment setup/check`

**目标边界**
- `env_alias`: `<必填>`
- `APP_ID`: `N/A`
- `app_code`: `N/A`
- `PAGE_ID`: `N/A`

**请确认或修正**
- 请只确认目标环境别名；确认后我再执行。
```

## 模板：SQL 连通性检查

```md
**我的理解**
- 你希望我对指定环境执行 SQL 连通性检查。

**任务归类**
- `environment setup/check`

**目标边界**
- `env_alias`: `<必填>`
- `APP_ID`: `N/A` 或 `<如确有必要>`
- `app_code`: `N/A` 或 `<如确有必要>`
- `PAGE_ID`: `N/A`

**请确认或修正**
- 请只确认目标环境别名；确认后我再执行。
```

## 重确认示例：用户修正环境别名

如果用户说：

> 不是 `dev@oci`，是 `dev@adb`

必须重发完整确认：

```md
**已收到修正**
- 目标环境从 `dev@oci` 更新为 `dev@adb`

**任务归类**
- `environment setup/check`

**目标边界**
- `env_alias`: `dev@adb`
- `APP_ID`: `N/A`
- `app_code`: `N/A`
- `PAGE_ID`: `N/A`

**请确认或修正**
- 请只确认更新后的环境边界；确认后我再执行。
```
