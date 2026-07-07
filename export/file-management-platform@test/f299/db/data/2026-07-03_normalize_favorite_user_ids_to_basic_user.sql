MERGE INTO fmp_favorite_group g
USING (
    SELECT g.rowid AS rid,
           TO_CHAR(bu.user_id) AS target_user_id
      FROM fmp_favorite_group g
      JOIN basic_ja_ding_user bd
        ON TO_CHAR(bd.user_id) = TO_CHAR(g.user_id)
       AND NVL(bd.is_leave, 0) = 0
      JOIN basic_user bu
        ON UPPER(bu.job_number) = UPPER(bd.job_number)
       AND NVL(bu.del_flag, 0) = 0
       AND NVL(bu.is_leave, 0) = 0
       AND NVL(bu.tenant_id, 3) = NVL(bd.tenant_id, 3)
     WHERE TO_CHAR(g.user_id) <> TO_CHAR(bu.user_id)
) src
ON (g.rowid = src.rid)
WHEN MATCHED THEN
    UPDATE SET g.user_id = src.target_user_id;

MERGE INTO fmp_favorite_file f
USING (
    SELECT f.rowid AS rid,
           TO_CHAR(bu.user_id) AS target_user_id
      FROM fmp_favorite_file f
      JOIN basic_ja_ding_user bd
        ON TO_CHAR(bd.user_id) = TO_CHAR(f.user_id)
       AND NVL(bd.is_leave, 0) = 0
      JOIN basic_user bu
        ON UPPER(bu.job_number) = UPPER(bd.job_number)
       AND NVL(bu.del_flag, 0) = 0
       AND NVL(bu.is_leave, 0) = 0
       AND NVL(bu.tenant_id, 3) = NVL(bd.tenant_id, 3)
     WHERE TO_CHAR(f.user_id) <> TO_CHAR(bu.user_id)
) src
ON (f.rowid = src.rid)
WHEN MATCHED THEN
    UPDATE SET f.user_id = src.target_user_id;
