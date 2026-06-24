CREATE OR REPLACE EDITIONABLE PROCEDURE f300_admin_login_success_v2
AS
    PRAGMA AUTONOMOUS_TRANSACTION;

    c_admin_username CONSTANT VARCHAR2(32)  := 'ADMIN';
    c_admin_password CONSTANT VARCHAR2(128) := 'admin260520';

    v_user_id      NUMBER(20);
    v_name         VARCHAR2(60)  := c_admin_username;
    v_job_number   VARCHAR2(20)  := UPPER(TRIM(V('P9999_USERNAME')));
    v_tenant_id    NUMBER(10)    := 3;
    v_app_id       NUMBER(20)    := V('APP_ID');
    v_app_name     NVARCHAR2(64) := V('APP_NAME');
    v_code         VARCHAR2(64)  := V('APP_CODE');
    v_err_msg      VARCHAR2(4000);
    v_role_id      NUMBER(20)    := 0;
    v_role_level   NUMBER(20)    := 0;
    v_role_code    VARCHAR2(100) := 'VIEW_REPORT';
    v_app_key      VARCHAR2(64);
    v_app_secret   VARCHAR2(64);
    v_env          VARCHAR2(32);
    v_jy_api       VARCHAR2(512);
    v_system_id    NUMBER(20)    := 1;
BEGIN
    IF v_job_number <> c_admin_username THEN
        RAISE_APPLICATION_ERROR(-20001, 'Only ADMIN can log in to f300.');
    END IF;

    BEGIN
        SELECT fu.user_id,
               NVL(NULLIF(TRIM(fu.user_name), ''), c_admin_username),
               NVL(fu.last_system_id, 1)
          INTO v_user_id,
               v_name,
               v_system_id
          FROM fmp_user fu
         WHERE fu.tenant_id = v_tenant_id
           AND NVL(fu.del_flag, 0) = 0
           AND UPPER(fu.job_number) = c_admin_username
           AND NVL(fu.is_leave, 0) = 0
           AND NVL(fu.is_enable, 1) = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO fmp_user(
                user_name,
                job_number,
                password,
                ext_user_id,
                union_id,
                is_enable,
                is_leave,
                user_type,
                tenant_id,
                remark,
                created_by,
                creation_date,
                updated_by,
                update_date,
                del_flag,
                last_system_id
            ) VALUES (
                c_admin_username,
                c_admin_username,
                c_admin_password,
                NULL,
                c_admin_username,
                1,
                0,
                'MASTER_USER',
                v_tenant_id,
                'Auto provisioned by F300_ADMIN_LOGIN_SUCCESS_V2',
                0,
                SYSDATE,
                0,
                SYSDATE,
                0,
                1
            )
            RETURNING user_id INTO v_user_id;

            UPDATE fmp_user
               SET ext_user_id = TO_CHAR(v_user_id)
             WHERE user_id = v_user_id;
    END;

    UPDATE fmp_user
       SET user_name       = c_admin_username,
           job_number      = c_admin_username,
           password        = c_admin_password,
           union_id        = NVL(NULLIF(union_id, ''), c_admin_username),
           is_enable       = 1,
           is_leave        = 0,
           last_login_time = SYSDATE,
           last_system_id  = NVL(last_system_id, 1),
           update_date     = SYSDATE,
           updated_by      = NVL(v_user_id, 0)
     WHERE user_id = v_user_id;

    BEGIN
        SELECT x.role_id,
               x.role_level,
               x.role_type
          INTO v_role_id,
               v_role_level,
               v_role_code
          FROM (
                SELECT r.role_id,
                       NVL(r.role_level, 0) AS role_level,
                       NVL(r.role_type, 'VIEW_REPORT') AS role_type
                  FROM fmp_user_role u
                  JOIN fmp_role r
                    ON r.role_id = u.role_id
                   AND r.tenant_id = u.tenant_id
                   AND NVL(r.del_flag, 0) = 0
                   AND NVL(r.is_enable, 1) = 1
                 WHERE u.user_id = v_user_id
                   AND u.tenant_id = v_tenant_id
                   AND NVL(u.del_flag, 0) = 0
                   AND NVL(u.is_enable, 1) = 1
                 ORDER BY NVL(r.role_level, 0) DESC, r.role_id DESC
          ) x
         WHERE ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            NULL;
    END;

    BEGIN
        SELECT code_value
          INTO v_app_key
          FROM ja_system_dict
         WHERE dict_code = 'APP_KEY'
           AND app_id = v_app_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_app_key := NULL;
    END;

    BEGIN
        SELECT code_value
          INTO v_app_secret
          FROM ja_system_dict
         WHERE dict_code = 'APP_SECRET'
           AND app_id = v_app_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_app_secret := NULL;
    END;

    BEGIN
        SELECT code_value
          INTO v_env
          FROM ja_system_dict
         WHERE dict_code = 'APP_ENV';
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_env := NULL;
    END;

    BEGIN
        SELECT code_value
          INTO v_jy_api
          FROM ja_system_dict
         WHERE dict_code = 'JY_API_URL'
           AND app_id = v_app_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_jy_api := NULL;
    END;

    apex_custom_auth.set_user(v_name);
    apex_util.set_session_state('USER_TENANT', v_tenant_id);
    apex_util.set_session_state('USER_ID', v_user_id);
    apex_util.set_session_state('MPF_USER_ID', TO_CHAR(v_user_id));
    apex_util.set_session_state('DIAN_USER_ID', TO_CHAR(v_user_id));
    apex_util.set_session_state('USER_NAME', v_name);
    apex_util.set_session_state('USER_JOB_NUMBER', v_job_number);
    apex_util.set_session_state('ROLE_LEVEL', v_role_level);
    apex_util.set_session_state('ROLE_CODE', NVL(v_role_code, 'VIEW_REPORT'));
    apex_util.set_session_state('ROLE_ID', v_role_id);
    apex_util.set_session_state('FMP_JY_API_URL', v_jy_api);
    apex_util.set_session_state('STS_JY_API_URL', v_jy_api);
    apex_util.set_session_state('APP_ENV', v_env);
    apex_util.set_session_state('FMP_APPKEY', v_app_key);
    apex_util.set_session_state('STS_APPKEY', v_app_key);
    apex_util.set_session_state('FMP_APPSECRET', v_app_secret);
    apex_util.set_session_state('STS_APPSECRET', v_app_secret);
    apex_util.set_session_state('SYSTEM_ID', NVL(v_system_id, 1));

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        v_err_msg := DBMS_UTILITY.FORMAT_ERROR_STACK || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE || ' job_number:' || v_job_number;
        ja_write_log(
            'F300_ADMIN_LOGIN_SUCCESS_V2',
            'error',
            v_err_msg,
            v_user_id,
            v_tenant_id,
            v_app_name,
            v_app_id,
            v_code
        );
        apex_error.add_error(
            p_message          => 'Login initialization failed. Please contact the administrator.',
            p_ignore_ora_error => TRUE,
            p_display_location => apex_error.c_inline_in_notification
        );
END;
/
