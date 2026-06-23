# Browser Debugging Reference

## Purpose

This document captures the practical browser-debugging workflow used in this repository.
Use it when a page change has already been imported to a live test environment and you need to verify real runtime behavior, inspect DOM structure, capture AJAX responses, or diagnose why an APEX page behaves differently in the browser than it does in source SQL.

This is a project-level reference.
For app-specific behavior, still keep the final evidence and conclusions in the app-owned feature log under `export/<env_alias>/f<APP_ID>/docs/`.

## When To Use

Use this workflow for cases such as:

- browser smoke or browser-functional validation
- runtime page debugging after `import-page` or `import-app`
- login-flow diagnosis
- APEX Interactive Grid DOM / AJAX inspection
- verifying whether a frontend fix actually initialized in the live page
- distinguishing frontend issues from backend `ON_DEMAND` process failures

## Pre-Checks

Before opening the browser, confirm these basics:

1. The target page SQL has already been imported to the target environment.
2. The selected environment alias in `conn.json` or `.conn.json` has the required browser/runtime fields.
3. Any real credentials stay in ignored `.conn.json` or external secret injection, not in tracked docs.
4. Evidence output will go under `output/playwright/`.

Related references:

- `docs/workflows/conn-json-minimal-examples.md`
- `docs/conventions/secret-credential-injection-map.md`

## Debugging Lanes

There are two main lanes in this project.

### Lane A: Repository Gate / Smoke Validation

Use this lane when the goal is simple reachability or known selector/text checks.

Typical inputs:

- `apex_browser_smoke_url`
- `apex_browser_expect_selector`
- `apex_browser_expect_text`
- app-owned `browser-smoke.json`
- app-owned `browser-functional.json`

This lane is good for:

- confirming a page opens
- confirming a login form renders
- confirming a success banner or key selector exists

This lane is not enough when:

- the page requires business-user runtime login
- you need to inspect runtime DOM after dynamic rendering
- you need to capture AJAX request / response payloads
- you need to debug drag/drop, refresh, modal flows, or permission mismatches

### Lane B: Ad-Hoc Live Browser Debugging

Use this lane when you need a real investigation session.

Preferred tools in this repository:

- `playwright` skill / Playwright CLI for straightforward page interaction
- `node_repl` Playwright scripts when you need custom DOM inspection, request capture, or response parsing
- `functions.view_image` to inspect saved screenshots

Use this lane for:

- runtime app login flows
- Interactive Grid structure inspection
- request / response capture for `wwv_flow.ajax`
- debugging DOM after partial refresh
- debugging pointer, drag, modal, and dynamic-action behavior

## Authentication Decision First

Do not start automation until you know which authentication flow you are testing.

In this repository, there are usually three different login contexts:

1. APEX builder login
2. application runtime login
3. SSO / QR-code login that can be switched to account-password mode

### Builder Login

Use builder credentials only for builder or workspace actions.
Do not assume builder credentials can log into the runtime business application.

### Runtime Application Login

For runtime pages, first inspect the actual runtime login page and its supporting docs.

For `f299`, the runtime login page is documented in:

- `export/file-management-platform@test/f299/docs/pages/P9999.md`

Important lesson from live debugging:

- opening `f?p=299:133` may redirect to `f?p=299:LOGIN`
- the visible login UI may default to QR code mode
- the runtime app may require clicking the top-right switch control before username/password fields appear
- builder credentials may fail even though the runtime page itself is reachable

### Project Rule

Always identify the runtime login source of truth before automating a page:

- page doc such as `P9999.md`
- login auth function under `db/functions/`
- post-login initialization procedure under `db/procedures/`

## Recommended Browser Debugging Flow

Use this order when debugging a live page:

1. Import the page or app to the target environment.
2. Open the target runtime URL in a real browser session.
3. Confirm whether it lands on the expected page or redirects to login.
4. If redirected, determine the actual login mode and switch UI if needed.
5. Complete a real login with the correct runtime user.
6. Wait for the target region or selector to finish rendering.
7. Inspect DOM counts, classes, text, and computed styles.
8. If behavior depends on AJAX, capture `wwv_flow.ajax` requests and responses.
9. Save screenshot evidence to `output/playwright/`.
10. After fixing code, re-import and rerun the exact same browser flow.

## Recommended Tool Patterns

### Pattern 1: Quick Visual Check

Use this when you only need to confirm whether the page opened and rendered the right area.

Steps:

1. open page
2. log in if needed
3. wait for target selector
4. capture screenshot
5. inspect screenshot with `functions.view_image`

This is the fastest way to catch:

- wrong page
- wrong view mode
- missing toolbar
- handle shown in the wrong column
- modal not opening

### Pattern 2: Runtime DOM Inspection

Use this when the page renders but the behavior is wrong.

Inspect values such as:

- current URL
- page title
- session-dependent items via `$v(...)`
- selector counts
- first-row cell text
- computed cursor style
- existence of injected classes such as `.task-sort-cell`

Typical questions this answers:

- did the initializer actually run
- was the handle injected
- was it injected into the right column
- is the page in the expected mode
- did a permission item resolve before init

### Pattern 3: AJAX Capture

Use this when the frontend looks correct but the final behavior rolls back or silently fails.

Capture:

- `wwv_flow.ajax` request URL
- request `postData`
- response status
- response text

