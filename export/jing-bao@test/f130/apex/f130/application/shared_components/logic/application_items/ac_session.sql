prompt --application/shared_components/logic/application_items/ac_session
begin
--   Manifest
--     APPLICATION ITEM: AC_SESSION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(842416601470663396)
,p_name=>'AC_SESSION'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>6595941207445
);
wwv_flow_imp.component_end;
end;
/
