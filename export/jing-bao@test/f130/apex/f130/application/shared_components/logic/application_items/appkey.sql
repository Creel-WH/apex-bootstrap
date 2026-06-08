prompt --application/shared_components/logic/application_items/appkey
begin
--   Manifest
--     APPLICATION ITEM: APPKEY
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
 p_id=>wwv_flow_imp.id(2227687500815501041)
,p_name=>'APPKEY'
,p_protection_level=>'I'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
