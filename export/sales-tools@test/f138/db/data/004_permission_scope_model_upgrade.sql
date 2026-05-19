prompt -- db/data/004_permission_scope_model_upgrade.sql
DECLARE
    l_col_count NUMBER := 0;
BEGIN
    SELECT COUNT(1)
      INTO l_col_count
      FROM user_tab_columns
     WHERE table_name = 'STS_FOLDER_LIB'
       AND column_name = 'SYSTEM_ID';

    IF l_col_count = 0 THEN
        EXECUTE IMMEDIATE 'ALTER TABLE STS_FOLDER_LIB ADD (SYSTEM_ID NUMBER(20,0))';
    END IF;

    EXECUTE IMMEDIATE 'UPDATE STS_FOLDER_LIB SET SYSTEM_ID = 1 WHERE SYSTEM_ID IS NULL';
    COMMIT;
END;
/

MERGE INTO STS_SYS_CONFIG t
USING (
    SELECT c.tenant_id,
           x.config_type,
           x.config_code,
           x.config_name,
           x.sort_num
      FROM (
               SELECT DISTINCT tenant_id
                 FROM STS_ROLE
                WHERE tenant_id IS NOT NULL
               UNION
               SELECT DISTINCT tenant_id
                 FROM STS_SYS_CONFIG
                WHERE config_type = 35
                  AND tenant_id IS NOT NULL
           ) c
      CROSS JOIN (
               SELECT 35 AS config_type,
                      'SYSTEM_ADMIN' AS config_code,
                      unistr('\7CFB\7EDF\7BA1\7406\5458') AS config_name,
                      10 AS sort_num
                 FROM dual
               UNION ALL
               SELECT 35 AS config_type,
                      'BUSINESS_ADMIN' AS config_code,
                      unistr('\4E1A\52A1\7BA1\7406\5458') AS config_name,
                      20 AS sort_num
                 FROM dual
           ) x
) s
ON (
    t.config_type = s.config_type
    AND t.config_code = s.config_code
    AND t.tenant_id = s.tenant_id
)
WHEN MATCHED THEN
    UPDATE
       SET t.config_name = s.config_name,
           t.sort_num = s.sort_num,
           t.is_enable = 1,
           t.del_flag = 0,
           t.updated_by = -1,
           t.update_date = SYSDATE
WHEN NOT MATCHED THEN
    INSERT (
        config_type,
        config_name,
        config_code,
        sort_num,
        is_enable,
        remark,
        del_flag,
        tenant_id,
        created_by,
        creation_date,
        updated_by,
        update_date
    )
    VALUES (
        s.config_type,
        s.config_name,
        s.config_code,
        s.sort_num,
        1,
        'permission-scope-upgrade',
        0,
        s.tenant_id,
        -1,
        SYSDATE,
        -1,
        SYSDATE
    );

MERGE INTO STS_SYS_CONFIG t
USING (
    SELECT c.tenant_id,
           30 AS config_type,
           'SYSTEM' AS config_code,
           unistr('\4E1A\52A1\7CFB\7EDF\7C7B') AS config_name,
           2 AS sort_num
      FROM (
               SELECT DISTINCT tenant_id
                 FROM STS_ROLE
                WHERE tenant_id IS NOT NULL
               UNION
               SELECT DISTINCT tenant_id
                 FROM STS_SYS_CONFIG
                WHERE tenant_id IS NOT NULL
           ) c
) s
ON (
    t.config_type = s.config_type
    AND t.config_code = s.config_code
    AND t.tenant_id = s.tenant_id
)
WHEN MATCHED THEN
    UPDATE
       SET t.config_name = s.config_name,
           t.sort_num = s.sort_num,
           t.is_enable = 1,
           t.del_flag = 0,
           t.updated_by = -1,
           t.update_date = SYSDATE
WHEN NOT MATCHED THEN
    INSERT (
        config_type,
        config_name,
        config_code,
        sort_num,
        is_enable,
        remark,
        del_flag,
        tenant_id,
        created_by,
        creation_date,
        updated_by,
        update_date
    )
    VALUES (
        s.config_type,
        s.config_name,
        s.config_code,
        s.sort_num,
        1,
        'permission-scope-upgrade',
        0,
        s.tenant_id,
        -1,
        SYSDATE,
        -1,
        SYSDATE
    );

