prompt --application/shared_components/user_interface/lovs/maintenance_status（维保状态）
begin
--   Manifest
--     MAINTENANCE_STATUS（维保状态）
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
 p_id=>wwv_flow_imp.id(232199720684498451)
,p_lov_name=>unistr('MAINTENANCE_STATUS\FF08\7EF4\4FDD\72B6\6001\FF09')
,p_lov_query=>'.'||wwv_flow_imp.id(232199720684498451)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(232199995395498461)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\672A\7EF4\4FDD')
,p_lov_return_value=>'WAIT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(232200435385498462)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\8FC7\671F\672A\7EF4\4FDD')
,p_lov_return_value=>'OVERDUE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(232200786488498462)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\5DF2\7EF4\4FDD')
,p_lov_return_value=>'COMPLETED'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(232201249914498462)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\5BA1\6838\4E2D')
,p_lov_return_value=>'WAIT_REVIEW'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(232201662641498462)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>unistr('\5BA1\6838\672A\901A\8FC7')
,p_lov_return_value=>'REJECT'
);
wwv_flow_imp.component_end;
end;
/
