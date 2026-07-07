DECLARE
    v_root_file_id NUMBER;
BEGIN
    FOR sys_rec IN (
        SELECT system_id
          FROM fmp_system
    ) LOOP
        SELECT MIN(file_id)
          INTO v_root_file_id
          FROM fmp_file
         WHERE system_id = sys_rec.system_id
           AND file_type = 'FOLDER'
           AND parent_folder_id IS NULL
           AND NVL(del_flag, 0) = 0;

        UPDATE fmp_system
           SET root_folder_file_id = v_root_file_id,
               update_date = SYSDATE
         WHERE system_id = sys_rec.system_id;
    END LOOP;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE;
END;
/
