# 仓库边界与权威源

本文件用于快速说明 `apex-bootstrap` skill 所服务仓库的边界、权威源与默认推导规则。

## 本 skill 只服务哪个仓库

本 skill 只服务当前 `apex-bootstrap` 仓库。

不要把它用于：

- 仓库外的 Oracle / APEX 项目
- 通用 SQL / PL/SQL 问答
- 与本仓库执行模型无关的任务

## 核心权威源

当不同信息来源发生冲突时，优先按以下顺序判断：

### 1. `AGENTS.md`
用于仓库级规则、执行纪律、任务边界与特殊约束。

### 2. `ai-context.json`
用于：

- 机器状态
- 当前任务状态
- 支持动作
- `DONE` 完成权威

### 3. `tools/apex_ai.sh`
用于标准工作流入口与 canonical action surface。

### 4. `README.md`
用于用户视角的仓库模型、日常入口与标准使用方式。

## 应用与资产边界

### APEX 应用资产
源路径：

- `export/<env_alias>/f<APP_ID>/`

### 数据库资产
源路径：

- `export/<env_alias>/f<APP_ID>/db/`

### 页面文档
常见路径：

- `export/<env_alias>/f<APP_ID>/docs/pages/`

### feature narrative record
常见路径：

- `export/<env_alias>/f<APP_ID>/docs/YYYY-MM-DD-<feature-slug>.md`

### 机器状态
权威文件：

- `ai-context.json`

> feature markdown 是叙述记录，不是最终完成权威。

## 执行边界字段

任何可执行工作流都必须围绕以下字段建立：

- `env_alias`
- `APP_ID`
- `app_code`
- `PAGE_ID`（如适用）

其中：

- `APP_ID` 是数值应用标识
- `app_code` 是目录标识，通常是 `f<APP_ID>`

## 数据库上下文默认规则

一般情况下，不要求用户额外显式确认：

- `PDB`
- `DB_SCHEMA`

这些信息默认根据已确认的：

- `env_alias`
- `APP_ID`
- `app_code`

自动推导。

## 何时不得继续执行

如果出现以下情况，必须先停止执行并回到确认：

- `env_alias` 不明确
- `APP_ID` / `app_code` 不明确
- 页面任务没有 `PAGE_ID`
- APEX 应用与数据库侧归属映射不清晰
- source / target 边界不完整
- 用户尚未确认当前最新版本确认内容

## 一句话使用原则

先确认仓库边界，再确认工作流边界，最后才允许执行。
