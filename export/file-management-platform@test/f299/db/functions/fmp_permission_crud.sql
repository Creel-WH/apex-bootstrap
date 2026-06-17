CREATE OR REPLACE EDITIONABLE FUNCTION fmp_permission_crud(
    p_action         IN VARCHAR2,
    p_role_id        IN NUMBER,
    p_permission_ids IN VARCHAR2,
    p_tenant_id      IN NUMBER,
    p_user_id        IN NUMBER
) RETURN VARCHAR2
AS
BEGIN
    RETURN sts_permission_crud(
        p_action,
        p_role_id,
        p_permission_ids,
        p_tenant_id,
        p_user_id
    );
END;
/
