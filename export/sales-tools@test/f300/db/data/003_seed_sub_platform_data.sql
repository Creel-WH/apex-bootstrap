prompt -- db/data/003_seed_sub_platform_data.sql
set define off
whenever sqlerror exit sql.sqlcode rollback
whenever oserror exit failure rollback

begin
    merge into sts_system t
    using (
        select 1 system_id, unistr('\9500\552E\5DE5\5177\96C6') system_name from dual
        union all
        select 2 system_id, unistr('\50A8\80FD\8D44\6599\5E93') system_name from dual
    ) s
       on (t.system_id = s.system_id)
    when matched then
        update
           set t.system_name = s.system_name,
               t.is_enable = 1,
               t.del_flag = 0,
               t.updated_by = -1,
               t.update_date = sysdate
    when not matched then
        insert (
            system_id,
            system_name,
            is_enable,
            del_flag,
            created_by,
            creation_date,
            updated_by,
            update_date
        ) values (
            s.system_id,
            s.system_name,
            1,
            0,
            -1,
            sysdate,
            -1,
            sysdate
        );

    commit;
end;
/
