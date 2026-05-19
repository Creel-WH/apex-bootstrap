prompt --application/shared_components/logic/application_items/user_job_number
begin
--   Manifest
--     APPLICATION ITEM: USER_JOB_NUMBER
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>534703734671071145
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(9259224943454965174)
,p_name=>'USER_JOB_NUMBER'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>6666071215486
);
wwv_flow_imp.component_end;
end;
/
