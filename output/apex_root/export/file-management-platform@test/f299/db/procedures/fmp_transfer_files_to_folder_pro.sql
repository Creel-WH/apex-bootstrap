CREATE OR REPLACE PROCEDURE fmp_transfer_files_to_folder_pro(
    p_target_folder_id IN NUMBER,
    p_old_file_ids IN VARCHAR2,
    p_mpf_user_id IN NUMBER,
    p_user_tenant IN NUMBER,
    p_system_id IN NUMBER DEFAULT NULL,
    p_dian_user_id IN VARCHAR2 DEFAULT NULL,
    p_role_code IN VARCHAR2 DEFAULT NULL,
    p_success OUT VARCHAR2,
    p_message OUT VARCHAR2,
    p_processed_count OUT NUMBER
) AS
    v_target_folder_name      VARCHAR2(100);
    v_target_folder_level     NUMBER;
    v_target_root_id          NUMBER;
    v_target_scope_type       VARCHAR2(50);
    v_target_file_path        VARCHAR2(4000);
    v_target_plans_file_type  VARCHAR2(50);
    v_count                   NUMBER;
    v_total_count             NUMBER := 0;
    v_max_iterations          NUMBER := 15;
    v_iteration               NUMBER := 0;
    v_old_files               number_table_type := number_table_type();

    TYPE file_info_rec IS RECORD (
        file_id          NUMBER,
        file_name        VARCHAR2(255),
        file_level       NUMBER,
        root_folder_id   NUMBER,
        parent_folder_id NUMBER,
        file_path        VARCHAR2(4000),
        scope_type       VARCHAR2(50),
        plans_file_type  VARCHAR2(50)
    );

    TYPE file_info_table IS TABLE OF file_info_rec;
    v_file_infos file_info_table;

    v_target_not_found EXCEPTION;
    PRAGMA EXCEPTION_INIT(v_target_not_found, -20001);

    PROCEDURE write_log(p_text IN VARCHAR2) IS
    BEGIN
        ja_write_log(
            ja_utils_pkg.get_fn_name(),
            'info',
            p_text,
            -1,
            p_user_tenant,
            '文件管理平台',
            299,
            'FMP'
        );
    END write_log;
