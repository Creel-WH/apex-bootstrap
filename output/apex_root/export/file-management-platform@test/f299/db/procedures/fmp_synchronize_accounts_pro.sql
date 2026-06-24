CREATE OR REPLACE EDITIONABLE PROCEDURE fmp_synchronize_accounts_pro(
    p_range_type      IN VARCHAR2,
    p_range_id        IN VARCHAR2,
    p_sys_user_id     IN NUMBER,
    p_tenant_id       IN NUMBER,
    p_reference_type  IN VARCHAR2 DEFAULT NULL
)
AS
BEGIN
    sts_synchronize_accounts_pro(
        p_range_type,
        p_range_id,
        p_sys_user_id,
        p_tenant_id
    );
END;
/
