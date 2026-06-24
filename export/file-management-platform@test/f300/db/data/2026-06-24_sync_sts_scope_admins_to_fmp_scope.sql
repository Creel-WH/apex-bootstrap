PROMPT Sync missing platform admin scope rows from STS_SCOPE to FMP_SCOPE

INSERT INTO fmp_scope (
    reference_id,
    reference_type,
    user_id,
    source_user_id,
    permissions_type,
    role_id,
    created_by,
    creation_date,
    updated_by,
    update_date,
    range_type,
    range_id
)
SELECT sc.reference_id,
       sc.reference_type,
       sc.user_id,
       sc.source_user_id,
       sc.permissions_type,
       sc.role_id,
       NVL(sc.created_by, sc.user_id),
       NVL(sc.creation_date, SYSDATE),
       NVL(sc.updated_by, sc.user_id),
       NVL(sc.update_date, NVL(sc.creation_date, SYSDATE)),
       sc.range_type,
       sc.range_id
  FROM sts_scope sc
 WHERE sc.reference_type = 'SYSTEM'
   AND sc.permissions_type = 'MANAGE'
   AND sc.range_type = 'USER'
   AND EXISTS (
           SELECT 1
             FROM fmp_system fs
            WHERE fs.system_id = sc.reference_id
              AND NVL(fs.del_flag, 0) = 0
       )
   AND NOT EXISTS (
           SELECT 1
             FROM fmp_scope fc
            WHERE fc.reference_id = sc.reference_id
              AND fc.reference_type = sc.reference_type
              AND fc.permissions_type = sc.permissions_type
              AND fc.range_type = sc.range_type
              AND fc.range_id = sc.range_id
       );

COMMIT;