This is especially useful for `ON_DEMAND` processes because it lets you distinguish:

- frontend drag worked but save was rejected by backend permission logic
- page items were not submitted
- backend returned JSON error even though no JavaScript exception was thrown

## APEX-Specific Inspection Checklist

When debugging APEX runtime pages, check these in order.

### 1. Redirects

- Did the target page redirect to login
- Did it redirect to another page because required session state was missing

### 2. Session Items

- Are the items needed by the page populated
- Are permission-related items still empty during first render
- Did the page mode item match the intended test scenario

### 3. Region Identity

- What is the real region static id
- What DOM subtree actually contains the rendered grid or report
- Is the expected region wrapper present at all

### 4. Interactive Grid Structure

Do not assume the live IG DOM matches the export structure exactly.

Check:

- whether the grid uses frozen panes
- whether the visible scroll pane is the canonical tbody
- whether headers expose `data-column`
- whether headers expose stable `id`
- whether cells expose `headers`
- whether row-header or selector columns shift the visible index

### 5. Dynamic Refresh

If the page uses refresh-heavy flows, re-check DOM after:

- region refresh
- pagination
- modal close
- folder navigation
- sort mode switch

## Practical Lessons From P133 Drag Debugging

These project-specific lessons were confirmed in live browser debugging.

### Lesson 1: No Error Does Not Mean Initialization Happened

The page may look normal while the drag initializer never ran.

Typical sign:

- no JavaScript exception
- no `.task-sort-cell`
- no `.js-task-drag-handle`
- hover cursor unchanged

What to check:

- whether the scheduler function is actually exported to `window`
- whether outer code calls `window.<functionName>(...)`

### Lesson 2: Live IG Markup Can Miss Expected Attributes

Do not assume the live page exposes:

- `th[data-column]`
- header `id`
- cell `headers`

If those are missing, inspect the visible header row and fall back to the actual localized sort-column header text shown in the scroll pane.

### Lesson 3: Frontend Drag Can Work While Save Still Fails

The row can visibly move during drag, but on mouseup the page refreshes back to the old order.

When this happens, capture raw AJAX and check:

- whether `f01`
- whether `f02`
- whether `x01`
- whether dependent `pageItems`

were all submitted.

### Lesson 4: Permission Errors May Be Submission Errors In Disguise

If backend returns a message saying the current user cannot save sort order, do not immediately conclude the permission SQL is wrong.

First verify whether the frontend actually submitted the permission-related items the backend reads.

### Lesson 5: Restore Business Data After Live Validation

If a real browser test changes visible business order or records:

- finish the validation
- restore the original order or state
- note that restoration in the feature log

This keeps test environments readable for the next debugging pass.

## Evidence Capture Rules

When you perform ad-hoc browser debugging, keep the evidence lightweight but useful.

Recommended artifacts:

- one screenshot before the fix if it proves the issue
- one screenshot after the fix
- one JSON-like result block with the inspected selector counts or AJAX result
- one feature log entry that says what was verified and what state was restored

Store screenshots under:

- `output/playwright/`

Do not create new top-level artifact folders unless there is a strong reason.

## Suggested Node REPL Debug Pattern

Use `node_repl` Playwright scripts when the built-in browser bundle is unavailable or when you need custom logic.

Recommended pattern:

1. launch `chromium` with `channel: "msedge"` if local Playwright browsers are missing
2. open runtime URL
3. handle login switch if QR login is the default view
4. wait for target region
5. run `page.evaluate(...)` to inspect DOM state
6. optionally attach `request` / `response` listeners before the action under test
7. save screenshot to `output/playwright/`

This approach is especially useful for:

- DOM counting
- computed style inspection
- AJAX capture
- step-by-step drag or modal debugging

## Suggested Playwright CLI Pattern

Use Playwright CLI when the task is mostly interaction and less about custom scripting.

Recommended loop:

1. open page
2. snapshot
3. interact by ref
4. re-snapshot after UI changes
5. save screenshot or trace

Use CLI-first when:

- selectors are stable
- you need a quick manual-equivalent replay
- you do not need request-body parsing

Switch to `node_repl` when:

- you need DOM internals
- you need AJAX response text
- you need to compute or compare runtime values

## Common Debugging Questions

### The page opens, but not the page I expected

Check:

- redirect destination
- runtime login requirement
- missing session state
- wrong app/page URL

### The UI looks correct, but behavior is wrong

Check:

- dynamic action actually fired
- injected classes exist
- expected runtime items have values
- backend process response text

### The backend seems wrong

Before changing PL/SQL, confirm:

- the browser submitted all required page items
- the request payload matches the runtime state you believe you are testing
- the page is really in the expected mode

### The second interaction fails but the first works

Check:

- stale DOM refs
- refresh/rebind timing
- duplicate listeners
- whether the page rerendered a new tbody or region subtree

## What To Record In Feature Logs

When browser debugging leads to a real fix, record at least:

- login path used
- whether builder login or runtime login was used
- target page URL
- selectors or counts that proved the fix
- any backend response that explained the issue
- whether you restored changed business data after validation

## Keep This Reference Current

When a future browser-debugging session reveals a new recurring pattern, update this document and the more specific skill or page doc that owns the lesson.

Project-level workflow belongs here.
App-specific behavior belongs in the corresponding page doc or feature log.
