#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/export_apex_app.sh dev@oci 100
  tools/export_apex_app.sh dev@oci 100 nodb
EOF
}

build_workspace_init_sql() {
  local workspace_name="$1"
  cat <<EOF
begin
  apex_util.set_security_group_id(apex_util.find_security_group_id(p_workspace => '${workspace_name}'));
end;
/
EOF
}

detect_sqlcl_bin() {
  local candidate

  if command -v sql >/dev/null 2>&1; then
    command -v sql
    return 0
  fi

  for candidate in /opt/homebrew/bin/sql /usr/local/bin/sql "${HOME}/bin/sql" /Applications/sqlcl/bin/sql; do
    [[ -x "${candidate}" ]] && {
      printf '%s\n' "${candidate}"
      return 0
    }
  done

  return 1
}

detect_java_home() {
  local candidate

  if command -v /usr/libexec/java_home >/dev/null 2>&1; then
    candidate="$(/usr/libexec/java_home 2>/dev/null || true)"
    if [[ -n "${candidate}" && -x "${candidate}/bin/java" ]]; then
      printf '%s\n' "${candidate}"
      return 0
    fi
  fi

  for candidate in /Library/Java/JavaVirtualMachines/*/Contents/Home /opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home /usr/local/opt/openjdk/libexec/openjdk.jdk/Contents/Home; do
    [[ -x "${candidate}/bin/java" ]] && {
      printf '%s\n' "${candidate}"
      return 0
    }
  done

  return 1
}

bootstrap_report() {
  local export_dir_label
  local config_label

  mkdir -p "${APP_DOCS_DIR}"
  export_dir_label="$(repo_relative_path "${APEX_EXPORT_DIR}")"
  config_label="$(repo_relative_config_ref "${APP_CONFIG_FILE}")"

  cat > "${BOOTSTRAP_REPORT_MD}" <<EOF
# Bootstrap Report

- Application: ${APP_CODE}
- Environment: ${DB_ENV_NAME}
- Schema: ${DB_SCHEMA}
- APEX App ID: ${APEX_APP_ID}
- Export directory: ${export_dir_label}
- Config source: ${config_label}
EOF

  cat > "${BOOTSTRAP_REPORT_JSON}" <<EOF
{
  "application": "${APP_CODE}",
  "environment": "${DB_ENV_NAME}",
  "schema": "${DB_SCHEMA}",
  "apex_app_id": "${APEX_APP_ID}",
  "export_dir": "${export_dir_label}",
  "config_source": "${config_label}"
}
EOF
}

detect_exported_app_alias() {
  local export_dir="$1"
  local app_id="$2"

  python3 - "${export_dir}" "${app_id}" <<'PY'
from pathlib import Path
import re
import sys

export_dir = Path(sys.argv[1]).resolve()
app_id = str(int(sys.argv[2]))
create_app = export_dir / f"f{app_id}" / "application" / "create_application.sql"
if not create_app.exists():
    raise SystemExit(0)
text = create_app.read_text(encoding="utf-8", errors="ignore")
match = re.search(r"p_alias=>nvl\(wwv_flow_application_install\.get_application_alias,'([^']+)'\)", text)
if match:
    print(match.group(1))
PY
}

find_canonical_baseline_app_dir() {
  local app_alias="$1"
  local current_app_dir="$2"

  python3 - "${ROOT_DIR}" "${app_alias}" "${current_app_dir}" <<'PY'
from pathlib import Path
import re
import sys

root = Path(sys.argv[1]).resolve()
target_alias = sys.argv[2].strip().upper()
current_app_dir = Path(sys.argv[3]).resolve()

best = None

for create_app in root.glob("export/*/f*/apex/f*/application/create_application.sql"):
    app_dir = create_app.parents[3]
    if app_dir.resolve() == current_app_dir:
        continue
    db_dir = app_dir / "db"
    if not (db_dir / "install.sql").exists() or not (db_dir / "compile_all.sql").exists():
        continue
    text = create_app.read_text(encoding="utf-8", errors="ignore")
    match = re.search(r"p_alias=>nvl\(wwv_flow_application_install\.get_application_alias,'([^']+)'\)", text)
    if not match or match.group(1).strip().upper() != target_alias:
        continue
    db_file_count = sum(1 for p in db_dir.rglob("*") if p.is_file())
    env_name = app_dir.parts[-2] if len(app_dir.parts) >= 2 else ""
    score = (
        1 if env_name == "dev@oci" else 0,
        db_file_count,
    )
    if best is None or score > best[0]:
        best = (score, app_dir)

if best:
    print(best[1])
PY
}

