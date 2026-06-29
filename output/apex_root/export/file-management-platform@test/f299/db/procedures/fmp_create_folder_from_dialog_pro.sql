CREATE OR REPLACE PROCEDURE fmp_create_folder_from_dialog_pro(
    p_file_name IN VARCHAR2,
    p_parent_folder_id IN NUMBER,
    p_user_tenant IN NUMBER,
    p_mpf_user_id IN NUMBER,
    p_dian_user_id IN VARCHAR2,
    p_count OUT NUMBER
) AS
    v_err_msg             VARCHAR2(2000);
    v_scope_type          VARCHAR2(50);
    v_file_path           VARCHAR2(4000);
    v_file_id             NUMBER(20);
    v_file_level          NUMBER(20);
    v_root_folder_id      NUMBER(20);
    v_plans_file_type     VARCHAR2(50);
    v_creator_range_id    VARCHAR2(256);
    v_creator_scope_count NUMBER(20) := 0;
BEGIN
    p_count := -1;

    SELECT COALESCE(MAX(ext_user_id), NULLIF(TRIM(p_dian_user_id), ''), TO_CHAR(p_mpf_user_id))
      INTO v_creator_range_id
      FROM fmp_user
     WHERE tenant_id = p_user_tenant
       AND user_id = p_mpf_user_id
       AND NVL(del_flag, 0) = 0;

    SELECT scope_type,
           DECODE(file_path, NULL, file_name, file_path || '/' || file_name),
           file_level,
           root_folder_id,
           plans_file_type
      INTO v_scope_type,
           v_file_path,
           v_file_level,
           v_root_folder_id,
           v_plans_file_type
      FROM fmp_file
     WHERE file_id = p_parent_folder_id
       AND del_flag = 0
       AND tenant_id = p_user_tenant;

    IF fmp_is_file_manager(
           p_parent_folder_id,
           p_user_tenant,
           TO_CHAR(p_mpf_user_id),
           p_dian_user_id,
           V('ROLE_CODE')
       ) = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'No manage permission on current folder.');
    END IF;

    INSERT INTO fmp_file(
        file_name,
        root_folder_id,
        parent_folder_id,
        file_format,
        file_status,
        file_type,
        del_flag,
        tenant_id,
        created_by,
        creation_date,
        scope_type,
        file_path,
        file_level,
        add_method,
        plans_file_type
    )
    VALUES(
        p_file_name,
        DECODE(v_file_level, 1, p_parent_folder_id, v_root_folder_id),
        p_parent_folder_id,
        '文件夹',
        'NORMAL',
        'FOLDER',
        0,
        p_user_tenant,
        p_mpf_user_id,
        SYSDATE,
        v_scope_type,
        v_file_path,
        v_file_level + 1,
        'CREATE',
        v_plans_file_type
    )
    RETURNING file_id INTO v_file_id;

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
    SELECT v_file_id,
           reference_type,
           NVL(entity_type, 'USER'),
           user_id,
           source_user_id,
           permissions_type,
           role_id,
           p_mpf_user_id,
           SYSDATE,
           p_mpf_user_id,
           SYSDATE,
           range_type,
           range_id,
           NVL(is_inherit_permission, 1)
      FROM fmp_scope
     WHERE reference_type = 'FILE'
       AND reference_id = p_parent_folder_id;
    SELECT COUNT(1)
      INTO v_creator_scope_count
      FROM fmp_scope
     WHERE reference_type = 'FILE'
       AND reference_id = v_file_id
       AND range_type = 'USER'
       AND permissions_type = 'MANAGE'
       AND range_id IN (v_creator_range_id, NULLIF(TRIM(p_dian_user_id), ''), TO_CHAR(p_mpf_user_id));

    IF v_creator_scope_count = 0 THEN
        INSERT INTO fmp_scope(
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
        VALUES(
            v_file_id,
            'FILE',
            'USER',
            v_creator_range_id,
            v_creator_range_id,
            'MANAGE',
            p_mpf_user_id,
            SYSDATE,
            p_mpf_user_id,
            SYSDATE,
            'USER',
            v_creator_range_id,
            1
        );
    END IF;

    COMMIT;
    p_count := 1;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        v_err_msg := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;
        write_log('P134-新增文件库夹', 'ERROR', v_err_msg, p_mpf_user_id, p_user_tenant, '文件管理平台', 299, 'FMP');
        p_count := -1;
END fmp_create_folder_from_dialog_pro;
/
