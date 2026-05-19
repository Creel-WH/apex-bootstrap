prompt --application/shared_components/user_interface/lovs/plans_file_type_计划归档类型_无立即归档
begin
--   Manifest
--     PLANS_FILE_TYPE(计划归档类型-无立即归档)
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
 p_id=>wwv_flow_imp.id(2807857029596833653)
,p_lov_name=>unistr('PLANS_FILE_TYPE(\8BA1\5212\5F52\6863\7C7B\578B-\65E0\7ACB\5373\5F52\6863)')
,p_lov_query=>'.'||wwv_flow_imp.id(2807857029596833653)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2807857267887833655)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\6C38\4E0D\5F52\6863')
,p_lov_return_value=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2807857718258833663)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\4E00\5E74\540E')
,p_lov_return_value=>'ONE_YEAR_LATER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2807858043769833663)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\4E24\5E74\540E')
,p_lov_return_value=>'TWO_YEAR_LATER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2807858469247833663)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\4E09\5E74\540E')
,p_lov_return_value=>'THREE_YEAR_LATER'
);
wwv_flow_imp.component_end;
end;
/
