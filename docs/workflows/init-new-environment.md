# Initialize A New Environment

## Goal

Use this flow when you need to add a new environment alias or repair an incomplete `conn.json` entry.

## Recommended Flow

1. Start the wizard with `bash tools/apex_ai.sh init <env_alias>`.
2. Answer the prompts with the environment's actual connection mode, schema, workspace, and optional metadata.
3. Run `bash tools/apex_ai.sh check <env_alias> --deep`.
4. Resolve every `WARN` or missing-field issue the check reports.
5. Run `bash tools/apex_ai.sh check <env_alias> --deep` again until the selected environment is clean enough for the next workflow.
6. Proceed with export, import, SQL, or access tooling only after the deep check output matches the intended setup.

## Why This Order Matters

- `tools/apex_ai.sh init <env_alias>` keeps new entries aligned with the repository's supported `conn.json` shape.
- The wizard is the preferred way to add environments and repair incomplete environment config.
- `tools/apex_ai.sh check <env_alias> --deep` catches missing values and suspicious placeholders before they break later commands.
- Resolving `WARN` output early is faster than debugging export or SQL failures after the fact.

## When To Use Bare `check`

Use `bash tools/apex_ai.sh check` when you want a broad review of all configured environments.

Use `bash tools/apex_ai.sh check <env_alias> --deep` when you are actively onboarding or repairing one selected environment.
