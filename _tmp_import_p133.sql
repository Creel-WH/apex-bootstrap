whenever sqlerror continue
set define off
begin
  apex_application_install.set_workspace_id(apex_util.find_security_group_id(p_workspace => 'JA_UAT'));
  apex_util.set_security_group_id(apex_util.find_security_group_id(p_workspace => 'JA_UAT'));
  apex_application_install.set_application_id(299);
  wwv_flow.g_flow_id := 299;
end;
/
@D:\ja-projects\apex\apex-bootstrap\export\file-management-platform@test\f299\apex\f299\application\set_environment.sql
begin
  apex_application_install.set_application_id(299);
  wwv_flow.g_flow_id := 299;
end;
/
begin
  wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>133);
exception
  when others then null;
end;
/
@D:\ja-projects\apex\apex-bootstrap\export\file-management-platform@test\f299\apex\f299\application\pages\page_00133.sql
@D:\ja-projects\apex\apex-bootstrap\export\file-management-platform@test\f299\apex\f299\application\end_environment.sql
prompt __CHECK__
select application_id, page_id, page_name, page_alias from apex_application_pages where application_id = 299 and page_id = 133;
exit