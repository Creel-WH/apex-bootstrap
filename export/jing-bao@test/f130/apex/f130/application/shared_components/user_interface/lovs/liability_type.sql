prompt --application/shared_components/user_interface/lovs/liability_type
begin
--   Manifest
--     LIABILITY_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2403580039688537454)
,p_lov_name=>'LIABILITY_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(2403580039688537454)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2403580325871537464)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\4E3B\8D23')
,p_lov_return_value=>'ACCOUNTABILITY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2403580673162537465)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\534F\52A9')
,p_lov_return_value=>'ASSIST'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2403581091689537465)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\534F\8C03')
,p_lov_return_value=>'HARMONIZE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2403581521968537465)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\4E0A\62A5')
,p_lov_return_value=>'REPORT'
);
wwv_flow_imp.component_end;
end;
/
