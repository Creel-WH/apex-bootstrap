set pagesize 200 linesize 320 feedback off verify off
select reference_id, reference_type, permissions_type, range_type, range_id, user_id, source_user_id, entity_type
  from fmp_scope
 where reference_type in ('SYSTEM','FILE')
   and ((reference_type='SYSTEM' and reference_id=42 and permissions_type='MANAGE')
     or (reference_type='FILE' and reference_id in (select file_id from fmp_file where file_name = '组件市场解决方案部' and nvl(del_flag,0)=0)))
 order by reference_type, reference_id, permissions_type, range_type, range_id;
