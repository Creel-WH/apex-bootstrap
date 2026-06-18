CREATE OR REPLACE EDITIONABLE PROCEDURE fmp_save_page_config(
    p_system_id IN NUMBER,
    p_tenant_id IN NUMBER,
    p_page_ids  IN VARCHAR2,
    p_user_id   IN NUMBER,
    p_app_id    IN NUMBER DEFAULT NULL,
    p_app_name  IN VARCHAR2 DEFAULT NULL,
    p_app_code  IN VARCHAR2 DEFAULT NULL
)
AS
    v_system_id NUMBER := NVL(p_system_id, 42);
    v_err_msg   VARCHAR2(2000);
    v_page_count NUMBER := 1;
BEGIN
    IF p_page_ids IS NOT NULL THEN
        v_page_count := REGEXP_COUNT(p_page_ids, ',') + 1;
    END IF;

    JA_WRITE_LOG(
        'FMP_SAVE_PAGE_CONFIG',
        'INFO',
        'START system_id=' || v_system_id ||
        ', tenant_id=' || p_tenant_id ||
        ', user_id=' || p_user_id ||
        ', app_id=' || p_app_id ||
        ', app_code=' || p_app_code ||
        ', page_count=' || v_page_count ||
        ', page_ids=' || SUBSTR(p_page_ids, 1, 1200),
        NVL(p_user_id, 0),
        p_tenant_id,
        p_app_name,
        p_app_id,
        p_app_code
    );

    DELETE FROM fmp_page_config
     WHERE system_id = v_system_id
       AND tenant_id = p_tenant_id;

    INSERT INTO fmp_page_config(
        system_id,
        tenant_id,
        page_id,
        is_visible,
        created_by,
        creation_date,
        updated_by,
        update_date,
        del_flag
    ) VALUES (
        v_system_id,
        p_tenant_id,
        221,
        1,
        p_user_id,
        SYSDATE,
        p_user_id,
        SYSDATE,
        0
    );

    IF p_page_ids IS NOT NULL THEN
        FOR item IN (
            SELECT TO_NUMBER(TRIM(column_value)) AS page_id
              FROM TABLE(apex_string.split(p_page_ids, ','))
             WHERE TRIM(column_value) IS NOT NULL
               AND TO_NUMBER(TRIM(column_value)) <> 221
        ) LOOP
            INSERT INTO fmp_page_config(
                system_id,
                tenant_id,
                page_id,
                is_visible,
                created_by,
                creation_date,
                updated_by,
                update_date,
                del_flag
            ) VALUES (
                v_system_id,
                p_tenant_id,
                item.page_id,
                1,
                p_user_id,
                SYSDATE,
                p_user_id,
                SYSDATE,
                0
            );
        END LOOP;
    END IF;

    JA_WRITE_LOG(
        'FMP_SAVE_PAGE_CONFIG',
        'INFO',
        'SUCCESS system_id=' || v_system_id ||
        ', tenant_id=' || p_tenant_id ||
        ', visible_count=' || (
            SELECT COUNT(1)
              FROM fmp_page_config
             WHERE system_id = v_system_id
               AND tenant_id = p_tenant_id
               AND NVL(del_flag, 0) = 0
        ),
        NVL(p_user_id, 0),
        p_tenant_id,
        p_app_name,
        p_app_id,
        p_app_code
    );
EXCEPTION
    WHEN OTHERS THEN
        v_err_msg := 'ERROR system_id=' || v_system_id ||
                     ', tenant_id=' || p_tenant_id ||
                     ', user_id=' || p_user_id ||
                     ', app_id=' || p_app_id ||
                     ', app_code=' || p_app_code ||
                     ', page_ids=' || SUBSTR(p_page_ids, 1, 800) ||
                     ', err=' || SQLERRM || CHR(13) ||
                     DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;
        BEGIN
            JA_WRITE_LOG(
                'FMP_SAVE_PAGE_CONFIG',
                'ERROR',
                v_err_msg,
                NVL(p_user_id, 0),
                p_tenant_id,
                p_app_name,
                p_app_id,
                p_app_code
            );
        EXCEPTION
            WHEN OTHERS THEN
                NULL;
        END;
        RAISE;
END;
/
