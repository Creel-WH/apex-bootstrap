CREATE OR REPLACE EDITIONABLE FUNCTION fmp_operation_log_common_fun(
    p_module_code    IN VARCHAR2,
    p_operation_code IN VARCHAR2,
    p_behavior_code  IN VARCHAR2,
    p_entity_id      IN NUMBER,
    p_extra_params   IN CLOB,
    p_app_id         IN NUMBER,
    p_tenant_id      IN NUMBER,
    p_sys_user_id    IN NUMBER
) RETURN VARCHAR2
AS
BEGIN
    RETURN sts_operation_log_common_fun(
        p_module_code    => p_module_code,
        p_operation_code => p_operation_code,
        p_behavior_code  => p_behavior_code,
        p_entity_id      => p_entity_id,
        p_extra_params   => p_extra_params,
        p_app_id         => p_app_id,
        p_tenant_id      => p_tenant_id,
        p_sys_user_id    => p_sys_user_id
    );
END;
/
