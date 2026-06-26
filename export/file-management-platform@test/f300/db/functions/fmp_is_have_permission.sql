CREATE OR REPLACE EDITIONABLE FUNCTION fmp_is_have_permission(
    p_user_id   IN VARCHAR2,
    p_page_id   IN NUMBER,
    p_role_id   IN VARCHAR2,
    p_tenant_id IN NUMBER,
    p_flag      IN NUMBER
) RETURN BOOLEAN
AS
    v_is_have NUMBER(10);
BEGIN
    SELECT COUNT(conf.page_id)
      INTO v_is_have
      FROM fmp_user_role ru
      LEFT JOIN fmp_role_permission p
        ON p.role_id = ru.role_id
       AND p.tenant_id = ru.tenant_id
       AND p.role_id = TO_NUMBER(p_role_id)
      LEFT JOIN fmp_permission conf
        ON conf.permission_id = p.permission_id
       AND conf.tenant_id = p.tenant_id
       AND conf.del_flag = 0
       AND conf.permission_type = p_flag
     WHERE ru.tenant_id = p_tenant_id
       AND ru.user_id = TO_NUMBER(p_user_id)
       AND conf.page_id = p_page_id;

    RETURN v_is_have > 0;
EXCEPTION
    WHEN OTHERS THEN
        RETURN FALSE;
END;
/
