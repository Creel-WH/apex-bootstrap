create or replace editionable function jw_authentication_login(
    p_username in varchar2,
    p_password in varchar2
) return boolean
as -- 登录验证工号密码
    v_account  nvarchar2(64);
    v_password nvarchar2(64);
    v_user_id  nvarchar2(256);
    v_err_msg  varchar2(2000);
begin
    write_log('jw', 'login1', 'p_username: ' || p_username || '    p_password: ' || p_password, null, 1);

    select job_number, job_number, user_id
      into v_account, v_password, v_user_id
      from mpf_basic_ja_ding_user_v
     where tenant_id = 1
       and (job_number = upper(p_username) or mobile = p_username);

    write_log('jw', 'login2', 'v_account: ' || v_account || '    v_password: ' || v_password, null, 1);

    if v_account is null then
        return false;
    end if;

    if upper(p_password) <> v_password || '..' then
        return false;
    end if;

    return true;
exception
    when others then
        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;
        write_log('jw', 'login_error', v_err_msg, null, 1);
        return false;
end;
/
