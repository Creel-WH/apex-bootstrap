# f300 Logout Redirect Fix

## Scope

- Environment: `file-management-platform@test`
- App: `f300` (`APP_ID = 300`)
- Goal: fix logout so it returns to the login page instead of the nonexistent `P1`

## Root Cause

- The desktop user interface `home_url` was configured as `f?p=&APP_ID.:&PAGE.:&APP_SESSION.::&DEBUG.:::`.
- In runtime, that configuration resolved to `P1`, so both the header logo and the native `&LOGOUT_URL.` flow pointed to page `1`.
- App `300` does not have `P1`, which caused the error dialog after logout.

## Source Changes

- [`apex/f300/application/user_interfaces.sql`](D:/ja-projects/apex/apex-bootstrap/export/file-management-platform@test/f300/apex/f300/application/user_interfaces.sql)
  - Set `p_home_url` to `f?p=&APP_ID.:300:&APP_SESSION.::&DEBUG.:::`
- [`apex/f300/application/pages/page_00000.sql`](D:/ja-projects/apex/apex-bootstrap/export/file-management-platform@test/f300/apex/f300/application/pages/page_00000.sql)
  - Removed the temporary global logout click interception added during debugging
- [`apex/f300/application/shared_components/navigation/lists/导航栏.sql`](D:/ja-projects/apex/apex-bootstrap/export/file-management-platform@test/f300/apex/f300/application/shared_components/navigation/lists/导航栏.sql)
  - Kept the native `&LOGOUT_URL.` target and fixed the root cause at the app UI layer

## Test Environment Update

- Imported clean `P0` back to test:
  - `bash tools/apex_ai.sh import-page "file-management-platform@test" 300 0`
- Applied the runtime metadata fix directly:
  - `update apex_240200.wwv_flows set home_link = 'f?p=&APP_ID.:300:&APP_SESSION.::&DEBUG.:::' where id = 300`

## Validation

- Before fix:
  - logout landed on `https://apextest.jasolar.com/ords/uatapex23/f?p=300:1:0:::::`
- After fix:
  - header logo points to `f?p=300:300:...`
  - logout lands on `https://apextest.jasolar.com/ords/uatapex23/f?p=300:LOGIN::::::`
  - login page renders with `#P9999_USERNAME` and `#login`
