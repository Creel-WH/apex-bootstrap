select file_id, file_name, system_id, parent_folder_id, root_folder_id, created_by
  from fmp_file
 where file_id = 571;

select scope_id, reference_id, reference_type, range_type, range_id, user_id, source_user_id, permissions_type, entity_type
  from fmp_scope
 where reference_type = 'SYSTEM'
   and reference_id = 42
   and permissions_type = 'MANAGE'
 order by range_type, range_id;