sync_canonical_db_tree_from_baseline() {
  local baseline_app_dir="$1"
  local target_app_dir="$2"
  local target_app_id="$3"

  python3 - "${baseline_app_dir}" "${target_app_dir}" "${target_app_id}" <<'PY'
from pathlib import Path
import re
import shutil
import sys

baseline_app_dir = Path(sys.argv[1]).resolve()
target_app_dir = Path(sys.argv[2]).resolve()
target_app_id = str(int(sys.argv[3]))

baseline_db = baseline_app_dir / "db"
target_db = target_app_dir / "db"
raw_db = target_app_dir / "db.raw-export"

if not baseline_db.exists():
    raise SystemExit(f"Missing baseline db dir: {baseline_db}")
if target_db.exists():
    if raw_db.exists():
        shutil.rmtree(raw_db)
    target_db.rename(raw_db)

shutil.copytree(baseline_db, target_db)

patches = {
    target_db / "tables" / "apexcn_app_versions.sql": [
        (r"DEFAULT\s+\d+", f"DEFAULT {target_app_id}"),
        (r"MODIFY\s*\(\s*application_id\s+DEFAULT\s+\d+\s*\)", f"MODIFY (application_id DEFAULT {target_app_id})"),
        (r"SELECT\s+\d+,", f"SELECT {target_app_id},"),
    ],
    target_db / "triggers" / "apexcn_app_versions_trg.sql": [
        (r"nvl\(:new\.application_id,\s*\d+\)", f"nvl(:new.application_id, {target_app_id})"),
    ],
}

for path, replacements in patches.items():
    if not path.exists():
        continue
    text = path.read_text(encoding="utf-8")
    for pattern, replacement in replacements:
        text = re.sub(pattern, replacement, text, flags=re.IGNORECASE)
    path.write_text(text, encoding="utf-8")

tests_dir = target_db / "tests"
tests_dir.mkdir(exist_ok=True)
PY
}

sync_canonical_docs_from_baseline() {
  local baseline_app_dir="$1"
  local target_app_dir="$2"

  python3 - "${baseline_app_dir}" "${target_app_dir}" <<'PY'
from pathlib import Path
import shutil
import sys

baseline_app_dir = Path(sys.argv[1]).resolve()
target_app_dir = Path(sys.argv[2]).resolve()

baseline_docs = baseline_app_dir / "docs"
target_docs = target_app_dir / "docs"
target_docs.mkdir(parents=True, exist_ok=True)

for name in ("browser-functional.json", "browser-smoke.json"):
    src = baseline_docs / name
    dst = target_docs / name
    if src.exists():
        shutil.copy2(src, dst)
PY
}

repo_relative_path() {
  local path_value="$1"

  if [[ "${path_value}" == "${ROOT_DIR}/"* ]]; then
    printf '%s\n' "${path_value#"${ROOT_DIR}/"}"
    return 0
  fi

  printf '%s\n' "${path_value}"
}

repo_relative_config_ref() {
  local config_ref="$1"
  local config_path="${config_ref%%#*}"
  local suffix=""

  if [[ "${config_ref}" == *"#"* ]]; then
    suffix="#${config_ref#*#}"
  fi

  printf '%s%s\n' "$(repo_relative_path "${config_path}")" "${suffix}"
}

sanitize_apex_export_credentials() {
  local export_dir="$1"
  local app_id="$2"

  python3 - "${export_dir}" "${app_id}" <<'PY'
from pathlib import Path
import sys

export_dir = Path(sys.argv[1]).resolve()
app_id = str(int(sys.argv[2]))
app_export_dir = (export_dir / f"f{app_id}").resolve()

if export_dir not in app_export_dir.parents:
    raise SystemExit(f"Refusing to sanitize outside export dir: {app_export_dir}")

credential_dir = app_export_dir / "workspace" / "credentials"
removed = 0

if credential_dir.exists():
    for path in sorted(credential_dir.rglob("*"), reverse=True):
        if path.is_file() or path.is_symlink():
            path.unlink()
            removed += 1
        elif path.is_dir():
            try:
                path.rmdir()
            except OSError:
                pass
    try:
        credential_dir.rmdir()
    except OSError:
        pass
    try:
        credential_dir.parent.rmdir()
    except OSError:
        pass

install_sql = app_export_dir / "install.sql"
removed_includes = 0
if install_sql.exists():
    lines = install_sql.read_text(encoding="utf-8").splitlines()
    filtered = []
    for line in lines:
        stripped = line.strip()
        if stripped.startswith("@@workspace/credentials/") or stripped.startswith("@workspace/credentials/"):
            removed_includes += 1
            continue
        filtered.append(line)
    if removed_includes:
        install_sql.write_text("\n".join(filtered) + "\n", encoding="utf-8")

print(removed + removed_includes)
PY
}

