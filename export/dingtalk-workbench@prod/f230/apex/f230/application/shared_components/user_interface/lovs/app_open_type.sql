prompt --application/shared_components/user_interface/lovs/app_open_type
begin
--   Manifest
--     APP_OPEN_TYPE
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
 p_id=>wwv_flow_imp.id(3985424508146364463)
,p_lov_name=>'APP_OPEN_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3985424508146364463)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3985424855387364463)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\9ED8\8BA4')
,p_lov_return_value=>'DEFAULT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3985425209085364463)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\9489\9489\4FA7\8FB9\680F')
,p_lov_return_value=>'SLIDE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3985425575480364464)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\6D4F\89C8\5668')
,p_lov_return_value=>'BROWSER'
);
wwv_flow_imp.component_end;
end;
/
