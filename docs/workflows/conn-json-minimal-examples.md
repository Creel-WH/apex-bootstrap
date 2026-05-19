# `conn.json` Minimal Examples

## Purpose

Use these examples when you need the smallest practical `conn.json` entry for a new environment.

The preferred flow is:

1. Run `bash tools/apex_ai.sh init <env_alias>`.
2. Let the wizard create or update the entry.
3. If you still need to review or hand-edit the shape, start from one of the minimal examples below.
4. Run `bash tools/apex_ai.sh check <env_alias> --deep` before using export, import, or SQL tooling.

## Minimal Direct Connection Example

```json
{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "dev_user/__fill_me__@127.0.0.1:15210/ORCLPDB1",
    "db_schema": "DEV",
    "apex_workspace": "DEV"
  }
}
```

Use this shape when SQLcl connects with a full direct connect string.

If the same environment also needs browser validation, keep only the required
browser/runtime scalar fields in the same `conn.json` entry instead of
scattering them elsewhere:

```json
{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "dev_user/__fill_me__@127.0.0.1:15210/ORCLPDB1",
    "db_schema": "DEV",
    "apex_workspace": "DEV",
    "java_home": "/path/to/jdk",
    "db_sqlcl_bin": "/path/to/sql",
    "apex_builder_login_url": "https://example.test/ords/r/apex/workspace-sign-in/oracle-apex-sign-in",
    "apex_builder_username": "admin",
    "apex_builder_password": "__fill_me__",
    "apex_browser_smoke_url": "https://example.test/ords/r/dev/sample/login",
    "apex_browser_expect_selector": "#P9999_USERNAME"
  }
}
```

If the direct connect string targets a local SSH-forwarded Oracle port, keep
the tunnel metadata in the same top-level entry:

```json
{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "dev_user/__fill_me__@127.0.0.1:15210/ORCLPDB1",
    "db_schema": "DEV",
    "apex_workspace": "DEV",
    "ssh_host": "opc@203.0.113.10",
    "ssh_key_path": "/path/to/dev.key",
    "db_container": "db-main",
    "ssh_tunnel_command": "REMOTE_DB_IP=$(ssh -n -i /path/to/dev.key opc@203.0.113.10 \"sudo docker inspect db-main --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'\") && [ -n \"${REMOTE_DB_IP}\" ] && ssh -n -f -N -o ExitOnForwardFailure=yes -i /path/to/dev.key -L 15210:${REMOTE_DB_IP}:1521 opc@203.0.113.10"
  }
}
```

Use this shape only when:

- `db_container` matches the real remote Docker DB container name
- the selected local port is not already reserved by another concurrently used
  alias
- both SSH calls are non-interactive (`ssh -n ...`)

## Minimal TNS Connection Example

```json
{
  "dev@adb": {
    "env_name": "dev@adb",
    "db_connection_mode": "tns",
    "db_username": "dev_user",
    "db_password": "__fill_me__",
    "db_tns_alias": "DEVADB_HIGH",
    "db_tns_admin": "/path/to/wallet",
    "db_schema": "DEV",
    "apex_workspace": "DEV"
  }
}
```

Use this shape when the environment depends on a wallet and TNS alias.

## Minimal Generic Database Example

```json
{
  "example@prod": {
    "env_name": "example@prod",
    "db_connection_mode": "generic",
    "driver": "mysql",
    "host": "10.0.0.10",
    "port": 3306,
    "username": "reader",
    "password": "__fill_me__",
    "db_usql_bin": "/opt/homebrew/bin/usql",
    "database": null
  }
}
```

Use this shape for non-APEX or non-SQLcl connection inventory such as MySQL
or externally managed JDBC connections. Repository checks validate the required
metadata but do not perform a live driver-specific connection test.
When a local `usql` client is used for MySQL verification, record its absolute
path in `db_usql_bin`, then run `bash tools/apex_ai.sh usql-check <env_alias>`
for a live connectivity check.

## Notes

- Keep required connection fields in the same env entry. Add Java/SQLcl paths
  only when the local `PATH` is not enough for the scripts to find them.
- Keep secrets out of committed examples and replace placeholder values locally.
- Put real local passwords in ignored `.conn.json`; same-alias scalar fields
  there overlay tracked `conn.json` during local runs.
- Keep machine-usable connection fields as top-level scalar keys.
- Do not duplicate the same values in nested `ssh`, `docker`, `paths`,
  `endpoints`, or `script_refs` objects.
- Prefer rerunning `bash tools/apex_ai.sh init <env_alias>` over inventing new config files.
- After any `conn.json` tunnel edit, rerun both:
  - `bash tools/apex_ai.sh check <env_alias> --deep`
  - `bash tools/apex_ai.sh sql-check <env_alias>`
  so you catch stale container names, broken SSH tunnel commands, and local
  port collisions before export/import work starts.
