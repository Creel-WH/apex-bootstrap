CREATE OR REPLACE EDITIONABLE FUNCTION fmp_is_system_manager(
    p_system_id   IN NUMBER,
    p_ding_user_id IN VARCHAR2,
    p_tenant_id   IN NUMBER
) RETURN BOOLEAN
AS
    v_count NUMBER := 0;
    v_mpf_user_id VARCHAR2(256) := V('MPF_USER_ID');
    v_user_id NUMBER;
    v_ext_user_id VARCHAR2(256);
BEGIN
    v_user_id := TO_NUMBER(NULLIF(V('USER_ID'), ''));

    BEGIN
        SELECT fu.ext_user_id
          INTO v_ext_user_id
          FROM fmp_user fu
         WHERE fu.tenant_id = p_tenant_id
           AND fu.user_id = v_user_id
           AND NVL(fu.del_flag, 0) = 0;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            v_ext_user_id := NULL;
    END;

    IF p_ding_user_id IS NULL
       AND v_mpf_user_id IS NULL
       AND v_ext_user_id IS NULL THEN
        RETURN FALSE;
    END IF;

    SELECT COUNT(1)
      INTO v_count
      FROM fmp_scope s
     WHERE s.reference_type = 'SYSTEM'
       AND TO_CHAR(s.reference_id) = TO_CHAR(NVL(p_system_id, 42))
       AND s.permissions_type = 'MANAGE'
       AND s.range_type = 'USER'
       AND (
            s.range_id = p_ding_user_id
            OR s.range_id = v_mpf_user_id
            OR s.range_id = v_ext_user_id
            OR EXISTS (
                SELECT 1
                  FROM basic_ja_ding_user u
                 WHERE u.user_id = p_ding_user_id
                   AND NVL(u.tenant_id, p_tenant_id) = p_tenant_id
                   AND u.union_id = s.range_id
            )
       );

    RETURN v_count > 0;
EXCEPTION
    WHEN OTHERS THEN
        RETURN FALSE;
END;
/
