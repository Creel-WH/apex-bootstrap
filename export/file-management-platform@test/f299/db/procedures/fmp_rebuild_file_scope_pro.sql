CREATE OR REPLACE PROCEDURE fmp_rebuild_file_scope_pro(
    p_file_id                          IN NUMBER,
    p_user_tenant                      IN NUMBER,
    p_mpf_user_id                      IN NUMBER,
    p_dian_user_id                     IN VARCHAR2,
    p_scope_type                       IN VARCHAR2 DEFAULT NULL,
    p_payload                          IN CLOB DEFAULT NULL,
    p_reset_to_parent                  IN NUMBER DEFAULT 0,
    p_sync_descendants                 IN NUMBER DEFAULT 1,
    p_use_parent_fallback_if_empty     IN NUMBER DEFAULT 0
) AS
    v_actor_source_user_id VARCHAR2(256) := COALESCE(NULLIF(TRIM(p_dian_user_id), ''), TO_CHAR(p_mpf_user_id));
    v_err_msg              VARCHAR2(4000);
    v_empty_payload        CLOB := TO_CLOB('{"collaborators":[]}');
    v_new_restricted       NUMBER := 0;

    FUNCTION build_scope_payload(p_source_file_id IN NUMBER) RETURN CLOB IS
        v_payload CLOB;
    BEGIN
        IF p_source_file_id IS NULL THEN
            RETURN v_empty_payload;
        END IF;

        SELECT CASE
                   WHEN COUNT(*) = 0 THEN v_empty_payload
                   ELSE json_object(
                            'collaborators' VALUE json_arrayagg(
                                json_object(
                                    'type' VALUE range_type,
                                    'id'   VALUE range_id,
                                    'role' VALUE CASE permission_rank
                                                   WHEN 3 THEN 'manage'
                                                   WHEN 2 THEN 'download'
                                                   ELSE 'view'
                                               END
                                    RETURNING CLOB
                                )
                                RETURNING CLOB
                            )
                            RETURNING CLOB
                        )
               END
          INTO v_payload
          FROM (
                SELECT upper(CAST(NVL(range_type, 'USER') AS VARCHAR2(20))) AS range_type,
                       CAST(range_id AS VARCHAR2(256)) AS range_id,
                       MAX(
                           CASE CAST(permissions_type AS VARCHAR2(20))
                               WHEN 'MANAGE' THEN 3
                               WHEN 'VIEW_DOWN' THEN 2
                               ELSE 1
                           END
                       ) AS permission_rank
                  FROM fmp_scope
                 WHERE reference_type = 'FILE'
                   AND reference_id = p_source_file_id
                 GROUP BY upper(CAST(NVL(range_type, 'USER') AS VARCHAR2(20))),
                          CAST(range_id AS VARCHAR2(256))
               );

        RETURN NVL(v_payload, v_empty_payload);
    END build_scope_payload;

    FUNCTION payload_has_rows(p_payload_clob IN CLOB) RETURN NUMBER IS
        v_count NUMBER := 0;
    BEGIN
        SELECT COUNT(*)
          INTO v_count
          FROM json_table(
                   CASE
                       WHEN p_payload_clob IS NOT NULL THEN p_payload_clob
                       ELSE v_empty_payload
                   END,
                   '$.collaborators[*]'
                   COLUMNS (
                       item_id VARCHAR2(200) PATH '$.id'
                   )
               );

        RETURN CASE WHEN v_count > 0 THEN 1 ELSE 0 END;
    EXCEPTION
        WHEN OTHERS THEN
            RETURN 0;
    END payload_has_rows;

    FUNCTION resolve_effective_file_id(p_start_file_id IN NUMBER) RETURN NUMBER IS
        v_cursor_file_id NUMBER := p_start_file_id;
        v_parent_id      NUMBER;
        v_scope_count    NUMBER;
    BEGIN
        WHILE v_cursor_file_id IS NOT NULL LOOP
            SELECT COUNT(*)
              INTO v_scope_count
              FROM fmp_scope
             WHERE reference_type = 'FILE'
               AND reference_id = v_cursor_file_id;

            IF v_scope_count > 0 THEN
                RETURN v_cursor_file_id;
            END IF;

            BEGIN
                SELECT parent_folder_id
                  INTO v_parent_id
                  FROM fmp_file
                 WHERE file_id = v_cursor_file_id
                   AND tenant_id = p_user_tenant
                   AND NVL(del_flag, 0) = 0;
            EXCEPTION
                WHEN NO_DATA_FOUND THEN
                    RETURN v_cursor_file_id;
            END;

            IF v_parent_id IS NULL THEN
                RETURN v_cursor_file_id;
            END IF;

            v_cursor_file_id := v_parent_id;
        END LOOP;

        RETURN p_start_file_id;
    END resolve_effective_file_id;

    PROCEDURE rebuild_single_file(
        p_target_file_id                  IN NUMBER,
        p_target_scope_type               IN VARCHAR2,
        p_target_payload                  IN CLOB,
        p_target_reset_to_parent          IN NUMBER,
        p_target_use_parent_fallback      IN NUMBER,
        p_new_restricted                  OUT NUMBER
    ) IS
        v_parent_id             NUMBER;
        v_file_level            NUMBER := 0;
        v_existing_restricted   NUMBER := 0;
        v_is_business_top_level NUMBER := 0;
        v_parent_effective_id   NUMBER;
        v_work_payload          CLOB;
    BEGIN
        SELECT parent_folder_id,
               NVL(file_level, 0),
               NVL(is_permission_changes, 0)
          INTO v_parent_id,
               v_file_level,
               v_existing_restricted
          FROM fmp_file
         WHERE file_id = p_target_file_id
           AND tenant_id = p_user_tenant
           AND NVL(del_flag, 0) = 0;

        v_is_business_top_level := CASE WHEN NVL(v_file_level, 0) <= 2 THEN 1 ELSE 0 END;

        IF v_is_business_top_level = 1 THEN
            v_work_payload := COALESCE(p_target_payload, build_scope_payload(p_target_file_id));

            UPDATE fmp_file
               SET scope_type = NVL(p_target_scope_type, scope_type),
                   is_permission_changes = 0,
                   updated_by = p_mpf_user_id,
                   update_date = SYSDATE
             WHERE file_id = p_target_file_id
               AND tenant_id = p_user_tenant
               AND NVL(del_flag, 0) = 0;

            DELETE FROM fmp_scope
             WHERE reference_type = 'FILE'
               AND reference_id = p_target_file_id;

            INSERT INTO fmp_scope (
                reference_id,
                reference_type,
                entity_type,
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
            WITH submitted_raw AS (
                SELECT upper(NVL(item_type, 'USER')) AS range_type,
                       item_id,
                       CASE role_name
                           WHEN 'manage' THEN 'MANAGE'
                           WHEN 'download' THEN 'VIEW_DOWN'
                           ELSE 'VIEW'
                       END AS permissions_type,
                       ROW_NUMBER() OVER (
                           PARTITION BY upper(NVL(item_type, 'USER')), item_id
                           ORDER BY CASE role_name
                                        WHEN 'manage' THEN 3
                                        WHEN 'download' THEN 2
                                        ELSE 1
                                    END DESC
                       ) AS rn
                  FROM json_table(
                           CASE
                               WHEN v_work_payload IS NOT NULL THEN v_work_payload
                               ELSE v_empty_payload
                           END,
                           '$.collaborators[*]'
                           COLUMNS (
                               item_type VARCHAR2(20)  PATH '$.type',
                               item_id   VARCHAR2(200) PATH '$.id',
                               role_name VARCHAR2(20)  PATH '$.role'
                           )
                       )
            )
            SELECT p_target_file_id,
                   'FILE',
                   'USER',
                   v_actor_source_user_id,
                   permissions_type,
                   p_mpf_user_id,
                   SYSDATE,
                   p_mpf_user_id,
                   SYSDATE,
                   range_type,
                   item_id,
                   0
              FROM submitted_raw
             WHERE rn = 1;

            p_new_restricted := 0;
            RETURN;
        END IF;

        v_parent_effective_id := resolve_effective_file_id(v_parent_id);

        IF p_target_reset_to_parent = 1 THEN
            v_work_payload := build_scope_payload(v_parent_effective_id);
        ELSE
            v_work_payload := COALESCE(p_target_payload, build_scope_payload(p_target_file_id));

            IF payload_has_rows(v_work_payload) = 0
               AND p_target_use_parent_fallback = 1
               AND v_existing_restricted = 0 THEN
                v_work_payload := build_scope_payload(v_parent_effective_id);
            END IF;
        END IF;

        SELECT CASE WHEN COUNT(*) > 0 THEN 1 ELSE 0 END
          INTO p_new_restricted
          FROM (
                WITH parent_scope AS (
                    SELECT upper(CAST(NVL(range_type, 'USER') AS VARCHAR2(20))) AS range_type,
                           CAST(range_id AS VARCHAR2(256)) AS range_id,
                           CAST(permissions_type AS VARCHAR2(20)) AS permissions_type
                      FROM fmp_scope
                     WHERE reference_type = 'FILE'
                       AND reference_id = v_parent_effective_id
                ),
                submitted_raw AS (
                    SELECT upper(NVL(item_type, 'USER')) AS range_type,
                           item_id,
                           CASE role_name
                               WHEN 'manage' THEN 'MANAGE'
                               WHEN 'download' THEN 'VIEW_DOWN'
                               ELSE 'VIEW'
                           END AS permissions_type,
                           ROW_NUMBER() OVER (
                               PARTITION BY upper(NVL(item_type, 'USER')), item_id
                               ORDER BY CASE role_name
                                            WHEN 'manage' THEN 3
                                            WHEN 'download' THEN 2
                                            ELSE 1
                                        END DESC
                           ) AS rn
                      FROM json_table(
                               CASE
                                   WHEN v_work_payload IS NOT NULL THEN v_work_payload
                                   ELSE v_empty_payload
                               END,
                               '$.collaborators[*]'
                               COLUMNS (
                                   item_type VARCHAR2(20)  PATH '$.type',
                                   item_id   VARCHAR2(200) PATH '$.id',
                                   role_name VARCHAR2(20)  PATH '$.role'
                               )
                           )
                ),
                submitted_scope AS (
                    SELECT range_type,
                           item_id AS range_id,
                           permissions_type
                      FROM submitted_raw
                     WHERE rn = 1
                ),
                resolved_scope AS (
                    SELECT COALESCE(s.range_type, p.range_type) AS range_type,
                           COALESCE(s.range_id, p.range_id) AS range_id,
                           p.permissions_type AS parent_permissions_type,
                           s.permissions_type AS submitted_permissions_type
                      FROM parent_scope p
                      FULL OUTER JOIN submitted_scope s
                        ON s.range_type = p.range_type
                       AND s.range_id = p.range_id
                )
                SELECT 1
                  FROM resolved_scope
                 WHERE parent_permissions_type IS NOT NULL
                   AND (
                       submitted_permissions_type IS NULL
                       OR CASE submitted_permissions_type
                              WHEN 'MANAGE' THEN 3
                              WHEN 'VIEW_DOWN' THEN 2
                              ELSE 1
                          END <
                          CASE parent_permissions_type
                              WHEN 'MANAGE' THEN 3
                              WHEN 'VIEW_DOWN' THEN 2
                              ELSE 1
                          END
                   )
               );

        UPDATE fmp_file
           SET scope_type = NVL(p_target_scope_type, scope_type),
               is_permission_changes = p_new_restricted,
               updated_by = p_mpf_user_id,
               update_date = SYSDATE
         WHERE file_id = p_target_file_id
           AND tenant_id = p_user_tenant
           AND NVL(del_flag, 0) = 0;

        DELETE FROM fmp_scope
         WHERE reference_type = 'FILE'
           AND reference_id = p_target_file_id;

        INSERT INTO fmp_scope (
            reference_id,
            reference_type,
            entity_type,
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
        WITH parent_scope AS (
            SELECT upper(CAST(NVL(range_type, 'USER') AS VARCHAR2(20))) AS range_type,
                   CAST(range_id AS VARCHAR2(256)) AS range_id,
                   CAST(permissions_type AS VARCHAR2(20)) AS permissions_type,
                   CAST(source_user_id AS VARCHAR2(256)) AS source_user_id
              FROM fmp_scope
             WHERE reference_type = 'FILE'
               AND reference_id = v_parent_effective_id
        ),
        submitted_raw AS (
            SELECT upper(NVL(item_type, 'USER')) AS range_type,
                   item_id,
                   CASE role_name
                       WHEN 'manage' THEN 'MANAGE'
                       WHEN 'download' THEN 'VIEW_DOWN'
                       ELSE 'VIEW'
                   END AS permissions_type,
                   ROW_NUMBER() OVER (
                       PARTITION BY upper(NVL(item_type, 'USER')), item_id
                       ORDER BY CASE role_name
                                    WHEN 'manage' THEN 3
                                    WHEN 'download' THEN 2
                                    ELSE 1
                                END DESC
                   ) AS rn
              FROM json_table(
                       CASE
                           WHEN v_work_payload IS NOT NULL THEN v_work_payload
                           ELSE v_empty_payload
                       END,
                       '$.collaborators[*]'
                       COLUMNS (
                           item_type VARCHAR2(20)  PATH '$.type',
                           item_id   VARCHAR2(200) PATH '$.id',
                           role_name VARCHAR2(20)  PATH '$.role'
                       )
                   )
        ),
        submitted_scope AS (
            SELECT range_type,
                   item_id AS range_id,
                   permissions_type
              FROM submitted_raw
             WHERE rn = 1
        ),
        resolved_scope AS (
            SELECT COALESCE(s.range_type, p.range_type) AS range_type,
                   COALESCE(s.range_id, p.range_id) AS range_id,
                   p.permissions_type AS parent_permissions_type,
                   p.source_user_id AS parent_source_user_id,
                   s.permissions_type AS submitted_permissions_type
              FROM parent_scope p
              FULL OUTER JOIN submitted_scope s
                ON s.range_type = p.range_type
               AND s.range_id = p.range_id
        )
        SELECT p_target_file_id,
               'FILE',
               'USER',
               CASE
                   WHEN parent_permissions_type IS NOT NULL
                        AND submitted_permissions_type = parent_permissions_type
                   THEN parent_source_user_id
                   ELSE v_actor_source_user_id
               END,
               submitted_permissions_type,
               p_mpf_user_id,
               SYSDATE,
               p_mpf_user_id,
               SYSDATE,
               range_type,
               range_id,
               CASE
                   WHEN parent_permissions_type IS NOT NULL
                        AND submitted_permissions_type = parent_permissions_type
                   THEN 1
                   ELSE 0
               END
          FROM resolved_scope
         WHERE submitted_permissions_type IS NOT NULL;
    END rebuild_single_file;

    PROCEDURE sync_child_scopes(
        p_parent_file_id    IN NUMBER,
        p_parent_scope_type IN VARCHAR2
    ) IS
        v_child_restricted NUMBER := 0;
    BEGIN
        FOR child IN (
            SELECT file_id,
                   NVL(is_permission_changes, 0) AS is_permission_changes
              FROM fmp_file
             WHERE parent_folder_id = p_parent_file_id
               AND tenant_id = p_user_tenant
               AND NVL(del_flag, 0) = 0
             ORDER BY file_id
        ) LOOP
            IF child.is_permission_changes = 0 THEN
                rebuild_single_file(
                    p_target_file_id             => child.file_id,
                    p_target_scope_type          => p_parent_scope_type,
                    p_target_payload             => NULL,
                    p_target_reset_to_parent     => 0,
                    p_target_use_parent_fallback => 1,
                    p_new_restricted             => v_child_restricted
                );

                IF v_child_restricted = 0 THEN
                    sync_child_scopes(child.file_id, p_parent_scope_type);
                END IF;
            END IF;
        END LOOP;
    END sync_child_scopes;

BEGIN
    rebuild_single_file(
        p_target_file_id             => p_file_id,
        p_target_scope_type          => p_scope_type,
        p_target_payload             => p_payload,
        p_target_reset_to_parent     => p_reset_to_parent,
        p_target_use_parent_fallback => p_use_parent_fallback_if_empty,
        p_new_restricted             => v_new_restricted
    );

    IF p_sync_descendants = 1 THEN
        sync_child_scopes(p_file_id, p_scope_type);
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        v_err_msg := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;
        ja_write_log(
            'fmp_rebuild_file_scope_pro',
            'ERROR',
            v_err_msg,
            p_mpf_user_id,
            p_user_tenant,
            '文件管理平台',
            299,
            'FMP'
        );
        RAISE;
END fmp_rebuild_file_scope_pro;
/
