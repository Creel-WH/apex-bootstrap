set define off
whenever sqlerror exit sql.sqlcode rollback
whenever oserror exit failure rollback

update ja_system_dict
   set code_value = 'https://testjing.jasolar.com/i/jingjie/open/oauth2/dingtalk',
       update_date = sysdate
 where app_id = 138
   and dict_code = 'DING_LOGIN_URL_138';

insert into ja_system_dict (
    app_id,
    sys_code,
    dict_code,
    code_value,
    tenant_id,
    dict_type
)
select 138,
       null,
       'DING_LOGIN_URL_138',
       'https://testjing.jasolar.com/i/jingjie/open/oauth2/dingtalk',
       -1,
       null
  from dual
 where not exists (
       select 1
         from ja_system_dict
        where app_id = 138
          and dict_code = 'DING_LOGIN_URL_138'
       );

commit;