BEGIN
    p_success := 'N';
    p_message := '';
    p_processed_count := 0;

    write_log('开始文件转移操作, target=' || p_target_folder_id || ', files=' || p_old_file_ids);

    BEGIN
        SELECT file_name,
               file_level,
               root_folder_id,
               scope_type,
               DECODE(file_path, NULL, file_name, file_path || '/' || file_name),
               plans_file_type
          INTO v_target_folder_name,
               v_target_folder_level,
               v_target_root_id,
               v_target_scope_type,
               v_target_file_path,
               v_target_plans_file_type
          FROM fmp_file
         WHERE file_id = p_target_folder_id
           AND NVL(del_flag, 0) = 0
           AND tenant_id = p_user_tenant
           AND (p_system_id IS NULL OR system_id = p_system_id);

        IF v_target_folder_level = 1 THEN
            v_target_root_id := p_target_folder_id;
            v_target_file_path := NULL;
        ELSIF v_target_root_id IS NULL THEN
            v_target_root_id := p_target_folder_id;
        END IF;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            p_message := '目标文件夹不存在或已被删除';
            RAISE_APPLICATION_ERROR(-20001, p_message);
    END;

    SELECT TO_NUMBER(TRIM(REGEXP_SUBSTR(p_old_file_ids, '[^,]+', 1, LEVEL)))
      BULK COLLECT INTO v_old_files
      FROM dual
    CONNECT BY REGEXP_SUBSTR(p_old_file_ids, '[^,]+', 1, LEVEL) IS NOT NULL;

    IF v_old_files.COUNT = 0 THEN
        p_message := '没有找到有效的文件ID';
        RETURN;
    END IF;

    SELECT COUNT(*)
      INTO v_count
      FROM TABLE(v_old_files) ids
     WHERE fmp_is_file_manager(
               ids.column_value,
               p_user_tenant,
               TO_CHAR(p_mpf_user_id),
               p_dian_user_id,
               p_role_code
           ) = 0;

    IF v_count > 0 THEN
        p_message := 'Current selection contains objects without manage permission.';
        RETURN;
    END IF;

    SELECT file_id,
           file_name,
           file_level,
           root_folder_id,
           parent_folder_id,
           file_path,
           scope_type,
           plans_file_type
      BULK COLLECT INTO v_file_infos
      FROM fmp_file
     WHERE file_id IN (SELECT column_value FROM TABLE(v_old_files))
       AND NVL(del_flag, 0) = 0
       AND tenant_id = p_user_tenant
       AND (p_system_id IS NULL OR system_id = p_system_id);

    IF v_file_infos.COUNT = 0 THEN
        p_message := '没有找到需要转移的有效文件';
        RETURN;
    END IF;

    FOR i IN 1 .. v_file_infos.COUNT LOOP
        UPDATE fmp_file
           SET parent_folder_id = p_target_folder_id,
               root_folder_id = DECODE(v_target_folder_level, 1, p_target_folder_id, v_target_root_id),
               file_level = v_target_folder_level + 1,
               file_path = v_target_file_path,
               scope_type = v_target_scope_type,
               plans_file_type = v_target_plans_file_type,
               updated_by = p_mpf_user_id,
               update_date = SYSDATE
         WHERE file_id = v_file_infos(i).file_id
           AND NVL(del_flag, 0) = 0
           AND tenant_id = p_user_tenant
           AND (p_system_id IS NULL OR system_id = p_system_id);
    END LOOP;

    LOOP
        v_iteration := v_iteration + 1;

        UPDATE fmp_file a
           SET root_folder_id = v_target_root_id,
               updated_by = p_mpf_user_id,
               update_date = SYSDATE
         WHERE EXISTS (
                   SELECT 1
                     FROM fmp_file b
                    WHERE b.file_id = a.parent_folder_id
                      AND b.root_folder_id = v_target_root_id
                      AND NVL(b.del_flag, 0) = 0
                      AND b.tenant_id = p_user_tenant
                      AND (p_system_id IS NULL OR b.system_id = p_system_id)
               )
           AND NVL(a.root_folder_id, -1) <> v_target_root_id
           AND NVL(a.del_flag, 0) = 0
           AND a.tenant_id = p_user_tenant
           AND (p_system_id IS NULL OR a.system_id = p_system_id);

        v_count := SQL%ROWCOUNT;
        v_total_count := v_total_count + v_count;
        EXIT WHEN v_count = 0 OR v_iteration >= v_max_iterations;
    END LOOP;

    UPDATE fmp_file
       SET file_level = NULL,
           updated_by = p_mpf_user_id,
           update_date = SYSDATE
     WHERE root_folder_id = v_target_root_id
       AND NVL(del_flag, 0) = 0
       AND tenant_id = p_user_tenant
       AND (p_system_id IS NULL OR system_id = p_system_id);

    MERGE INTO fmp_file a
    USING (
        SELECT file_id,
               LEVEL AS new_level
          FROM fmp_file
         START WITH file_id = v_target_root_id
        CONNECT BY PRIOR file_id = parent_folder_id
               AND NVL(del_flag, 0) = 0
               AND tenant_id = p_user_tenant
               AND (p_system_id IS NULL OR system_id = p_system_id)
    ) b
       ON (a.file_id = b.file_id)
     WHEN MATCHED THEN
        UPDATE
           SET a.file_level = b.new_level,
               a.updated_by = p_mpf_user_id,
               a.update_date = SYSDATE;

    MERGE INTO fmp_file a
    USING (
        WITH file_paths (file_id, file_level, file_name, full_path) AS (
            SELECT file_id,
                   file_level,
                   file_name,
                   CAST(NULL AS VARCHAR2(4000)) AS full_path
              FROM fmp_file
             WHERE file_id = v_target_root_id
               AND NVL(del_flag, 0) = 0
               AND tenant_id = p_user_tenant
               AND (p_system_id IS NULL OR system_id = p_system_id)
            UNION ALL
            SELECT child.file_id,
                   child.file_level,
                   child.file_name,
                   CASE
                       WHEN parent.file_level = 1 THEN parent.file_name
                       WHEN parent.full_path IS NOT NULL THEN parent.full_path || '/' || parent.file_name
                       ELSE parent.file_name
                   END AS full_path
              FROM fmp_file child
              JOIN file_paths parent
                ON child.parent_folder_id = parent.file_id
             WHERE NVL(child.del_flag, 0) = 0
               AND child.tenant_id = p_user_tenant
               AND (p_system_id IS NULL OR child.system_id = p_system_id)
        )
        SELECT file_id,
               CASE WHEN file_level = 1 THEN NULL ELSE full_path END AS new_file_path
          FROM file_paths
    ) b
       ON (a.file_id = b.file_id)
     WHEN MATCHED THEN
        UPDATE
           SET a.file_path = b.new_file_path,
               a.updated_by = p_mpf_user_id,
               a.update_date = SYSDATE;

    FOR i IN 1 .. v_file_infos.COUNT LOOP
        DELETE FROM fmp_scope
         WHERE reference_id = v_file_infos(i).file_id
           AND reference_type = 'FILE';

        INSERT INTO fmp_scope (
            reference_id,
            reference_type,
            entity_type,
            user_id,
            source_user_id,
            permissions_type,
            created_by,
            creation_date,
            updated_by,
            update_date,
            range_type,
            range_id,
            is_inherit_permission
        )
        SELECT v_file_infos(i).file_id,
               reference_type,
               NVL(entity_type, 'USER'),
               user_id,
               source_user_id,
               permissions_type,
               p_mpf_user_id,
               SYSDATE,
               p_mpf_user_id,
               SYSDATE,
               range_type,
               range_id,
               NVL(is_inherit_permission, 1)
          FROM fmp_scope
         WHERE reference_type = 'FILE'
           AND reference_id = p_target_folder_id;
    END LOOP;

    SELECT COUNT(*)
      INTO p_processed_count
      FROM fmp_file
     WHERE file_id IN (SELECT column_value FROM TABLE(v_old_files))
       AND parent_folder_id = p_target_folder_id
       AND NVL(del_flag, 0) = 0
       AND tenant_id = p_user_tenant
       AND (p_system_id IS NULL OR system_id = p_system_id);

    p_success := 'Y';
    p_message := '文件转移操作完成！成功转移 ' || p_processed_count || ' 个文件';
    COMMIT;
EXCEPTION
    WHEN v_target_not_found THEN
        ROLLBACK;
        p_success := 'N';
        p_message := SQLERRM;
    WHEN OTHERS THEN
        ROLLBACK;
        p_success := 'N';
        p_message := '错误代码: ' || SQLCODE || ', 错误信息: ' || SQLERRM;
        write_log('文件转移失败: ' || p_message || CHR(10) || DBMS_UTILITY.format_error_backtrace);
        RAISE;
END fmp_transfer_files_to_folder_pro;
/
