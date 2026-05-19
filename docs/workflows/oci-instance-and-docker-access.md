# OCI Instance And Docker Access

## Purpose

This workflow shows how to record and use generic OCI host + Docker access for
an APEX environment without baking project-specific values into the scaffold.

Use this document as a template only. Replace all example values with your own
environment data.

## Recommended `conn.json` Shape

```json
{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "dev_user/__fill_me__@127.0.0.1:15210/ORCLPDB1",
    "db_schema": "dev",
    "apex_workspace": "DEV",
    "ssh_host": "opc@203.0.113.10",
    "ssh_key_path": "/path/to/dev.key",
    "ssh_tunnel_command": "REMOTE_DB_IP=$(ssh -n -i /path/to/dev.key opc@203.0.113.10 \"sudo docker inspect db-main --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'\") && [ -n \"${REMOTE_DB_IP}\" ] && ssh -n -f -N -o ExitOnForwardFailure=yes -i /path/to/dev.key -L 15210:${REMOTE_DB_IP}:1521 opc@203.0.113.10",
    "app_container": "webapp",
    "db_container": "db-main"
  }
}
```

Keep the shape flat. The shell tooling consumes top-level scalar keys and does
not need duplicated nested `ssh`, `docker`, `paths`, `endpoints`, or
`script_refs` objects.

## Access Pattern

### 1. Check host access

```bash
bash tools/oci_ssh.sh dev@oci
```

### 2. Open a shell in the app container

```bash
bash tools/oci_docker_exec.sh dev@oci app
```

### 3. Run a command in the DB container

```bash
bash tools/oci_docker_exec.sh dev@oci db "ls /u01"
```

### 4. Verify the local SQL tunnel

If the selected alias points to `127.0.0.1`, record a reusable
`ssh_tunnel_command` in `conn.json`. That keeps the local workflow generic while
still allowing loopback SQLcl access.

## Notes

- Use RFC 5737 example addresses like `203.0.113.10` in committed examples.
- Keep real passwords, private keys, and site URLs out of tracked examples.
- Prefer generic container names like `webapp` and `db-main` in docs.
- Add `java_home` or `db_sqlcl_bin` only when the runtime cannot find Java or
  SQLcl from `PATH`.
- Keep environment-specific runbooks outside this scaffold repository.
- The `db_container` value must match the **actual** remote Docker container
  name returned by `sudo docker ps -a --format '{{.Names}}'`. A stale container
  name will break `ssh_tunnel_command` before SQLcl ever reaches the database.
- Use `ssh -n` in both the metadata lookup SSH call and the tunnel SSH call.
  The export/import scripts run tunnels non-interactively; omitting `-n` can
  leave the background SSH process waiting on stdin and make connectivity checks
  look flaky.
- If multiple aliases point to the same remote database host and you expect to
  run them concurrently, give each alias a distinct local forwarded port. Reusing
  the same loopback port is fine for serial checks, but parallel checks will
  contend for the listener.
