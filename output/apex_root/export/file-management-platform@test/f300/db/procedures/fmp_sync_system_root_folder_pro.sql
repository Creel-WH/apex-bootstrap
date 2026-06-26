CREATE OR REPLACE PROCEDURE fmp_sync_system_root_folder_pro(
    p_system_id    IN NUMBER,
    p_system_name  IN VARCHAR2,
    p_remark       IN VARCHAR2,
    p_admin_ids    IN VARCHAR2,
    p_user_tenant  IN NUMBER,
    p_mpf_user_id  IN NUMBER,
    p_dian_user_id IN VARCHAR2
) AS
    v_root_file_id NUMBER;
    v_range_id     VARCHAR2(256);
BEGIN
    IF p_system_id IS NULL THEN
        raise_application_error(-20001, 'SYSTEM_ID is required.');
    END IF;

    BEGIN
        SELECT file_id
          INTO v_root_file_id
          FROM (
                SELECT file_id
                  FROM fmp_file
                 WHERE tenant_id = p_user_tenant
                   AND system_id = p_system_id
                   AND file_type = 'FOLDER'
                   AND parent_folder_id IS NULL
                   AND NVL(del_flag, 0) = 0
                 ORDER BY file_id
          )
         WHERE ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_root_file_id := NULL;
    END;

    IF v_root_file_id IS NULL THEN
        INSERT INTO fmp_file(
            root_folder_id,
            parent_folder_id,
            file_name,
            file_format,
            file_status,
            file_type,
            del_flag,
            tenant_id,
            created_by,
            creation_date,
            updated_by,
            update_date,
            scope_type,
            file_path,
            file_level,
            remark,
            system_id,
            plans_file_type,
            add_method
        ) VALUES (
            NULL,
            NULL,
            p_system_name,
            unistr('\6587\4EF6\5939'),
            'NORMAL',
            'FOLDER',
            0,
            p_user_tenant,
            p_mpf_user_id,
            SYSDATE,
            p_mpf_user_id,
            SYSDATE,
            'VIEW_DOWN',
            NULL,
            1,
            p_remark,
            p_system_id,
            'NEVER',
            'CREATE'
        )
        RETURNING file_id INTO v_root_file_id;
    ELSE
        UPDATE fmp_file
           SET file_name = p_system_name,
               file_format = unistr('\6587\4EF6\5939'),
               file_status = 'NORMAL',
               del_flag = 0,
               updated_by = p_mpf_user_id,
               update_date = SYSDATE,
               scope_type = NVL(scope_type, 'VIEW_DOWN'),
               file_path = NULL,
               file_level = 1,
               remark = p_remark,
               system_id = p_system_id,
               plans_file_type = NVL(plans_file_type, 'NEVER'),
               add_method = NVL(add_method, 'CREATE'),
               root_folder_id = NULL,
               parent_folder_id = NULL
         WHERE file_id = v_root_file_id;
    END IF;

    DELETE FROM fmp_scope
     WHERE reference_type = 'FILE'
       AND permissions_type = 'MANAGE'
       AND range_type = 'USER'
       AND reference_id = v_root_file_id;

    FOR a IN (
        SELECT DISTINCT user_id_txt
          FROM (
                SELECT TRIM(data_val) AS user_id_txt
                  FROM TABLE(ja_utils_pkg.split_str(p_admin_ids, ':'))
                 WHERE TRIM(data_val) IS NOT NULL
          )
    ) LOOP
        BEGIN
            SELECT NVL(union_id, TO_CHAR(user_id))
              INTO v_range_id
              FROM basic_user
             WHERE tenant_id = p_user_tenant
               AND del_flag = 0
               AND user_id = TO_NUMBER(a.user_id_txt)
               AND ROWNUM = 1;
        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                v_range_id := a.user_id_txt;
            WHEN VALUE_ERROR THEN
                v_range_id := a.user_id_txt;
        END;

        INSERT INTO fmp_scope(
            reference_id,
            reference_type,
            entity_type,
            user_id,
            source_user_id,
            permissions_type,
            role_id,
            created_by,
            creation_date,
            updated_by,
            update_date,
            range_type,
            range_id,
            is_inherit_permission
        ) VALUES (
            v_root_file_id,
            'FILE',
            'USER',
            v_range_id,
            v_range_id,
            'MANAGE',
            NULL,
            p_mpf_user_id,
            SYSDATE,
            p_mpf_user_id,
            SYSDATE,
            'USER',
            v_range_id,
            1
        );
    END LOOP;
END fmp_sync_system_root_folder_pro;
/
