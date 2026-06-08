prompt --application/shared_components/user_interface/lovs/req_type（需求类型）
begin
--   Manifest
--     REQ_TYPE（需求类型）
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6469927197499559600)
,p_lov_name=>unistr('REQ_TYPE\FF08\9700\6C42\7C7B\578B\FF09')
,p_lov_query=>'.'||wwv_flow_imp.id(6469927197499559600)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6469927505149559607)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'BUG'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6469927900458559608)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\65B0\9700\6C42')
,p_lov_return_value=>'5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6469928263866559609)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\529F\80FD\8FED\4EE3\4F18\5316')
,p_lov_return_value=>'10'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(6469928672980559609)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\6837\5F0F/\5185\5BB9\4F18\5316')
,p_lov_return_value=>'15'
);
wwv_flow_imp.component_end;
end;
/
