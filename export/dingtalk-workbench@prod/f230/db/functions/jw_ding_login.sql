create or replace editionable function jw_ding_login(
    p_code in varchar2,
    p_url in varchar2,
    p_user_name out varchar2,
    p_password out varchar2
) return boolean
as -- 钉钉免登码登录方式
    v_user_id        number(20);
    v_err_msg        varchar2(2000);
    v_clob           clob;
    v_code           varchar2(500);
    v_job_number     varchar2(30);
    v_ehr_job_number varchar2(30);
    v_tenant_id      number(20) := 1;
begin
    v_clob := ja_http_request(
        p_url || '/apis/session/apex/automatic-authorized/' || p_code,
        'POST'
    );

    write_log(
        'jw',
        'debug',
        'url:' || p_url || '/apis/session/apex/automatic-authorized/' || p_code || chr(13) || v_clob,
        -1,
        1
    );

    select code
      into v_code
      from json_table(
               v_clob format json,
               '$'
               columns (
                   code number path '$.code'
               )
           );

    if v_code = 200 then
        select user_id
          into v_user_id
          from json_table(
                   v_clob format json,
                   '$'
                   columns (
                       user_id varchar2 path '$.data' -- 获取用户id
                   )
               );

        select job_number, job_number
          into p_user_name, p_password
          from mpf_basic_ja_ding_user_v
         where tenant_id = v_tenant_id
           and user_id = v_user_id;

        return true;
    end if;

    return false;
exception
    when others then
        apex_error.add_error(
            p_message => '系统异常，请联系管理员',
            p_ignore_ora_error => true,
            p_display_location => apex_error.c_inline_in_notification
        );
        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;
        write_log(
            'jw',
            'error',
            'v_user_id:' || nvl(v_ehr_job_number, v_job_number) || chr(13) || v_err_msg || 'p_url:' || p_url ||
            '/apis/session/apex/automatic-authorized/' || p_code,
            -1,
            1
        );
        return false;
end;
/
