DECLARE
    v_root_file_id NUMBER;
BEGIN
    FOR sys_rec IN (
        SELECT system_id,
               system_name,
               remark
          FROM fmp_system
         WHERE NVL(del_flag, 0) = 0
           AND NVL(is_enable, 1) = 1
    ) LOOP
        FOR tenant_rec IN (
            SELECT DISTINCT tenant_id
              FROM (
                    SELECT tenant_id
                      FROM fmp_file
                     WHERE system_id = sys_rec.system_id
                       AND tenant_id IS NOT NULL
                    UNION
                    SELECT tenant_id
                      FROM fmp_user
                     WHERE tenant_id IS NOT NULL
                       AND NVL(del_flag, 0) = 0
                   )
        ) LOOP
            BEGIN
                SELECT file_id
                  INTO v_root_file_id
                  FROM (
                        SELECT file_id
                          FROM fmp_file
                         WHERE tenant_id = tenant_rec.tenant_id
                           AND system_id = sys_rec.system_id
                           AND file_type = 'FOLDER'
                           AND parent_folder_id IS NULL
                           AND file_name = sys_rec.system_name
                           AND NVL(del_flag, 0) = 0
                         ORDER BY file_id
                       )
                 WHERE ROWNUM = 1;
            EXCEPTION
                WHEN NO_DATA_FOUND THEN
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
                        add_method,
                        sort_num
                    ) VALUES (
                        NULL,
                        NULL,
                        sys_rec.system_name,
                        unistr('\6587\4EF6\5939'),
                        'NORMAL',
                        'FOLDER',
                        0,
                        tenant_rec.tenant_id,
                        -1,
                        SYSDATE,
                        -1,
                        SYSDATE,
                        'VIEW_DOWN',
                        NULL,
                        1,
                        sys_rec.remark,
                        sys_rec.system_id,
                        'NEVER',
                        'CREATE',
                        1
                    )
                    RETURNING file_id INTO v_root_file_id;
            END;

            UPDATE fmp_file
               SET file_name = sys_rec.system_name,
                   file_format = unistr('\6587\4EF6\5939'),
                   file_status = 'NORMAL',
                   parent_folder_id = NULL,
                   root_folder_id = NULL,
                   file_path = NULL,
                   file_level = 1,
                   system_id = sys_rec.system_id,
                   remark = sys_rec.remark,
                   updated_by = NVL(updated_by, -1),
                   update_date = SYSDATE
             WHERE file_id = v_root_file_id;

            DELETE FROM fmp_scope
             WHERE reference_type = 'FILE'
               AND reference_id = v_root_file_id;

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
            )
            SELECT v_root_file_id,
                   'FILE',
                   NVL(entity_type, 'USER'),
                   user_id,
                   source_user_id,
                   permissions_type,
                   role_id,
                   NVL(created_by, -1),
                   SYSDATE,
                   NVL(updated_by, NVL(created_by, -1)),
                   SYSDATE,
                   range_type,
                   range_id,
                   NVL(is_inherit_permission, 1)
              FROM fmp_scope
             WHERE reference_type = 'SYSTEM'
               AND reference_id = sys_rec.system_id;

            UPDATE fmp_file
               SET parent_folder_id = v_root_file_id,
                   root_folder_id = v_root_file_id,
                   file_level = 2,
                   file_path = sys_rec.system_name,
                   updated_by = NVL(updated_by, -1),
                   update_date = SYSDATE
             WHERE tenant_id = tenant_rec.tenant_id
               AND system_id = sys_rec.system_id
               AND NVL(del_flag, 0) = 0
               AND parent_folder_id IS NULL
               AND file_id <> v_root_file_id;

            MERGE INTO fmp_file target
            USING (
                SELECT file_id,
                       LEVEL AS new_level,
                       CASE
                           WHEN LEVEL = 1 THEN NULL
                           ELSE LTRIM(REGEXP_REPLACE(SYS_CONNECT_BY_PATH(file_name, '/'), '/[^/]+$', ''), '/')
                       END AS new_file_path
                  FROM fmp_file
                 WHERE tenant_id = tenant_rec.tenant_id
                   AND system_id = sys_rec.system_id
                   AND NVL(del_flag, 0) = 0
                 START WITH file_id = v_root_file_id
               CONNECT BY PRIOR file_id = parent_folder_id
                     AND tenant_id = tenant_rec.tenant_id
                     AND system_id = sys_rec.system_id
                     AND NVL(del_flag, 0) = 0
            ) src
               ON (target.file_id = src.file_id)
             WHEN MATCHED THEN
                UPDATE SET target.root_folder_id = CASE WHEN src.file_id = v_root_file_id THEN NULL ELSE v_root_file_id END,
                           target.file_level = src.new_level,
                           target.file_path = src.new_file_path,
                           target.updated_by = NVL(target.updated_by, -1),
                           target.update_date = SYSDATE;
        END LOOP;
    END LOOP;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/
