prompt -- db/data/001_platform_admin_account.sql
declare
    l_admin_user_id      number;
    l_admin_ext_user_id  number;
    l_admin_ext_user_str varchar2(100);
    l_password           varchar2(64);

    function next_ext_user_id return number is
        l_next number;
    begin
        select nvl(max(to_number(ext_user_id)), 900000000000000) + 1
          into l_next
          from sts_user
         where regexp_like(ext_user_id, '^\d+$');

        return l_next;
    end;
begin
    l_password := ja_utils_pkg.encrypt_enc_aes256('admin260520');

    for r in (
        select tenant_id, role_id
          from sts_role
         where role_type = 'SYSTEM_ADMIN'
           and nvl(del_flag, 0) = 0
    ) loop
        begin
            select user_id, ext_user_id
              into l_admin_user_id, l_admin_ext_user_str
              from sts_user
             where tenant_id = r.tenant_id
               and lower(job_number) = 'admin'
             order by case when nvl(del_flag, 0) = 0 then 0 else 1 end, user_id
             fetch first 1 row only;
        exception
            when no_data_found then
                l_admin_user_id := null;
                l_admin_ext_user_str := null;
        end;

        if l_admin_user_id is null then
            l_admin_ext_user_id := next_ext_user_id();
            l_admin_ext_user_str := to_char(l_admin_ext_user_id);

            insert into sts_user (
                user_name,
                job_number,
                password,
                mobile,
                ext_user_id,
                email,
                union_id,
                is_enable,
                is_leave,
                user_type,
                tenant_id,
                remark,
                created_by,
                creation_date,
                updated_by,
                update_date,
                del_flag
            ) values (
                'ADMIN',
                'ADMIN',
                l_password,
                null,
                l_admin_ext_user_str,
                null,
                l_admin_ext_user_str,
                1,
                0,
                'SYSTEM',
                r.tenant_id,
                'built-in platform admin',
                -1,
                sysdate,
                -1,
                sysdate,
                0
            )
            returning user_id into l_admin_user_id;
        else
            if l_admin_ext_user_str is null or not regexp_like(l_admin_ext_user_str, '^\d+$') then
                l_admin_ext_user_id := next_ext_user_id();
                l_admin_ext_user_str := to_char(l_admin_ext_user_id);
            else
                l_admin_ext_user_id := to_number(l_admin_ext_user_str);
            end if;

            update sts_user
               set user_name = 'ADMIN',
                   job_number = 'ADMIN',
                   password = l_password,
                   ext_user_id = l_admin_ext_user_str,
                   union_id = l_admin_ext_user_str,
                   is_enable = 1,
                   is_leave = 0,
                   del_flag = 0,
                   remark = 'built-in platform admin',
                   updated_by = -1,
                   update_date = sysdate
             where user_id = l_admin_user_id;
        end if;

        update sts_user_role
           set is_enable = 1,
               del_flag = 0,
               user_role_type = 'SYSTEM_ADMIN',
               updated_by = -1,
               update_date = sysdate
         where tenant_id = r.tenant_id
           and role_id = r.role_id
           and user_id = l_admin_ext_user_id;

        if sql%rowcount = 0 then
            insert into sts_user_role (
                user_id,
                role_id,
                tenant_id,
                remark,
                created_by,
                creation_date,
                updated_by,
                update_date,
                del_flag,
                is_enable,
                user_role_type
            ) values (
                l_admin_ext_user_id,
                r.role_id,
                r.tenant_id,
                'built-in platform admin',
                -1,
                sysdate,
                -1,
                sysdate,
                0,
                1,
                'SYSTEM_ADMIN'
            );
        end if;

        update sts_user_role
           set is_enable = 0,
               del_flag = 1,
               updated_by = -1,
               update_date = sysdate
         where tenant_id = r.tenant_id
           and role_id = r.role_id
           and nvl(del_flag, 0) = 0
           and user_id <> l_admin_ext_user_id;
    end loop;

    commit;
end;
/
