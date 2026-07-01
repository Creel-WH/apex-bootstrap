# 2026-07-01 P9999 默认账号密码登录

- Original Request: 登录页默认展示账号密码登录，隐藏右下角钉钉图标。
- AI Summary: 调整 `f299` 的 `P9999` 登录页前端展示逻辑，默认显示账号密码表单，移除右下角“其他方式”钉钉图标，同时保留右上角扫码切换入口。

## 边界

- Env Alias: `file-management-platform@test`
- APP_ID: `299`
- App Code: `file-management-platform`
- Impacted Pages:
  - `P9999`
- Impacted DB Objects:
  - 无

## 当前已知事实

- `P9999` 当前会创建右上角 `.switch-qrcode` 切换角标。
- `P9999` 当前还会在登录框底部插入 `login_method` 区块，显示“其他方式”与钉钉图标。
- 页面初始化末尾会默认隐藏 `.t-Login-body`、`.t-Login-buttons`、`.t-Login-links`、`.t-Login-subRegions`，导致默认视觉更偏向扫码登录。

## 验收目标

1. 打开登录页时默认直接看到账号、密码、记住用户名和登录按钮。
2. 右下角不再显示“其他方式”钉钉图标。
3. 右上角二维码切换角标仍保留，点击后可切到扫码登录，再次点击可切回账号密码登录。
4. 账号密码登录链路和现有浏览器功能验证保持可用。

## 实施结果

- `P9999` 页面初始化不再插入底部 `login_method` 钉钉图标区块。
- 原有“第三方登录”子区域内容已清空，不再从静态 HTML 侧露出右下角钉钉图标。
- 二维码容器 `#self_defined_element` 在页面初始化时真实隐藏，默认首屏恢复为账号密码登录。
- 右上角 `.switch-qrcode` 保留，点击后仍可在账号密码与扫码登录之间切换。

## 验证结果

- 已导入 `file-management-platform@test / f299 / P9999`。
- 标准浏览器功能验证通过，证据目录：`.omx/results/20260701T074124Z-800-bacd2003/`。
- 自定义登录页展示验证通过，确认：
  - 默认首屏可见账号、密码、记住用户名、登录按钮
  - 右下角钉钉图标数量为 `0`
  - 右上角切换角标可用
  - 切回账号密码后二维码区域重新隐藏
- 自定义证据目录：`output/playwright/f299-p9999-default-login/`。
