prompt --application/shared_components/user_interface/lovs/week_month
begin
--   Manifest
--     WEEK_MONTH
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
 p_id=>wwv_flow_imp.id(2353510383649712048)
,p_lov_name=>'WEEK_MONTH'
,p_lov_query=>'.'||wwv_flow_imp.id(2353510383649712048)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2353510821371712046)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\5468')
,p_lov_return_value=>'yyyy-iw'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2353511219935712045)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\6708')
,p_lov_return_value=>'yyyy-mm'
);
wwv_flow_imp.component_end;
end;
/
