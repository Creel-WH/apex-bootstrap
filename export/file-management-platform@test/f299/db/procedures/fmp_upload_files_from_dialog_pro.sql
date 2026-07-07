CREATE OR REPLACE PROCEDURE fmp_upload_files_from_dialog_pro(
    p_urls IN CLOB,
    p_names IN CLOB,
    p_types IN CLOB,
    p_quantity IN NUMBER,
    p_sizes IN CLOB,
    p_root_folder_id IN NUMBER,
    p_parent_folder_id IN NUMBER,
    p_user_tenant IN NUMBER,
    p_mpf_user_id IN NUMBER,
    p_dian_user_id IN VARCHAR2,
    p_upload_link IN VARCHAR2,
    p_app_key IN VARCHAR2,
    p_app_secret IN VARCHAR2,
    p_count OUT NUMBER
) AS
    v_url              VARCHAR2(1000);
    v_content_url      VARCHAR2(1000);
    v_file_version_tag VARCHAR2(100);
    v_name             VARCHAR2(1000);
    v_err_msg          VARCHAR2(2000);
    v_type             VARCHAR2(1000);
    v_size             NUMBER(20);
    v_code             VARCHAR2(2000);
    v_scope_type       VARCHAR2(100);
    v_file_path        VARCHAR2(4000);
    v_file_level       NUMBER(20);
    v_file_id          NUMBER(20);
    v_plans_file_type  VARCHAR2(500);
    v_plans_file_date  DATE;
    v_file_ids         VARCHAR2(2000) := '[';
    v_system_id        NUMBER(20);
    v_creator_range_id VARCHAR2(256);
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
           system_id
      INTO v_scope_type,
           v_file_path,
           v_file_level,
           v_system_id
      FROM fmp_file
     WHERE file_id = p_parent_folder_id;

    IF fmp_is_file_manager(
           p_parent_folder_id,
           p_user_tenant,
           TO_CHAR(p_mpf_user_id),
           p_dian_user_id,
           V('ROLE_CODE')
       ) = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'No manage permission on current folder.');
    END IF;

    SELECT plans_file_type
      INTO v_plans_file_type
      FROM fmp_file
     WHERE NVL(del_flag, 0) = 0
       AND tenant_id = p_user_tenant
       AND file_id = NVL(p_root_folder_id, p_parent_folder_id);

    v_content_url := REPLACE(p_upload_link, '/oss', '/apex/folder/text');

    FOR i IN 0 .. p_quantity LOOP
        v_url := ja_utils_pkg.substring_instr2(p_urls, ',', i, i + 1);
        v_name := ja_utils_pkg.substring_instr2(p_names, ',', i, i + 1);
        v_type := ja_utils_pkg.substring_instr2(p_types, ',', i, i + 1);
        v_size := ja_utils_pkg.substring_instr2(p_sizes, ',', i, i + 1);

        SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SSSS') || '-' || DBMS_RANDOM.STRING('A', 32)
          INTO v_file_version_tag
          FROM dual;

        IF v_url IN ('出现错误', '值错误', '数据没找到') OR
           v_name IN ('出现错误', '值错误', '数据没找到') OR
           v_type IN ('出现错误', '值错误', '数据没找到')
        THEN
            ROLLBACK;
            RETURN;
        END IF;

        IF v_plans_file_type = 'ONE_YEAR_LATER' THEN
            v_plans_file_date := ADD_MONTHS(SYSDATE, 12);
        ELSIF v_plans_file_type = 'TWO_YEAR_LATER' THEN
            v_plans_file_date := ADD_MONTHS(SYSDATE, 24);
        ELSIF v_plans_file_type = 'THREE_YEAR_LATER' THEN
            v_plans_file_date := ADD_MONTHS(SYSDATE, 36);
        ELSE
            v_plans_file_date := NULL;
        END IF;

        SELECT UTL_URL.UNESCAPE(url => v_name, url_charset => 'AL32UTF8')
          INTO v_name
          FROM dual;

        INSERT INTO fmp_file(
            file_name,
            root_folder_id,
            parent_folder_id,
            file_format,
            file_status,
            file_url,
            file_type,
            del_flag,
            tenant_id,
            created_by,
            creation_date,
            scope_type,
            file_size,
            file_version_tag,
            file_path,
            file_level,
            uploader_ding_id,
            upload_date,
            plans_file_type,
            plans_file_date,
            add_method,
            system_id
        )
        VALUES(
            v_name,
            DECODE(v_file_level, 1, p_parent_folder_id, p_root_folder_id),
            p_parent_folder_id,
            v_type,
            'NORMAL',
            v_url,
            'FILE',
            0,
            p_user_tenant,
            p_mpf_user_id,
            SYSDATE,
            v_scope_type,
            v_size,
            v_file_version_tag,
            v_file_path,
            v_file_level + 1,
            p_dian_user_id,
            SYSDATE,
            v_plans_file_type,
            v_plans_file_date,
            'UPLOAD',
            v_system_id
        )
        RETURNING file_id INTO v_file_id;

        v_file_ids := v_file_ids || v_file_id || ',';

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
        SELECT v_file_id,
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
               1
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
    END LOOP;

    COMMIT;

    v_file_ids := SUBSTR(v_file_ids, 1, LENGTH(v_file_ids) - 1) || ']';

    BEGIN
        IF v_content_url IS NOT NULL AND p_app_key IS NOT NULL AND p_app_secret IS NOT NULL THEN
            v_code := ja_http_request(v_content_url, 'POST', v_file_ids, p_app_key, p_app_secret);
        END IF;
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;

    p_count := 1;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        v_err_msg := SQLERRM || CHR(13) || DBMS_UTILITY.format_error_backtrace;
        ja_write_log('P136-新增文件', 'ERROR', v_err_msg, p_mpf_user_id, p_user_tenant, '文件管理平台', 299, 'FMP');
        p_count := -1;
END fmp_upload_files_from_dialog_pro;
/
