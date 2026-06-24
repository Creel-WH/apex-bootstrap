CREATE OR REPLACE EDITIONABLE FUNCTION fmp_is_have_permission(
    p_user_id   IN VARCHAR2,
    p_page_id   IN NUMBER,
    p_role_id   IN VARCHAR2,
    p_tenant_id IN NUMBER,
    p_flag      IN NUMBER
) RETURN BOOLEAN
AS
BEGIN
    RETURN sts_is_have_permission(
        p_user_id,
        p_page_id,
        p_role_id,
        p_tenant_id,
        p_flag
    );
END;
/
