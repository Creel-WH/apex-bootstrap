#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
CONFIG_FILE="${ROOT_DIR}/conn.json"

python3 - "${CONFIG_FILE}" <<'PY'
import json
import re
import sys

config_path = sys.argv[1]

with open(config_path, "r", encoding="utf-8") as handle:
    payload = json.load(handle)

aliases = ("dev@oci",)

for alias in aliases:
    entry = payload[alias]
    has_legacy_tunnel_fields = all(
        key in entry for key in ("db_connect_string", "ssh_tunnel_command", "db_container")
    )

    if has_legacy_tunnel_fields:
        connect = entry["db_connect_string"]
        tunnel = entry["ssh_tunnel_command"]
        db_container = entry["db_container"]

        match = re.search(r"@127\.0\.0\.1:(\d+)/", connect)
        if not match:
            raise SystemExit(f"{alias}: expected loopback db_connect_string, got {connect}")

        local_port = match.group(1)

        if f"docker inspect {db_container}" not in tunnel:
            raise SystemExit(f"{alias}: expected tunnel command to resolve {db_container} dynamically, got {tunnel}")

        if f"-L {local_port}:${{REMOTE_DB_IP}}:1521" not in tunnel:
            raise SystemExit(f"{alias}: tunnel command does not forward local port {local_port} to remote 1521: {tunnel}")

        if ":127.0.0.1:1528 " in tunnel or tunnel.endswith(":127.0.0.1:1528"):
            raise SystemExit(f"{alias}: tunnel command still points at legacy port 1528: {tunnel}")
        continue

    if "user" not in entry:
        raise SystemExit(f"{alias}: expected slim conn.json sample to include user")

    if "connect_string" not in entry and "database" not in entry:
        raise SystemExit(f"{alias}: expected slim conn.json sample to include connect_string or database")

print("conn.json OCI config compatibility test passed")
PY
