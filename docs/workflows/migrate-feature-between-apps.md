# Migrate Feature Between Applications

## Goal

This workflow describes how to move or replicate a feature from one APEX application to another.

A feature may include:

- APEX pages,
- shared components,
- LOVs,
- navigation entries,
- static files,
- PL/SQL packages,
- tables or views,
- triggers, jobs, grants,
- seed data,
- and tests.

Applications may belong to different databases, schemas, and APEX workspaces, so migration must always be explicit.

## Migration Principles

- Treat feature migration as a controlled copy-and-adapt process.
- Never assume the target application shares the same schema or environment.
- Never assume object names, IDs, authorization schemes, or LOV dependencies can be reused unchanged.
- Always document what was moved and what was adapted.

## Suggested Flow

1. Identify source and target applications.
2. Define the exact feature boundary.
3. Inspect APEX dependencies under the source `apex/` tree.
4. Inspect DB dependencies under the source `db/` tree.
5. Copy only the required assets into the target application.
6. Adapt IDs, schema references, LOVs, security, and jobs for the target context.
7. Update manifests, tests, and docs in the target application.
8. Run focused validation before claiming success.