sanitize_apex_export_supporting_objects() {
  local export_dir="$1"
  local app_id="$2"

  export_dir="${export_dir}"
  app_id="${app_id}"

  # Keep app-owned curated supporting objects in the split export.
  #
  # App 100 carries oversized package bodies as app static files named
  # supporting_objects_*.sql and executes them from deployment/install loader
  # scripts. Removing those files breaks cross-environment imports because the
  # supporting object install phase can no longer recreate the long package
  # bodies in the target workspace.
  #
  # We still sanitize credentials and credential-dependent components elsewhere,
  # but supporting objects themselves must remain in the export artifact.
  printf '0\n'
}

split_supporting_object_view_install_scripts() {
  local export_dir="$1"
  local app_id="$2"
  local source_view_dir="$3"

  python3 - "${export_dir}" "${app_id}" "${source_view_dir}" <<'PY'
from pathlib import Path
import re
import sys

export_dir = Path(sys.argv[1]).resolve()
app_id = str(int(sys.argv[2]))
source_view_dir = Path(sys.argv[3]).resolve()
app_export_dir = (export_dir / f"f{app_id}").resolve()

if export_dir not in app_export_dir.parents:
    raise SystemExit(f"Refusing to rewrite outside export dir: {app_export_dir}")

if not source_view_dir.is_dir():
    print(0)
    raise SystemExit(0)

view_files = sorted(p for p in source_view_dir.glob("*.sql") if p.is_file())
if not view_files:
    print(0)
    raise SystemExit(0)

install_dir = app_export_dir / "application" / "deployment" / "install"
if not install_dir.is_dir():
    print(0)
    raise SystemExit(0)

combined_candidates = sorted(install_dir.glob("install_*_db_views_sql.sql"))
if not combined_candidates:
    print(0)
    raise SystemExit(0)

template_path = combined_candidates[0]
template_text = template_path.read_text(encoding="utf-8")

def extract(pattern: str) -> str:
    match = re.search(pattern, template_text, re.MULTILINE)
    if not match:
        raise SystemExit(f"Unable to parse {pattern!r} from {template_path}")
    return match.group(1)

version = extract(r"p_version_yyyy_mm_dd=>'([^']+)'")
release = extract(r"p_release=>'([^']+)'")
workspace_id = extract(r"p_default_workspace_id=>([0-9]+)")
application_id = extract(r"p_default_application_id=>([0-9]+)")
id_offset = extract(r"p_default_id_offset=>([0-9]+)")
default_owner = extract(r"p_default_owner=>'([^']+)'")
install_id = extract(r"p_install_id=>wwv_flow_imp\.id\(([0-9]+)\)")
base_sequence = int(extract(r"p_sequence=>([0-9]+)"))

existing_ids = []
for path in install_dir.glob("*.sql"):
    text = path.read_text(encoding="utf-8")
    for match in re.finditer(r"p_id=>wwv_flow_imp\.id\(([0-9]+)\)", text):
        existing_ids.append(int(match.group(1)))

next_component_id = max(existing_ids) + 1 if existing_ids else 1

def to_clob_chunks(sql_text: str, chunk_size: int = 2000):
    text = sql_text.replace("\r\n", "\n").replace("\r", "\n")
    if not text.endswith("\n"):
        text += "\n"
    chunks = [text[i:i + chunk_size] for i in range(0, len(text), chunk_size)]
    return chunks

def sql_literal(value: str) -> str:
    return "'" + value.replace("'", "''") + "'"

generated_paths = []

for index, view_path in enumerate(view_files, start=1):
    component_id = next_component_id
    next_component_id += 1
    sequence = base_sequence + index - 1
    view_name = view_path.name
    component_file_name = f"install_{view_path.stem}_sql.sql"
    output_path = install_dir / component_file_name
    chunks = to_clob_chunks(view_path.read_text(encoding="utf-8"))

    lines = [
        f"prompt --application/deployment/install/{component_file_name[:-4]}",
        "begin",
        "--   Manifest",
        f"--     INSTALL: INSTALL-{view_name}",
        "--   Manifest End",
        "wwv_flow_imp.component_begin (",
        f" p_version_yyyy_mm_dd=>'{version}'",
        f",p_release=>'{release}'",
        f",p_default_workspace_id=>{workspace_id}",
        f",p_default_application_id=>{application_id}",
        f",p_default_id_offset=>{id_offset}",
        f",p_default_owner=>'{default_owner}'",
        ");",
        "wwv_flow_imp_shared.create_install_script(",
        f" p_id=>wwv_flow_imp.id({component_id})",
        f",p_install_id=>wwv_flow_imp.id({install_id})",
        f",p_name=>'{view_name}'",
        f",p_sequence=>{sequence}",
        ",p_script_type=>'INSTALL'",
        f",p_script_clob=>to_clob({sql_literal(chunks[0])})",
        ");",
    ]

    for chunk in chunks[1:]:
        lines.extend([
            "wwv_flow_imp_shared.append_to_install_script(",
            f" p_id=>wwv_flow_imp.id({component_id})",
            f",p_script_clob=>to_clob({sql_literal(chunk)})",
            ");",
        ])

    lines.extend([
        "wwv_flow_imp.component_end;",
        "end;",
        "/",
        "",
    ])
    output_path.write_text("\n".join(lines), encoding="utf-8")
    generated_paths.append(output_path)

for obsolete_path in combined_candidates:
    obsolete_path.unlink()

install_sql = app_export_dir / "install.sql"
if install_sql.exists():
    install_lines = install_sql.read_text(encoding="utf-8").splitlines()
    replacement_lines = [f"@@application/deployment/install/{path.name}" for path in generated_paths]
    rewritten = []
    replaced = False
    for line in install_lines:
        stripped = line.strip()
        if stripped.startswith("@@application/deployment/install/install_") and "_db_views_sql.sql" in stripped:
            if not replaced:
                rewritten.extend(replacement_lines)
                replaced = True
            continue
        rewritten.append(line)
    if not replaced:
        rewritten.extend(replacement_lines)
    install_sql.write_text("\n".join(rewritten) + "\n", encoding="utf-8")

print(len(generated_paths))
PY
}

