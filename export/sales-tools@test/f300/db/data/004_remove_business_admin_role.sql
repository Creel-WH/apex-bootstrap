prompt -- db/data/004_remove_business_admin_role.sql
set define off
whenever sqlerror exit sql.sqlcode rollback
whenever oserror exit failure rollback

declare
begin
    update sts_scope s
       set s.role_id = null,
           s.updated_by = nvl(s.updated_by, -1),
           s.update_date = sysdate
     where exists (
               select 1
                 from sts_role r
                where r.role_id = s.role_id
                  and r.role_type = 'BUSINESS_ADMIN'
           );

    update sts_user_role ur
       set ur.del_flag = 1,
           ur.is_enable = 0,
           ur.updated_by = nvl(ur.updated_by, -1),
           ur.update_date = sysdate
     where exists (
               select 1
                 from sts_role r
                where r.role_id = ur.role_id
                  and r.role_type = 'BUSINESS_ADMIN'
           );

    update sts_role r
       set r.del_flag = 1,
           r.is_enable = 0,
           r.updated_by = nvl(r.updated_by, -1),
           r.update_date = sysdate
     where r.role_type = 'BUSINESS_ADMIN'
       and nvl(r.del_flag, 0) = 0;

    update sts_sys_config c
       set c.del_flag = 1,
           c.is_enable = 0,
           c.updated_by = nvl(c.updated_by, -1),
           c.update_date = sysdate
     where c.config_type = 35
       and c.config_code = 'BUSINESS_ADMIN'
       and nvl(c.del_flag, 0) = 0;

    commit;
end;
/
