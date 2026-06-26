set pagesize 200 linesize 340 feedback off verify off
select reference_id, permissions_type, range_type, range_id, user_id, source_user_id, entity_type
  from fmp_scope
 where reference_type = 'FILE'
   and reference_id in (select file_id from fmp_file where file_name = '1112' and nvl(del_flag,0)=0)
 order by reference_id, permissions_type, range_type, range_id;
