prompt --application/shared_components/user_interface/lovs/is_enable（是否启用）
begin
--   Manifest
--     IS_ENABLE（是否启用）
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>534703734671071145
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9261409976012444866)
,p_lov_name=>unistr('IS_ENABLE\FF08\662F\5426\542F\7528\FF09')
,p_lov_query=>'.'||wwv_flow_imp.id(9261409976012444866)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9261410408076444869)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\542F\7528')
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(9261410759105444870)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\7981\7528')
,p_lov_return_value=>'0'
);
wwv_flow_imp.component_end;
end;
/