MERGE INTO STS_SYS_CONFIG t
USING (
    SELECT c.tenant_id,
           1 AS config_type,
           'MANAGE' AS config_code,
           unistr('\53EF\7BA1\7406') AS config_name,
           1 AS sort_num
      FROM (
               SELECT DISTINCT tenant_id
                 FROM STS_ROLE
                WHERE tenant_id IS NOT NULL
               UNION
               SELECT DISTINCT tenant_id
                 FROM STS_SYS_CONFIG
                WHERE tenant_id IS NOT NULL
           ) c
) s
ON (
    t.config_type = s.config_type
    AND t.config_code = s.config_code
    AND t.tenant_id = s.tenant_id
)
WHEN MATCHED THEN
    UPDATE
       SET t.config_name = s.config_name,
           t.sort_num = s.sort_num,
           t.is_enable = 1,
           t.del_flag = 0,
           t.updated_by = -1,
           t.update_date = SYSDATE
WHEN NOT MATCHED THEN
    INSERT (
        config_type,
        config_name,
        config_code,
        sort_num,
        is_enable,
        remark,
        del_flag,
        tenant_id,
        created_by,
        creation_date,
        updated_by,
        update_date
    )
    VALUES (
        s.config_type,
        s.config_name,
        s.config_code,
        s.sort_num,
        1,
        'permission-scope-upgrade',
        0,
        s.tenant_id,
        -1,
        SYSDATE,
        -1,
        SYSDATE
    );

DECLARE
BEGIN
    UPDATE STS_SYS_CONFIG
       SET del_flag = 1,
           is_enable = 0,
           updated_by = -1,
           update_date = SYSDATE
     WHERE config_type = 35
       AND NVL(del_flag, 0) = 0
       AND config_code NOT IN ('SYSTEM_ADMIN', 'BUSINESS_ADMIN');

    UPDATE STS_ROLE
       SET role_type = 'SYSTEM_ADMIN'
     WHERE NVL(del_flag, 0) = 0
       AND role_name = unistr('\7CFB\7EDF\7BA1\7406\5458');

    UPDATE STS_ROLE
       SET role_type = 'BUSINESS_ADMIN'
     WHERE NVL(del_flag, 0) = 0
       AND role_name = unistr('\4E1A\52A1\7BA1\7406\5458');

    MERGE INTO STS_ROLE t
    USING (
        SELECT tenant_list.tenant_id,
               x.role_name,
               x.role_type,
               x.role_level
          FROM (
                   SELECT DISTINCT tenant_id
                     FROM STS_ROLE
                    WHERE tenant_id IS NOT NULL
               ) tenant_list
          CROSS JOIN (
                   SELECT unistr('\7CFB\7EDF\7BA1\7406\5458') AS role_name,
                          'SYSTEM_ADMIN' AS role_type,
                          99 AS role_level
                     FROM dual
                   UNION ALL
                   SELECT unistr('\4E1A\52A1\7BA1\7406\5458') AS role_name,
                          'BUSINESS_ADMIN' AS role_type,
                          80 AS role_level
                     FROM dual
               ) x
     ) s
       ON (
           t.tenant_id = s.tenant_id
           AND t.role_type = s.role_type
           AND NVL(t.del_flag, 0) = 0
       )
    WHEN MATCHED THEN
        UPDATE
           SET t.role_name = s.role_name,
               t.role_level = s.role_level,
               t.is_enable = 1,
               t.updated_by = -1,
               t.update_date = SYSDATE
    WHEN NOT MATCHED THEN
        INSERT (
            role_name,
            role_type,
            role_level,
            default_role,
            is_enable,
            sort_num,
            tenant_id,
            remark,
            created_by,
            creation_date,
            updated_by,
            update_date,
            del_flag
        )
        VALUES (
            s.role_name,
            s.role_type,
            s.role_level,
            0,
            1,
            CASE WHEN s.role_type = 'SYSTEM_ADMIN' THEN 10 ELSE 20 END,
            s.tenant_id,
            'permission-scope-upgrade',
            -1,
            SYSDATE,
            -1,
            SYSDATE,
            0
        );

    UPDATE STS_ROLE
       SET del_flag = 1,
           is_enable = 0,
           updated_by = -1,
           update_date = SYSDATE
     WHERE NVL(del_flag, 0) = 0
       AND (
           NVL(role_type, '#') NOT IN ('SYSTEM_ADMIN', 'BUSINESS_ADMIN')
           OR role_name NOT IN (unistr('\7CFB\7EDF\7BA1\7406\5458'), unistr('\4E1A\52A1\7BA1\7406\5458'))
       );

    UPDATE STS_USER_ROLE ur
       SET del_flag = 1,
           is_enable = 0,
           updated_by = -1,
           update_date = SYSDATE
     WHERE NVL(ur.del_flag, 0) = 0
       AND EXISTS (
           SELECT 1
             FROM STS_ROLE r
            WHERE r.role_id = ur.role_id
              AND r.tenant_id = ur.tenant_id
              AND NVL(r.del_flag, 0) = 1
       );

    COMMIT;
END;
/
