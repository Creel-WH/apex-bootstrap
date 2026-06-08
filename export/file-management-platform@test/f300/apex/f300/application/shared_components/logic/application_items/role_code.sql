prompt --application/shared_components/logic/application_items/role_code
begin
--   Manifest
--     APPLICATION ITEM: ROLE_CODE
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
 p_id=>wwv_flow_imp.id(3780544597055741974)
,p_name=>'ROLE_CODE'
,p_protection_level=>'I'
,p_item_comment=>unistr('\7528\4E8E\5224\65AD\6743\9650\7684ROLE_CODE --by wxx')
,p_version_scn=>6720659854609
);
wwv_flow_imp.component_end;
end;
/
