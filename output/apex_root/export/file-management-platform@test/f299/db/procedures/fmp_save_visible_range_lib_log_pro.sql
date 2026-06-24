CREATE OR REPLACE EDITIONABLE PROCEDURE fmp_save_visible_range_lib_log_pro(
    p_permissions_type IN VARCHAR2,
    p_reference_id     IN NUMBER,
    p_user_ids_raw     IN CLOB,
    p_user_ids         IN VARCHAR2,
    p_dept_ids_raw     IN CLOB,
    p_dept_ids         IN VARCHAR2,
    p_user_id          IN NUMBER,
    p_tenant_id        IN NUMBER,
    p_page_id          IN NUMBER,
    p_sys_user_id      IN NUMBER,
    p_app_name         IN VARCHAR2,
    p_app_id           IN NUMBER,
    p_app_code         IN VARCHAR2
)
AS
BEGIN
    NULL;
END;
/
