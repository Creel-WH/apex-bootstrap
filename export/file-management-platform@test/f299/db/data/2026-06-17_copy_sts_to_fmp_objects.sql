PROMPT Copy STS data into FMP tables for f299
DECLARE
    PROCEDURE copy_table(
        p_target_table IN VARCHAR2,
        p_source_table IN VARCHAR2
    ) IS
        l_columns VARCHAR2(32767);
    BEGIN
        SELECT LISTAGG(column_name, ',') WITHIN GROUP (ORDER BY column_id)
          INTO l_columns
          FROM user_tab_columns
         WHERE table_name = p_target_table
           AND column_name IN (
               SELECT column_name
                 FROM user_tab_columns
                WHERE table_name = p_source_table
           );

        EXECUTE IMMEDIATE 'DELETE FROM ' || p_target_table;
        EXECUTE IMMEDIATE
            'INSERT INTO ' || p_target_table || ' (' || l_columns || ') ' ||
            'SELECT ' || l_columns || ' FROM ' || p_source_table;
    END;
BEGIN
    copy_table('FMP_SYSTEM', 'STS_SYSTEM');
    copy_table('FMP_ROLE', 'STS_ROLE');
    copy_table('FMP_USER', 'STS_USER');
    copy_table('FMP_SYS_CONFIG', 'STS_SYS_CONFIG');
    copy_table('FMP_OPERATION_LOG', 'STS_OPERATION_LOG');
    copy_table('FMP_FOLDER_CLASS', 'STS_FOLDER_CLASS');
    copy_table('FMP_FOLDER_LIB', 'STS_FOLDER_LIB');
    copy_table('FMP_FOLDER', 'STS_FOLDER');
    copy_table('FMP_FILE', 'STS_FILE');
    copy_table('FMP_SCOPE', 'STS_SCOPE');
    copy_table('FMP_USER_ROLE', 'STS_USER_ROLE');
    copy_table('FMP_PERMISSION', 'STS_PERMISSION');
    copy_table('FMP_ROLE_PERMISSION', 'STS_ROLE_PERMISSION');
    COMMIT;
END;
/
