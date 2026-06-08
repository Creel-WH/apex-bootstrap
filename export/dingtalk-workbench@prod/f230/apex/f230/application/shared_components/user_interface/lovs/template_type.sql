prompt --application/shared_components/user_interface/lovs/template_type
begin
--   Manifest
--     TEMPLATE_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3506136443797710577)
,p_lov_name=>'TEMPLATE_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3506136443797710577)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3506136768737710578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\5B50\5E94\7528')
,p_lov_return_value=>'SUB_LINK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3506137200169710579)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\5916\90E8\6253\5F00\94FE\63A5')
,p_lov_return_value=>'EXTERNAL_LINK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3506194399518969607)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\5185\90E8\6253\5F00\94FE\63A5')
,p_lov_return_value=>'INTERNAL_LINK'
);
wwv_flow_imp.component_end;
end;
/
