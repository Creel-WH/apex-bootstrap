CREATE OR REPLACE EDITIONABLE FUNCTION fmp_is_page_managed_visible(
    p_system_id IN NUMBER,
    p_tenant_id IN NUMBER,
    p_page_id   IN NUMBER
) RETURN BOOLEAN
AS
    v_has_config NUMBER := 0;
    v_visible    NUMBER := 0;
BEGIN
    SELECT COUNT(1)
      INTO v_has_config
     FROM fmp_page_config c
     WHERE c.system_id = NVL(p_system_id, 42)
       AND c.tenant_id = p_tenant_id
       AND NVL(c.del_flag, 0) = 0;

    IF v_has_config = 0 THEN
        RETURN p_page_id IN (1, 133, 150, 151, 152, 220, 221, 226, 230);
    END IF;

    SELECT COUNT(1)
      INTO v_visible
      FROM fmp_page_config c
     WHERE c.system_id = NVL(p_system_id, 42)
       AND c.tenant_id = p_tenant_id
       AND c.page_id = p_page_id
       AND NVL(c.del_flag, 0) = 0
       AND NVL(c.is_visible, 1) = 1;

    RETURN v_visible > 0;
EXCEPTION
    WHEN OTHERS THEN
        RETURN FALSE;
END;
/
