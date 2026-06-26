set pagesize 100 linesize 340 feedback off verify off
select to_char(user_id)||'|'||nvl(user_name,'<null>')||'|'||nvl(ext_user_id,'<null>') as row_text
  from fmp_user
 where tenant_id = 3
   and nvl(del_flag,0)=0
   and user_name in ('王家豪','李威豪','蒋照');
