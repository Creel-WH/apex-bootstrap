CREATE OR REPLACE EDITIONABLE FUNCTION fmp_is_file_manager(
    p_file_id      IN NUMBER,
    p_user_tenant  IN NUMBER,
    p_mpf_user_id  IN VARCHAR2,
    p_dian_user_id IN VARCHAR2,
    p_role_code    IN VARCHAR2
) RETURN NUMBER
AS
    v_effective_file_id NUMBER;
    v_mpf_user_id_num   NUMBER;
    v_ext_user_id       VARCHAR2(256);
    v_union_id          VARCHAR2(256);
BEGIN
    IF p_file_id IS NULL THEN
        RETURN 0;
    END IF;

    IF p_role_code IN ('SYSTEM_ADMIN', 'SUPER_ADMIN') THEN
        RETURN 1;
    END IF;

    IF REGEXP_LIKE(TRIM(p_mpf_user_id), '^\d+$') THEN
        v_mpf_user_id_num := TO_NUMBER(TRIM(p_mpf_user_id));
    END IF;

    IF v_mpf_user_id_num IS NOT NULL THEN
        SELECT MAX(ext_user_id)
          INTO v_ext_user_id
          FROM fmp_user
         WHERE tenant_id = p_user_tenant
           AND user_id = v_mpf_user_id_num
           AND NVL(del_flag, 0) = 0;
    END IF;

    SELECT MAX(union_id)
      INTO v_union_id
      FROM basic_ja_ding_user
     WHERE TO_CHAR(user_id) = TO_CHAR(p_dian_user_id)
       AND NVL(tenant_id, p_user_tenant) = p_user_tenant
       AND NVL(is_leave, 0) = 0;

    SELECT file_id
      INTO v_effective_file_id
      FROM (
            SELECT a.file_id,
                   a.lvl,
                   CASE
                       WHEN a.lvl = 1 AND NVL(a.is_permission_changes, 0) = 1 THEN 1
                       WHEN EXISTS (
                                SELECT 1
                                  FROM fmp_scope s
                                 WHERE s.reference_type = 'FILE'
                                   AND s.reference_id = a.file_id
                            ) THEN 1
                       ELSE 0
                   END AS is_effective
              FROM (
                    SELECT file_id,
                           parent_folder_id,
                           is_permission_changes,
                           LEVEL AS lvl
                      FROM fmp_file
                     WHERE tenant_id = p_user_tenant
                       AND NVL(del_flag, 0) = 0
                     START WITH file_id = p_file_id
                   CONNECT BY PRIOR parent_folder_id = file_id
                         AND tenant_id = p_user_tenant
                         AND NVL(del_flag, 0) = 0
                   ) a
             ORDER BY a.lvl
           )
     WHERE is_effective = 1
       AND ROWNUM = 1;

    IF v_effective_file_id IS NULL THEN
        v_effective_file_id := p_file_id;
    END IF;

    FOR rec IN (
        SELECT 1
          FROM fmp_scope s
         WHERE s.reference_type = 'FILE'
           AND s.reference_id = v_effective_file_id
           AND s.permissions_type = 'MANAGE'
           AND (
                (
                    s.range_type = 'USER'
                    AND s.range_id IN (
                        NULLIF(TRIM(p_dian_user_id), ''),
                        NULLIF(TRIM(p_mpf_user_id), ''),
                        v_ext_user_id,
                        v_union_id
                    )
                )
                OR (
                    s.range_type = 'DEPT'
                    AND EXISTS (
                        SELECT 1
                          FROM basic_ja_ding_dept_user du
                         WHERE TO_CHAR(du.dept_id) = s.range_id
                           AND TO_CHAR(du.user_id) = TO_CHAR(p_dian_user_id)
                    )
                )
           )
           AND ROWNUM = 1
    ) LOOP
        RETURN 1;
    END LOOP;

    RETURN 0;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RAISE;
END fmp_is_file_manager;
/
