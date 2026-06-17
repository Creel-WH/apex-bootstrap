CREATE OR REPLACE EDITIONABLE PROCEDURE fmp_pay_attention_to_file_updates(
    p_file_id        IN NUMBER,
    p_file_id_new    IN NUMBER,
    p_file_name_old  IN VARCHAR2,
    p_file_name_new  IN VARCHAR2,
    p_sys_user_id    IN NUMBER,
    p_tenant_id      IN NUMBER,
    p_app_id         IN NUMBER,
    p_app_name       IN VARCHAR2,
    p_app_code       IN VARCHAR2
)
AS
BEGIN
    sts_pay_attention_to_file_updates(
        p_file_id,
        p_file_id_new,
        p_file_name_old,
        p_file_name_new,
        p_sys_user_id,
        p_tenant_id,
        p_app_id,
        p_app_name,
        p_app_code
    );
END;
/
