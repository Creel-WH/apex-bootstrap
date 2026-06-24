CREATE OR REPLACE EDITIONABLE PROCEDURE fmp_synchronize_accounts_delete_pro(
    p_range_type       IN VARCHAR2,
    p_range_id         IN VARCHAR2,
    p_sys_user_id      IN NUMBER,
    p_tenant_id        IN NUMBER,
    p_arg5             IN VARCHAR2,
    p_scope_id         IN NUMBER DEFAULT NULL
)
AS
BEGIN
    sts_synchronize_accounts_delete_pro(
        p_range_type,
        p_range_id,
        p_sys_user_id,
        p_tenant_id,
        COALESCE(p_scope_id, TO_NUMBER(p_arg5))
    );
END;
/
