prompt --application/shared_components/user_interface/lovs/device
begin
--   Manifest
--     DEVICE
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
 p_id=>wwv_flow_imp.id(3985425880929371233)
,p_lov_name=>'DEVICE'
,p_lov_query=>'.'||wwv_flow_imp.id(3985425880929371233)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3985426196863371234)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\5168\90E8')
,p_lov_return_value=>'ALL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3985426573189371234)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\4EC5PC')
,p_lov_return_value=>'PC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3985426963972371234)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\4EC5\79FB\52A8\7AEF')
,p_lov_return_value=>'MP'
);
wwv_flow_imp.component_end;
end;
/
