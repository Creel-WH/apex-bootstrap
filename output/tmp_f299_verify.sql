select file_id, file_name, parent_folder_id, root_folder_id, file_level
  from fmp_file
 where file_id in (49757,49758,49759)
 order by file_id;

select reference_id, scope_type, scope_type_id
  from fmp_scope
 where reference_id in (49757,49758,49759)
 order by reference_id, scope_type, scope_type_id;
