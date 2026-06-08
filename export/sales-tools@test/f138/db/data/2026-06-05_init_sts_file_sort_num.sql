-- One-time initialization: assign sequential SORT_NUM to all existing STS_FILE records.
-- Groups siblings within each (tenant_id, root_folder_id, parent_folder_id) partition,
-- ordered by creation_date then file_id — matching the TRG_STS_FILE_SORT_NUM logic.
-- Only non-deleted records (DEL_FLAG = 0) are numbered.

MERGE INTO STS_FILE T
USING (
  SELECT ROWID RID,
         ROW_NUMBER() OVER (
           PARTITION BY TENANT_ID,
                        NVL(ROOT_FOLDER_ID, 0),
                        NVL(PARENT_FOLDER_ID, 0)
           ORDER BY NVL(CREATION_DATE, DATE '1970-01-01'), FILE_ID
         ) NEW_SORT
    FROM STS_FILE
   WHERE NVL(DEL_FLAG, 0) = 0
) S
ON (T.ROWID = S.RID)
WHEN MATCHED THEN
  UPDATE SET T.SORT_NUM = S.NEW_SORT;

COMMIT;