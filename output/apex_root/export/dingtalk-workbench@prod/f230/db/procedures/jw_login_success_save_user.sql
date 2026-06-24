create or replace editionable procedure jw_login_success_save_user
as
    -- 登录验证后，保存用户基本信息与系统默认信息
    v_user_id    varchar2(255);
    v_tenant_id  number(20) := 1;
    v_name       nvarchar2(32);
    v_union_id   nvarchar2(64);
    v_job_number nvarchar2(32);
    v_user_name  nvarchar2(128) := upper(v('P9999_USERNAME'));
    v_is_admin   number(1);
begin
    select user_id,
           name,
           job_number,
           union_id
      into v_user_id,
           v_name,
           v_job_number,
           v_union_id
      from mpf_basic_ja_ding_user_v
     where (job_number = v_user_name or mobile = v_user_name)
       and tenant_id = v_tenant_id;

    select case
               when count(*) > 0 then 1
               else 0
           end
      into v_is_admin
      from mpf_basic_ja_ding_role_user_v
     where user_id = v_user_id
       and role_id in (
               select code_value
                 from jw_system_dict
                where dict_code = 'DING_MAIN_ROLE_ID'
                   or dict_code = 'DING_SYSTEM_ROLE_ID'
           );

    save_audit_log(v_user_id, 'BAM', 'BACKEND_LOGIN');
    apex_custom_auth.set_user(v_name);
    apex_util.set_session_state('JW_USER_ID', v_user_id);
    apex_util.set_session_state('JW_JOB_NUMBER', v_job_number);
    apex_util.set_session_state('JW_USER_NAME', v_name);
    apex_util.set_session_state('JW_UNION_ID', v_union_id);
    apex_util.set_session_state('JW_USER_TENANT', v_tenant_id);
    apex_util.set_session_state('JW_IS_ADMIN', v_is_admin);
exception
    when others then
        write_log('jw', 'login_save_error', 'error', null, v_tenant_id);
end;
/
