select scope_id, reference_id, reference_type, range_type, range_id, user_id, source_user_id, permissions_type, entity_type
  from fmp_scope
 where reference_type = 'FILE'
   and reference_id in (571,17325)
 order by reference_id, permissions_type, range_type, range_id;
