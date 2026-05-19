prompt --application/shared_components/logic/application_items/role_id
begin
--   Manifest
--     APPLICATION ITEM: ROLE_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(9793749676259066220)
,p_name=>'ROLE_ID'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>6666071246641
);
wwv_flow_imp.component_end;
end;
/
