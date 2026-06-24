prompt --application/shared_components/user_interface/lovs/notice_type
begin
--   Manifest
--     NOTICE_TYPE
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
 p_id=>wwv_flow_imp.id(3396835491168742451)
,p_lov_name=>'NOTICE_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3396835491168742451)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3396835842609742456)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\7CFB\7EDF\901A\77E5')
,p_lov_return_value=>'SYSTEM_NOTICE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3396836194504742457)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\66F4\65B0\65E5\5FD7')
,p_lov_return_value=>'UPDATE_LOG'
);
wwv_flow_imp.component_end;
end;
/
