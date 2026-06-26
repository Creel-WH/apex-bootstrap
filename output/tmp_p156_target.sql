set pagesize 50 linesize 260 feedback off verify off
select file_id, file_name, parent_folder_id, root_folder_id, system_id
  from fmp_file
 where file_name = '组件市场解决方案部'
   and nvl(del_flag,0)=0
 order by file_id;
