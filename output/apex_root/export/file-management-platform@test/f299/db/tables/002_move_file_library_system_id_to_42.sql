BEGIN
    UPDATE fmp_file
       SET system_id = 42
     WHERE NVL(del_flag, 0) = 0
       AND system_id = 1;

    UPDATE sts_file
       SET system_id = 42
     WHERE NVL(del_flag, 0) = 0
       AND system_id = 1;

    UPDATE sts_folder
       SET system_id = 42
     WHERE NVL(del_flag, 0) = 0
       AND system_id = 1;

    UPDATE sts_folder_lib
       SET system_id = 42
     WHERE NVL(del_flag, 0) = 0
       AND system_id = 1;
END;
/
