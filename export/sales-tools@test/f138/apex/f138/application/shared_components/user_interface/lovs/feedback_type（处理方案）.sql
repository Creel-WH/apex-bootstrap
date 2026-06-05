prompt --application/shared_components/user_interface/lovs/feedback_type（处理方案）
begin
--   Manifest
--     FEEDBACK_TYPE（处理方案）
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3700250836255194926)
,p_lov_name=>unistr('FEEDBACK_TYPE\FF08\5904\7406\65B9\6848\FF09')
,p_lov_query=>'.'||wwv_flow_imp.id(3700250836255194926)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3700251057410194927)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\65E0\9700\66F4\65B0')
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3700251514348194927)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\66F4\65B0\6587\4EF6')
,p_lov_return_value=>'1'
);
wwv_flow_imp.component_end;
end;
/
