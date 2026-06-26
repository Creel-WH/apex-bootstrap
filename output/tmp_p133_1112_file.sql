set pagesize 100 linesize 320 feedback off verify off
select file_id, file_name, parent_folder_id, root_folder_id, file_level, created_by
  from fmp_file
 where file_name = '1112'
   and nvl(del_flag,0)=0
 order by file_id;
