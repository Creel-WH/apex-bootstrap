prompt --application/shared_components/logic/application_items/jw_union_id
begin
--   Manifest
--     APPLICATION ITEM: JW_UNION_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(4424343446528126159)
,p_name=>'JW_UNION_ID'
,p_protection_level=>'I'
,p_version_scn=>6670532457619
);
wwv_flow_imp.component_end;
end;
/
