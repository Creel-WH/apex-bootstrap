# 二次确认协议

本文件只回答一个问题：

> 在 canonical execution contract 已经成立的前提下，默认应该如何向用户展示确认消息？

以下执行授权、required fields、失效条件与 lane switch 规则，统一以：

- `execution-contract.md`

为准。

## 默认展示边界

默认用户可见确认只包含：

1. **我的理解**
2. **任务归类**
3. **目标边界**
4. **请确认或修正**

默认不要展开：

- 拟执行脚本或命令清单
- 副作用细节
- 数据库上下文推导
- 内部执行顺序
- 额外实现细节

只有在用户明确要求时，才展示这些执行层信息。

## 展示骨架

```md
**我的理解**
- ...

**任务归类**
- ...

**目标边界**
- `env_alias`: ...
- `APP_ID`: ... / `N/A`
- `app_code`: ... / `N/A`
- `PAGE_ID`: ... / `N/A`
- `verification target`: ... / `N/A`
- source / target: ... / `N/A`

**请确认或修正**
- 请确认这版理解与边界；只有你确认后，我才会进入对应 executable envelope。
```

## 任务归类字段

任务归类必须且只能是以下之一：

- `environment setup/check`
- `feature slice`
- `import/export migration`
- `verification / gate`
- `discussion-only`

## 目标边界字段的展示规则

只展示当前 lane 真正需要用户确认的边界字段：

- environment：`env_alias`
- feature：`env_alias`、`APP_ID`、`app_code`，页面级时再加 `PAGE_ID`
- migration：source / target boundary，页面级时再加 `PAGE_ID`
- verification：目标边界 + `verification target`
- discussion-only：只展示当前已知边界与缺失边界

不要为了“看起来完整”而向用户抛出不需要他确认的底层数据库字段。

## 与 Gate A / Gate B 的关系

对于 `feature slice`：

- Gate A 的确认消息聚焦 feature 意图与应用边界
- Gate B 的确认消息聚焦 impacted pages 与 impacted DB objects

两者都必须遵守同一个默认展示边界：

- 向用户展示边界
- 不默认展示内部执行细节

## 重确认时的展示要求

收到用户修正后：

1. 更新理解
2. 重新输出**完整确认**
3. 再次等待明确确认

不要只回复一句“好的，改成 ...”就继续执行。

## 与模板文件的关系

本文件给出统一展示骨架；具体 lane 例子见：

- `environment-templates.md`
- `feature-templates.md`
- `migration-templates.md`
- `verification-templates.md`

## 一句话原则

默认只展示用户必须确认的边界，不展示执行层细节。