sanitize_apex_export_credential_dependent_components() {
  local export_dir="$1"
  local app_id="$2"

  python3 - "${export_dir}" "${app_id}" <<'PY'
from pathlib import Path
import sys

export_dir = Path(sys.argv[1]).resolve()
app_id = str(int(sys.argv[2]))
app_export_dir = (export_dir / f"f{app_id}").resolve()

if export_dir not in app_export_dir.parents:
    raise SystemExit(f"Refusing to sanitize outside export dir: {app_export_dir}")

removed = 0
removed_rel_paths = set()

for path in sorted(app_export_dir.glob("application/shared_components/security/authentications/*.sql")):
    text = path.read_text(encoding="utf-8", errors="ignore")
    if "p_scheme_type=>'NATIVE_SOCIAL'" not in text:
        continue
    removed_rel_paths.add(path.relative_to(app_export_dir).as_posix())
    path.unlink()
    removed += 1

install_sql = app_export_dir / "install.sql"
removed_includes = 0
if install_sql.exists() and removed_rel_paths:
    lines = install_sql.read_text(encoding="utf-8").splitlines()
    filtered = []
    for line in lines:
        stripped = line.strip()
        include_path = stripped
        if include_path.startswith("@@"):
            include_path = include_path[2:]
        elif include_path.startswith("@"):
            include_path = include_path[1:]

        if include_path in removed_rel_paths:
            removed_includes += 1
            continue
        filtered.append(line)
    if removed_includes:
        install_sql.write_text("\n".join(filtered) + "\n", encoding="utf-8")

print(removed + removed_includes)
PY
}

export_apex_db() {
  bash "${ROOT_DIR}/tools/export_apex_db.sh" "$@"
}

