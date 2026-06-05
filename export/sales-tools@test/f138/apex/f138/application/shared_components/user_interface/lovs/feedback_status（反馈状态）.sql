prompt --application/shared_components/user_interface/lovs/feedback_status（反馈状态）
begin
--   Manifest
--     FEEDBACK_STATUS（反馈状态）
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
 p_id=>wwv_flow_imp.id(3700249196198999091)
,p_lov_name=>unistr('FEEDBACK_STATUS\FF08\53CD\9988\72B6\6001\FF09')
,p_lov_query=>'.'||wwv_flow_imp.id(3700249196198999091)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3700249469109999095)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\672A\5904\7406')
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3700249882787999095)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\5DF2\5904\7406')
,p_lov_return_value=>'1'
);
wwv_flow_imp.component_end;
end;
/
