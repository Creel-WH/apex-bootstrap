prompt --application/shared_components/user_interface/lovs/ture_or_false
begin
--   Manifest
--     TURE_OR_FALSE
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
 p_id=>wwv_flow_imp.id(4428554456066279573)
,p_lov_name=>'TURE_OR_FALSE'
,p_lov_query=>'.'||wwv_flow_imp.id(4428554456066279573)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4428554707389279578)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\662F')
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(4428555094876279579)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\5426')
,p_lov_return_value=>'0'
);
wwv_flow_imp.component_end;
end;
/
