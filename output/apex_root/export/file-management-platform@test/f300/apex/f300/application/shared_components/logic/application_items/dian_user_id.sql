prompt --application/shared_components/logic/application_items/dian_user_id
begin
--   Manifest
--     APPLICATION ITEM: DIAN_USER_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(3274197260970014234)
,p_name=>'DIAN_USER_ID'
,p_protection_level=>'I'
,p_version_scn=>6729495784800
);
wwv_flow_imp.component_end;
end;
/
