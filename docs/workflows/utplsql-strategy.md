# utPLSQL 接入策略

建议将 utPLSQL 视为项目的必备测试依赖，但不建议把 utPLSQL 全量源码直接 vendoring 到业务仓库中。

## 推荐做法

- 项目仓库保留应用级测试入口、CI 开关和接入文档
- utPLSQL 预先安装在独立 schema，例如 `UT3`
- 应用级测试套件放在 `export/<env_alias>/f<APP_ID>/db/tests/`

## 建议的落地方式

- 业务仓库继续保留：`export/<env_alias>/f<APP_ID>/db/tests/`、`tools/`、CI 配置、接入文档
- utPLSQL 安装包通过内部制品库、GitHub Release 附件或本地运维制品目录提供
- 当前仓库已提供 `tools/install_utplsql.sh` 与 `tools/install_utplsql.sql`
- 推荐把管理员连接信息只保存在本地配置中，不要提交到 Git
