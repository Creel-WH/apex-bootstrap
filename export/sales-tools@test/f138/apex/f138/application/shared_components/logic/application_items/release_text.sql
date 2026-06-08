prompt --application/shared_components/logic/application_items/release_text
begin
--   Manifest
--     APPLICATION ITEM: RELEASE_TEXT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(6918191639474956393)
,p_name=>'RELEASE_TEXT'
,p_protection_level=>'I'
,p_version_scn=>6685120920973
);
wwv_flow_imp.component_end;
end;
/
