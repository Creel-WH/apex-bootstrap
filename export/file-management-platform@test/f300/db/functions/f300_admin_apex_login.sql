CREATE OR REPLACE EDITIONABLE FUNCTION f300_admin_apex_login(
    p_username IN VARCHAR2,
    p_password IN VARCHAR2
) RETURN BOOLEAN
AS
    PRAGMA AUTONOMOUS_TRANSACTION;

    c_admin_username CONSTANT VARCHAR2(32)  := 'ADMIN';
    c_admin_password CONSTANT VARCHAR2(128) := 'admin260520';

    v_username   VARCHAR2(64)  := UPPER(TRIM(p_username));
    v_content    VARCHAR2(512);
    v_err_msg    VARCHAR2(2000);
    v_app_id     NUMBER(20)    := V('APP_ID');
    v_app_name   NVARCHAR2(64) := V('APP_NAME');
    v_code       VARCHAR2(64)  := V('APP_CODE');
    v_tenant_id  NUMBER(20)    := 3;
BEGIN
    v_content := 'p_username:' || p_username || CHR(13) || 'p_password:' || p_password;

    IF v_username <> c_admin_username THEN
        apex_error.add_error(
            p_message          => unistr('\7528\6237\540D\6216\5BC6\7801\9519\8BEF'),
            p_ignore_ora_error => TRUE,
            p_display_location => apex_error.c_inline_in_notification
        );
        RETURN FALSE;
    END IF;

    IF p_password <> c_admin_password THEN
        apex_error.add_error(
            p_message          => unistr('\7528\6237\540D\6216\5BC6\7801\9519\8BEF'),
            p_ignore_ora_error => TRUE,
            p_display_location => apex_error.c_inline_in_notification
        );
        RETURN FALSE;
    END IF;

    RETURN TRUE;
EXCEPTION
    WHEN OTHERS THEN
        apex_error.add_error(
            p_message          => unistr('\767B\5F55\5931\8D25\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'),
            p_ignore_ora_error => TRUE,
            p_display_location => apex_error.c_inline_in_notification
        );
        v_err_msg := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;
        ja_write_log(
            ja_utils_pkg.get_fn_name(),
            'error',
            v_content || CHR(13) || v_err_msg,
            -1,
            v_tenant_id,
            v_app_name,
            v_app_id,
            v_code
        );
        ROLLBACK;
        RETURN FALSE;
END;
/
