CREATE OR REPLACE EDITIONABLE FUNCTION fmp_apex_login(
    p_username IN VARCHAR2,
    p_password IN VARCHAR2
) RETURN BOOLEAN
AS
    PRAGMA AUTONOMOUS_TRANSACTION;

    v_job_number         VARCHAR2(64) := UPPER(TRIM(p_username));
    v_expected_password  VARCHAR2(128);
    v_exists             NUMBER;
    v_content            VARCHAR2(512);
    v_err_msg            VARCHAR2(2000);
    v_app_id             NUMBER(20)    := V('APP_ID');
    v_app_name           NVARCHAR2(64) := V('APP_NAME');
    v_code               VARCHAR2(64)  := V('APP_CODE');
    v_tenant_id          NUMBER(20)    := 3;
BEGIN
    v_content := 'p_username:' || p_username || CHR(13) || 'p_password:' || p_password;

    SELECT CASE
               WHEN EXISTS (
                   SELECT 1
                     FROM basic_user bu
                    WHERE NVL(bu.del_flag, 0) = 0
                      AND NVL(bu.is_leave, 0) = 0
                      AND UPPER(bu.job_number) = v_job_number
               ) OR EXISTS (
                   SELECT 1
                     FROM basic_ja_ding_user bd
                    WHERE NVL(bd.is_leave, 0) = 0
                      AND UPPER(bd.job_number) = v_job_number
               ) THEN 1
               ELSE 0
           END
      INTO v_exists
      FROM dual;

    IF v_exists = 0 THEN
        RAISE NO_DATA_FOUND;
    END IF;

    v_expected_password := CASE
        WHEN v_job_number = 'JA016181' THEN 'lwh123..'
        ELSE 'Aa135246..'
    END;

    IF p_password <> v_expected_password THEN
        apex_error.add_error(
            p_message          => '密码错误，请检查后输入',
            p_additional_info  => 'LOGIN-01',
            p_display_location => apex_error.c_inline_in_notification
        );
        RETURN FALSE;
    END IF;

    RETURN TRUE;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        apex_error.add_error(
            p_message          => '账号不存在或已离职，请检查后输入',
            p_ignore_ora_error => TRUE,
            p_display_location => apex_error.c_inline_in_notification
        );
        v_err_msg := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;
        ja_write_log(
            ja_utils_pkg.get_fn_name(),
            'warning',
            v_content || CHR(13) || v_err_msg,
            -1,
            v_tenant_id,
            v_app_name,
            v_app_id,
            v_code
        );
        ROLLBACK;
        RETURN FALSE;
    WHEN OTHERS THEN
        apex_error.add_error(
            p_message          => '系统异常，请联系管理员',
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
