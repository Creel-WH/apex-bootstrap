MERGE INTO fmp_scope target
USING (
    SELECT child.file_id AS target_file_id,
           NVL(parent_file.updated_by, parent_file.created_by) AS audit_user_id,
           parent_scope.entity_type,
           parent_scope.user_id,
           parent_scope.source_user_id,
           parent_scope.permissions_type,
           parent_scope.role_id,
           parent_scope.range_type,
           parent_scope.range_id,
           parent_scope.is_inherit_permission
      FROM fmp_file child
      JOIN fmp_file parent_file
        ON parent_file.file_id = child.parent_folder_id
       AND parent_file.tenant_id = child.tenant_id
       AND NVL(parent_file.del_flag, 0) = 0
      JOIN fmp_scope parent_scope
        ON parent_scope.reference_type = 'FILE'
       AND parent_scope.reference_id = parent_file.file_id
     WHERE child.file_type = 'FOLDER'
       AND NVL(child.file_level, 0) = 2
       AND NVL(child.del_flag, 0) = 0
       AND NOT EXISTS (
               SELECT 1
                 FROM fmp_scope existing_scope
                WHERE existing_scope.reference_type = 'FILE'
                  AND existing_scope.reference_id = child.file_id
           )
) source
ON (
    target.reference_type = 'FILE'
    AND target.reference_id = source.target_file_id
    AND target.range_type = source.range_type
    AND target.range_id = source.range_id
    AND target.permissions_type = source.permissions_type
)
WHEN NOT MATCHED THEN
    INSERT (
        reference_id,
        reference_type,
        entity_type,
        user_id,
        source_user_id,
        permissions_type,
        role_id,
        created_by,
        creation_date,
        updated_by,
        update_date,
        range_type,
        range_id,
        is_inherit_permission
    )
    VALUES (
        source.target_file_id,
        'FILE',
        NVL(source.entity_type, 'USER'),
        source.user_id,
        source.source_user_id,
        source.permissions_type,
        source.role_id,
        source.audit_user_id,
        SYSDATE,
        source.audit_user_id,
        SYSDATE,
        source.range_type,
        source.range_id,
        NVL(source.is_inherit_permission, 1)
    );

UPDATE fmp_file file_row
   SET is_permission_changes = 0,
       updated_by = NVL(updated_by, created_by),
       update_date = SYSDATE
 WHERE file_row.file_type = 'FOLDER'
   AND NVL(file_row.file_level, 0) = 2
   AND NVL(file_row.del_flag, 0) = 0
   AND EXISTS (
           SELECT 1
             FROM fmp_scope scope_row
            WHERE scope_row.reference_type = 'FILE'
              AND scope_row.reference_id = file_row.file_id
       );

COMMIT;
