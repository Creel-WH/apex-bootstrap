prompt --application/shared_components/logic/application_items/system_id
begin
--   Manifest
--     APPLICATION ITEM: SYSTEM_ID
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
 p_id=>wwv_flow_imp.id(7925490888081779959)
,p_name=>'SYSTEM_ID'
,p_protection_level=>'I'
,p_version_scn=>6805487174471
);
wwv_flow_imp.component_end;
end;
/
