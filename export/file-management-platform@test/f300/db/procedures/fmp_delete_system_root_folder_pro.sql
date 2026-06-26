CREATE OR REPLACE PROCEDURE fmp_delete_system_root_folder_pro(
    p_system_id   IN NUMBER,
    p_user_tenant IN NUMBER,
    p_mpf_user_id IN NUMBER
) AS
BEGIN
    IF p_system_id IS NULL THEN
        raise_application_error(-20001, 'SYSTEM_ID is required.');
    END IF;

    DELETE FROM fmp_scope
     WHERE reference_type = 'FILE'
       AND reference_id IN (
            SELECT file_id
              FROM fmp_file
             WHERE tenant_id = p_user_tenant
               AND system_id = p_system_id
               AND NVL(del_flag, 0) = 0
       );

    UPDATE fmp_file
       SET del_flag = 1,
           del_date = SYSDATE,
           updated_by = p_mpf_user_id,
           update_date = SYSDATE
     WHERE tenant_id = p_user_tenant
       AND system_id = p_system_id
       AND NVL(del_flag, 0) = 0;
END fmp_delete_system_root_folder_pro;
/
