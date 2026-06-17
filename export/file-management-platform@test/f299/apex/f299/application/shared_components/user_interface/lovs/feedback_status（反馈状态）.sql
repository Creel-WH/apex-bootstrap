prompt --application/shared_components/user_interface/lovs/feedback_status（反馈状态）
begin
--   Manifest
--     FEEDBACK_STATUS（反馈状态）
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3745430436232094766)
,p_lov_name=>unistr('FEEDBACK_STATUS\FF08\53CD\9988\72B6\6001\FF09')
,p_lov_query=>'.'||wwv_flow_imp.id(3745430436232094766)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3745430709143094770)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\672A\5904\7406')
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3745431122821094770)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\5DF2\5904\7406')
,p_lov_return_value=>'1'
);
wwv_flow_imp.component_end;
end;
/
