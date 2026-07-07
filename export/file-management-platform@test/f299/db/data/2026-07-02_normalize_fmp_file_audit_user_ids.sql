prompt Normalize FMP_FILE audit user ids to MPF_USER_ID (FMP_USER.USER_ID)

update fmp_file f
   set created_by = (
       with map_candidates as (
           select tenant_id,
                  ext_user_id as old_id,
                  user_id as new_id
             from fmp_user
            where nvl(del_flag, 0) = 0
              and ext_user_id is not null
           union all
           select tenant_id,
                  union_id as old_id,
                  user_id as new_id
             from fmp_user
            where nvl(del_flag, 0) = 0
              and union_id is not null
       ),
       uniq_map as (
           select tenant_id,
                  old_id,
                  max(new_id) as new_id
             from map_candidates
            group by tenant_id, old_id
           having count(distinct new_id) = 1
       )
       select m.new_id
         from uniq_map m
        where m.tenant_id = f.tenant_id
          and m.old_id = to_char(f.created_by)
   )
 where exists (
       with map_candidates as (
           select tenant_id,
                  ext_user_id as old_id,
                  user_id as new_id
             from fmp_user
            where nvl(del_flag, 0) = 0
              and ext_user_id is not null
           union all
           select tenant_id,
                  union_id as old_id,
                  user_id as new_id
             from fmp_user
            where nvl(del_flag, 0) = 0
              and union_id is not null
       ),
       uniq_map as (
           select tenant_id,
                  old_id,
                  max(new_id) as new_id
             from map_candidates
            group by tenant_id, old_id
           having count(distinct new_id) = 1
       )
       select 1
         from uniq_map m
        where m.tenant_id = f.tenant_id
          and m.old_id = to_char(f.created_by)
          and f.created_by <> m.new_id
   );

update fmp_file f
   set updated_by = (
       with map_candidates as (
           select tenant_id,
                  ext_user_id as old_id,
                  user_id as new_id
             from fmp_user
            where nvl(del_flag, 0) = 0
              and ext_user_id is not null
           union all
           select tenant_id,
                  union_id as old_id,
                  user_id as new_id
             from fmp_user
            where nvl(del_flag, 0) = 0
              and union_id is not null
       ),
       uniq_map as (
           select tenant_id,
                  old_id,
                  max(new_id) as new_id
             from map_candidates
            group by tenant_id, old_id
           having count(distinct new_id) = 1
       )
       select m.new_id
         from uniq_map m
        where m.tenant_id = f.tenant_id
          and m.old_id = to_char(f.updated_by)
   )
 where exists (
       with map_candidates as (
           select tenant_id,
                  ext_user_id as old_id,
                  user_id as new_id
             from fmp_user
            where nvl(del_flag, 0) = 0
              and ext_user_id is not null
           union all
           select tenant_id,
                  union_id as old_id,
                  user_id as new_id
             from fmp_user
            where nvl(del_flag, 0) = 0
              and union_id is not null
       ),
       uniq_map as (
           select tenant_id,
                  old_id,
                  max(new_id) as new_id
             from map_candidates
            group by tenant_id, old_id
           having count(distinct new_id) = 1
       )
       select 1
         from uniq_map m
        where m.tenant_id = f.tenant_id
          and m.old_id = to_char(f.updated_by)
          and f.updated_by <> m.new_id
   );

commit;
