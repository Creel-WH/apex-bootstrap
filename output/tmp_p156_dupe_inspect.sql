with fixed_scope as (
    select 'FIXED' src,
           cast(sb.range_type as varchar2(20)) as range_type,
           cast(sb.range_id as varchar2(200)) as range_id,
           coalesce(cast(u.name as varchar2(4000)), cast(bu.name as varchar2(4000)), cast(sb.range_id as varchar2(200))) as display_name,
           coalesce(to_char(bu.user_id), to_char(u.user_id), cast(sb.range_id as varchar2(200))) as user_key
      from fmp_scope sb
      join fmp_system s on s.system_id = sb.reference_id and nvl(s.del_flag,0)=0 and nvl(s.is_enable,1)=1
      left join basic_ja_ding_user u on cast(sb.range_type as varchar2(20))='USER' and to_char(u.user_id)=cast(sb.range_id as varchar2(200)) and nvl(u.is_leave,0)=0
      left join basic_user bu on cast(sb.range_type as varchar2(20))='USER' and nvl(bu.del_flag,0)=0 and (cast(sb.range_id as varchar2(200)) = nvl(bu.union_id, to_char(bu.user_id)) or cast(sb.range_id as varchar2(200)) = to_char(bu.user_id))
     where cast(sb.reference_type as varchar2(20))='SYSTEM'
       and sb.reference_id = 42
       and cast(sb.permissions_type as varchar2(20))='MANAGE'
), file_scope as (
    select 'FILE' src,
           cast(a.range_type as varchar2(20)) as range_type,
           cast(a.range_id as varchar2(200)) as range_id,
           coalesce(cast(u.name as varchar2(4000)), cast(bu.name as varchar2(4000)), cast(a.range_id as varchar2(200))) as display_name,
           coalesce(to_char(bu.user_id), to_char(u.user_id), cast(a.range_id as varchar2(200))) as user_key
      from fmp_scope a
      left join basic_ja_ding_user u on cast(a.range_type as varchar2(20))='USER' and to_char(u.user_id)=cast(a.range_id as varchar2(200)) and nvl(u.is_leave,0)=0
      left join basic_user bu on cast(a.range_type as varchar2(20))='USER' and nvl(bu.del_flag,0)=0 and (cast(a.range_id as varchar2(200)) = nvl(bu.union_id, to_char(bu.user_id)) or cast(a.range_id as varchar2(200)) = to_char(bu.user_id))
     where cast(a.reference_type as varchar2(20))='FILE'
       and a.reference_id = 571
)
select * from fixed_scope
union all
select * from file_scope
order by display_name, src;
