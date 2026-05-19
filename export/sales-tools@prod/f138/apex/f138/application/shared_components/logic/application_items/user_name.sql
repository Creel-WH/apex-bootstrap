prompt --application/shared_components/logic/application_items/user_name
begin
--   Manifest
--     APPLICATION ITEM: USER_NAME
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
 p_id=>wwv_flow_imp.id(9259045350402966154)
,p_name=>'USER_NAME'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>6666071215564
);
wwv_flow_imp.component_end;
end;
/
