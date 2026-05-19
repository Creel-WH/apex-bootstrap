prompt Installing utPLSQL from official release
set define on
set verify off
whenever sqlerror exit failure rollback

define utplsql_source_dir = '&1'
define utplsql_owner = '&2'
define utplsql_password = '&3'
define utplsql_tablespace = '&4'
define utplsql_temp_tablespace = '&5'

@@&utplsql_source_dir/install_headless.sql &utplsql_owner &utplsql_password &utplsql_tablespace &utplsql_temp_tablespace

prompt utPLSQL installation finished.
