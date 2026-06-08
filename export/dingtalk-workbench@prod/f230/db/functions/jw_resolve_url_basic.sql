create or replace editionable function jw_resolve_url_basic(
    p_url in varchar2,
    p_user_name out varchar2
) return boolean
as --解析URL,获取用户信息
    v_err_msg        varchar2(2000);
    v_msg            varchar2(100);
    v_mobile         varchar2(20);
    v_clob           clob;
    v_code           varchar2(500);
    v_url            varchar2(500);
    v_job_number     varchar2(30);
    v_ehr_job_number varchar2(30);
    v_password       varchar2(100);
    v_tenant_id      varchar2(100);
begin
    v_url := substr(p_url, instr(p_url, '=', 1, 2) + 1);
    v_code := substring_instr2(v_url, '&', 0, 1);
    v_url := 'https://jingapi.jasolar.com/jingjie/oapi/decode/' || v_code;
    v_clob := ja_http_request(
        v_url,
        'GET'
    );
    v_tenant_id := 3;

    select code, msg
      into v_code, v_msg
      from json_table(
               v_clob format json,
               '$'
               columns (
                   code number path '$.code',
                   msg varchar2 path '$.msg'
               )
           );

    write_log('jw', 'login_debug', v_clob, null, 1);

    if v_code = 200 then
        select mobile, ehr_job_number, job_number
          into v_mobile, v_ehr_job_number, v_job_number
          from json_table(
                   v_clob format json,
                   '$'
                   columns (
                       mobile varchar2 path '$.data.mobile',
                       ehr_job_number varchar2 path '$.data.ehrJobNumber', -- 旧版晶捷工号
                       job_number varchar2 path '$.data.mainJobNumber' -- 新版晶捷工号
                   )
               );

        p_user_name := upper(nvl(v_job_number, v_ehr_job_number));

        select job_number, job_number
          into v_job_number, v_password
          from mpf_basic_ja_ding_user_v
         where tenant_id = 1
           and job_number = upper(p_user_name)
           and tenant_id = 1;

        apex_util.set_session_state('P9999_USERNAME', p_user_name);
        apex_util.set_session_state('P9999_PASSWORD', v_password || '..');

        return true;
    end if;

    return false;
exception
    when no_data_found then
        apex_error.add_error(
            p_message => '账号不存在',
            p_ignore_ora_error => true,
            p_display_location => apex_error.c_inline_in_notification
        );
        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;
        write_log('jw', 'login_error', v_err_msg, 1, 1);
        return false;
    when others then
        apex_error.add_error(
            p_message => '系统异常，请联系管理员',
            p_ignore_ora_error => true,
            p_display_location => apex_error.c_inline_in_notification
        );
        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;
        write_log('jw', 'login_error', v_err_msg, 1, 1);
        return false;
end;
/
