set pagesize 100 linesize 320 feedback off verify off
select 'FMP_USER|'||to_char(user_id)||'|'||nvl(user_name,'<null>')||'|'||nvl(ext_user_id,'<null>')||'|'||nvl(union_id,'<null>') as row_text
  from fmp_user
 where ext_user_id in ('321285555352069','321289962598917','321297336390149','0108034802462359')
    or union_id in ('321285555352069','321289962598917','321297336390149','0108034802462359')
    or to_char(user_id) in ('321285555352069','321289962598917','321297336390149','0108034802462359');
select 'BASIC_USER|'||to_char(user_id)||'|'||nvl(name,'<null>')||'|'||nvl(union_id,'<null>') as row_text
  from basic_user
 where nvl(del_flag,0)=0
   and (union_id in ('321285555352069','321289962598917','321297336390149','0108034802462359')
    or to_char(user_id) in ('321285555352069','321289962598917','321297336390149','0108034802462359'));
select 'DING_USER|'||to_char(user_id)||'|'||nvl(name,'<null>') as row_text
  from basic_ja_ding_user
 where to_char(user_id) in ('321285555352069','321289962598917','321297336390149','0108034802462359');
