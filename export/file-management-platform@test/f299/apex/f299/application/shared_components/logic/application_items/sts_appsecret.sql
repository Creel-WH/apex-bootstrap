prompt --application/shared_components/logic/application_items/sts_appsecret
begin
--   Manifest
--     APPLICATION ITEM: STS_APPSECRET
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(8644768515599412682)
,p_name=>'STS_APPSECRET'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
,p_version_scn=>6719031925493
);
wwv_flow_imp.component_end;
end;
/
