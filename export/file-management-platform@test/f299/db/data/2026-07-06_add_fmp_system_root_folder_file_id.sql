DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
      INTO v_count
      FROM user_tab_columns
     WHERE table_name = 'FMP_SYSTEM'
       AND column_name = 'ROOT_FOLDER_FILE_ID';

    IF v_count = 0 THEN
        EXECUTE IMMEDIATE 'alter table fmp_system add (root_folder_file_id number(20,0))';
    END IF;
END;
/