sqlcl_export_dir() {
  local export_dir="$1"

  if [[ "${DB_SQLCL_BIN:-}" == *.exe && "${export_dir}" == /mnt/* ]] && command -v wslpath >/dev/null 2>&1; then
    wslpath -w "${export_dir}"
    return 0
  fi

  printf '%s\n' "${export_dir}"
}

prepare_export_target_env() {
  local env_alias="$1"
  local app_id="$2"
  local app_code=""

  env_alias="$(normalize_env_alias "${env_alias}")"
  app_code="$(resolve_app_code_from_app_id "${app_id}")"

  mkdir -p "$(app_dir "${app_code}" "${env_alias}")"
  load_target_env "${env_alias}" "${app_id}"
}

main() {
  local env_file_name=""
  local app_id=""
  local db_export_mode=""
  local with_db_export=1
  local detected=""
  local view_script_count="0"
  local app_alias=""
  local baseline_app_dir=""

  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    usage
    exit 0
  fi

  env_file_name="${1:-}"
  app_id="${2:-}"
  db_export_mode="${3:-}"

  [[ -n "${env_file_name}" && -n "${app_id}" ]] || {
    usage >&2
    exit 1
  }

  if [[ -n "${db_export_mode}" ]]; then
    [[ "${db_export_mode}" == "nodb" ]] || {
      printf 'Unsupported third argument: %s (expected nodb)\n' "${db_export_mode}" >&2
      exit 1
    }
    with_db_export=0
  fi

  prepare_export_target_env "${env_file_name}" "${app_id}"

  if ! ensure_sqlcl >/dev/null 2>&1; then
    detected="$(detect_sqlcl_bin || true)"
    [[ -n "${detected}" ]] || {
      printf 'Unable to auto-detect SQLcl. Set DB_SQLCL_BIN in your shell environment.\n' >&2
      exit 1
    }
    export DB_SQLCL_BIN="${detected}"
  fi

  if ! ensure_java >/dev/null 2>&1; then
    detected="$(detect_java_home || true)"
    [[ -n "${detected}" ]] || {
      printf 'Unable to auto-detect JAVA_HOME. Set JAVA_HOME in your shell environment.\n' >&2
      exit 1
    }
    export JAVA_HOME="${detected}"
  fi

  ensure_sqlcl
  ensure_java
  validate_tns_config
  show_env_summary
  printf 'select user, sysdate from dual;\n' | run_sqlcl >/dev/null || {
    printf 'Database connectivity check failed for %s\n' "${DB_ENV_NAME}" >&2
    return 1
  }

  [[ -n "${app_id}" && "${app_id}" != "00000" ]] || {
    printf 'A real APEX App ID is required before export.\n' >&2
    exit 1
  }

  mkdir -p "${APEX_EXPORT_DIR}"
  printf 'Exporting APEX app %s from %s into %s\n' "${app_id}" "${APP_CODE}" "${APEX_EXPORT_DIR}"

  local export_dir_for_sqlcl
  export_dir_for_sqlcl="$(sqlcl_export_dir "${APEX_EXPORT_DIR}")"

  {
    build_workspace_init_sql "${APEX_WORKSPACE}"
    cat <<EOF
set define off
apex export -applicationid ${app_id} -split -skipExportDate -expOriginalIds -overwrite-files -dir ${export_dir_for_sqlcl}
EOF
  } | run_sqlcl || {
    printf 'APEX export failed for application %s in %s\n' "${app_id}" "${DB_ENV_NAME}" >&2
    return 1
  }

  local credential_count
  local credential_component_count
  local supporting_count
  local sanitized_count
  credential_count="$(sanitize_apex_export_credentials "${APEX_EXPORT_DIR}" "${app_id}")"
  supporting_count="$(sanitize_apex_export_supporting_objects "${APEX_EXPORT_DIR}" "${app_id}")"
  credential_component_count="$(sanitize_apex_export_credential_dependent_components "${APEX_EXPORT_DIR}" "${app_id}")"
  sanitized_count="$((credential_count + supporting_count + credential_component_count))"
  if [[ "${sanitized_count}" != "0" ]]; then
    printf 'Sanitized %s repository-managed APEX export artifact(s) from %s\n' "${sanitized_count}" "${APEX_EXPORT_DIR}"
  fi

  touch "${APEX_EXPORT_DIR}/.bootstrap-managed"

  if [[ "${with_db_export}" -eq 1 ]]; then
    export_apex_db "${DB_ENV_NAME}" "${app_id}" || {
      printf 'DB object export failed for application %s in %s\n' "${app_id}" "${DB_ENV_NAME}" >&2
      return 1
    }

    app_alias="$(detect_exported_app_alias "${APEX_EXPORT_DIR}" "${app_id}")"
    if [[ -n "${app_alias}" ]]; then
      baseline_app_dir="$(find_canonical_baseline_app_dir "${app_alias}" "${APP_DIR}" || true)"
      if [[ -n "${baseline_app_dir}" ]]; then
        sync_canonical_db_tree_from_baseline "${baseline_app_dir}" "${APP_DIR}" "${app_id}"
        sync_canonical_docs_from_baseline "${baseline_app_dir}" "${APP_DIR}"
        printf 'Normalized exported db/docs from canonical baseline %s for %s\n' \
          "$(repo_relative_path "${baseline_app_dir}")" "${APP_CODE}"
      fi
    fi
  fi

  view_script_count="$(split_supporting_object_view_install_scripts "${APEX_EXPORT_DIR}" "${app_id}" "${APP_DIR}/db/views")"
  if [[ "${view_script_count}" != "0" ]]; then
    printf 'Split supporting object views into %s install script(s) for %s\n' "${view_script_count}" "${APP_CODE}"
  fi

  bootstrap_report
  printf 'APEX export complete for %s\n' "${APP_CODE}"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi
