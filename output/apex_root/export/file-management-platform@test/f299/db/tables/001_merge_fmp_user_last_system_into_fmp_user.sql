DECLARE
    v_col_count   NUMBER := 0;
    v_table_count NUMBER := 0;
BEGIN
    SELECT COUNT(1)
      INTO v_col_count
      FROM user_tab_cols
     WHERE table_name = 'FMP_USER'
       AND column_name = 'LAST_SYSTEM_ID';

    IF v_col_count = 0 THEN
        EXECUTE IMMEDIATE 'ALTER TABLE FMP_USER ADD (LAST_SYSTEM_ID NUMBER(20,0))';
    END IF;

    SELECT COUNT(1)
      INTO v_table_count
      FROM user_tables
     WHERE table_name = 'FMP_USER_LAST_SYSTEM';

    IF v_table_count = 1 THEN
        EXECUTE IMMEDIATE q'[
            MERGE INTO fmp_user t
            USING (
                SELECT tenant_id,
                       user_id,
                       system_id
                  FROM (
                        SELECT tenant_id,
                               user_id,
                               system_id,
                               ROW_NUMBER() OVER (
                                   PARTITION BY tenant_id, user_id
                                   ORDER BY update_date DESC, last_system_id DESC
                               ) AS rn
                          FROM fmp_user_last_system
                         WHERE NVL(del_flag, 0) = 0
                  )
                 WHERE rn = 1
            ) s
               ON (t.tenant_id = s.tenant_id AND t.user_id = s.user_id)
            WHEN MATCHED THEN
                UPDATE
                   SET t.last_system_id = s.system_id,
                       t.update_date = SYSDATE
        ]';

        EXECUTE IMMEDIATE 'DROP TABLE FMP_USER_LAST_SYSTEM PURGE';
    END IF;
END;
/
