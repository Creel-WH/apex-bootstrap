set pagesize 100 linesize 320 feedback off verify off
with fixed_scope as (
    select case
             when cast(sb.range_type as varchar2(20)) = 'USER' then coalesce(cast(fu.ext_user_id as varchar2(100)), to_char(bu.user_id), to_char(u.user_id), cast(sb.range_id as varchar2(200)))
             when cast(sb.range_type as varchar2(20)) = 'DEPT' then 'DEPT:' || cast(sb.range_id as varchar2(200))
             else cast(sb.range_type as varchar2(20)) || ':' || cast(sb.range_id as varchar2(200))
           end as collaborator_key,
           case
             when cast(sb.range_type as varchar2(20)) = 'USER' then coalesce(cast(u.name as varchar2(4000)), cast(bu.name as varchar2(4000)), cast(fu.user_name as varchar2(4000)), cast(sb.range_id as varchar2(200)))
             else cast(sb.range_id as varchar2(200))
           end as display_name,
           'fixed' as src
      from fmp_scope sb
      left join basic_ja_ding_user u
        on cast(sb.range_type as varchar2(20)) = 'USER'
       and to_char(u.user_id) = cast(sb.range_id as varchar2(200))
       and nvl(u.is_leave, 0) = 0
      left join basic_user bu
        on cast(sb.range_type as varchar2(20)) = 'USER'
       and nvl(bu.del_flag, 0) = 0
       and (cast(sb.range_id as varchar2(200)) = nvl(bu.union_id, to_char(bu.user_id))
            or cast(sb.range_id as varchar2(200)) = to_char(bu.user_id))
      left join fmp_user fu
        on cast(sb.range_type as varchar2(20)) = 'USER'
       and fu.tenant_id = 3
       and nvl(fu.del_flag, 0) = 0
       and (cast(sb.range_id as varchar2(200)) = fu.ext_user_id
            or cast(sb.range_id as varchar2(200)) = to_char(fu.user_id)
            or cast(sb.range_id as varchar2(200)) = fu.user_name
            or (u.name is not null and fu.user_name = u.name)
            or (bu.name is not null and fu.user_name = bu.name))
     where sb.reference_type = 'SYSTEM'
       and sb.reference_id = 42
       and sb.permissions_type = 'MANAGE'
), file_scope as (
    select case
             when cast(a.range_type as varchar2(20)) = 'USER' then coalesce(cast(fu.ext_user_id as varchar2(100)), to_char(bu.user_id), to_char(u.user_id), cast(a.range_id as varchar2(200)))
             when cast(a.range_type as varchar2(20)) = 'DEPT' then 'DEPT:' || cast(a.range_id as varchar2(200))
             else cast(a.range_type as varchar2(20)) || ':' || cast(a.range_id as varchar2(200))
           end as collaborator_key,
           case
             when cast(a.range_type as varchar2(20)) = 'USER' then coalesce(cast(u.name as varchar2(4000)), cast(bu.name as varchar2(4000)), cast(fu.user_name as varchar2(4000)), cast(a.range_id as varchar2(200)))
             else cast(a.range_id as varchar2(200))
           end as display_name,
           'file' as src
      from fmp_scope a
      left join basic_ja_ding_user u
        on cast(a.range_type as varchar2(20)) = 'USER'
       and to_char(u.user_id) = cast(a.range_id as varchar2(200))
       and nvl(u.is_leave, 0) = 0
      left join basic_user bu
        on cast(a.range_type as varchar2(20)) = 'USER'
       and nvl(bu.del_flag, 0) = 0
       and (cast(a.range_id as varchar2(200)) = nvl(bu.union_id, to_char(bu.user_id))
            or cast(a.range_id as varchar2(200)) = to_char(bu.user_id))
      left join fmp_user fu
        on cast(a.range_type as varchar2(20)) = 'USER'
       and fu.tenant_id = 3
       and nvl(fu.del_flag, 0) = 0
       and (cast(a.range_id as varchar2(200)) = fu.ext_user_id
            or cast(a.range_id as varchar2(200)) = to_char(fu.user_id)
            or cast(a.range_id as varchar2(200)) = fu.user_name
            or (u.name is not null and fu.user_name = u.name)
            or (bu.name is not null and fu.user_name = bu.name))
     where a.reference_type = 'FILE'
       and a.reference_id = 571
)
select collaborator_key, display_name, count(*) cnt, listagg(src, ',') within group(order by src) srcs
  from (select * from fixed_scope union all select * from file_scope)
 group by collaborator_key, display_name
 order by display_name, collaborator_key;
