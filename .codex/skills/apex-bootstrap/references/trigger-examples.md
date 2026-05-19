# 触发正反例

本文件用于校准 `apex-bootstrap` skill 的命中边界。

## 正例：应触发 skill

### 环境类

- 帮我初始化 `dev@oci` 环境
- 检查一下 `dev@adb` 是否可用
- 帮我跑 SQL 连通性检查
- 帮我修一下这个仓库里的环境配置

### 功能类

- 给 `dev@oci` 的 `APP_ID 109` 做一个审批入口功能，验收条件是 ...
- 继续这个 feature slice
- 先分析 impacted pages 和 impacted DB objects
- 帮我把这个需求推进到 DONE

### 迁移类

- 把 `f109` 从 `dev@oci` 迁到 `dev@adb`
- 导出 `APP_ID 109` 的 page 12
- 把这个页面导入另一个应用

### 验证类

- 帮我跑 browser-functional
- 对 `f109` 执行 all gate
- 看看这个 feature 是否达到 DONE
- 帮我补全验证证据

## 反例：不应进入可执行 workflow

以下请求不应直接进入 `apex-bootstrap` 可执行 lane：

- APEX Interactive Grid 怎么隐藏列？
- Oracle merge into 怎么写？
- PL/SQL package spec 和 body 有什么区别？
- 帮我拉一下远端最新代码
- 帮我写一个 bash 脚本
- 帮我解释一下 SQL 的 analytic function

这些请求可以普通回答，但不应触发仓库执行工作流。

## 临界例：优先 discussion-only

以下请求在没有更多边界时，应先进入 `discussion-only`：

- 帮我做个功能
- 检查环境
- 帮我验证一下
- 帮我迁一下页面
- 这个能不能做？
- 我们要不要这样设计？

处理方式：

1. 先归类当前可能的主 lane
2. 明确指出缺少的边界字段
3. 给出结构化确认或只读分析
4. 等待用户确认后再执行

## correction 例子

如果用户说：

- 不是 `dev@oci`，是 `dev@adb`
- 不是 `f109`，是 `f110`
- 不是 browser，是 browser-functional
- 先别执行，先讨论方案

这些都不授权执行。必须：

1. 更新理解
2. 重新生成完整确认
3. 再次等待确认

## 一句话原则

命中 skill 只意味着“进入工作流识别与确认态”，不意味着“立刻开始执行”。
