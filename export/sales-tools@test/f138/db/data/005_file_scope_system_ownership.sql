prompt -- db/data/005_file_scope_system_ownership.sql
DECLARE
    l_col_count NUMBER := 0;
    l_sales_system_id NUMBER := 1;
BEGIN
    BEGIN
        SELECT system_id
          INTO l_sales_system_id
          FROM STS_SYSTEM
         WHERE system_name = unistr('\9500\552E\5DE5\5177\96C6')
           AND ROWNUM = 1;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            l_sales_system_id := 1;
    END;

    SELECT COUNT(1)
      INTO l_col_count
      FROM user_tab_columns
     WHERE table_name = 'STS_FOLDER'
       AND column_name = 'SYSTEM_ID';

    IF l_col_count = 0 THEN
        EXECUTE IMMEDIATE 'ALTER TABLE STS_FOLDER ADD (SYSTEM_ID NUMBER(20,0))';
    END IF;

    SELECT COUNT(1)
      INTO l_col_count
      FROM user_tab_columns
     WHERE table_name = 'STS_FILE'
       AND column_name = 'SYSTEM_ID';

    IF l_col_count = 0 THEN
        EXECUTE IMMEDIATE 'ALTER TABLE STS_FILE ADD (SYSTEM_ID NUMBER(20,0))';
    END IF;

    SELECT COUNT(1)
      INTO l_col_count
      FROM user_tab_columns
     WHERE table_name = 'STS_FOLDER_LIB'
       AND column_name = 'SYSTEM_ID';

    IF l_col_count = 0 THEN
        EXECUTE IMMEDIATE 'ALTER TABLE STS_FOLDER_LIB ADD (SYSTEM_ID NUMBER(20,0))';
    END IF;

    EXECUTE IMMEDIATE 'UPDATE STS_FOLDER_LIB SET SYSTEM_ID = :1' USING l_sales_system_id;
    EXECUTE IMMEDIATE 'UPDATE STS_FOLDER SET SYSTEM_ID = :1' USING l_sales_system_id;
    EXECUTE IMMEDIATE 'UPDATE STS_FILE SET SYSTEM_ID = :1' USING l_sales_system_id;

    COMMIT;
END;
/
