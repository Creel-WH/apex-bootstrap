prompt --application/shared_components/user_interface/lovs/plans_file_type（计划归档类型）
begin
--   Manifest
--     PLANS_FILE_TYPE（计划归档类型）
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
 p_id=>wwv_flow_imp.id(3279155171735836234)
,p_lov_name=>unistr('PLANS_FILE_TYPE\FF08\8BA1\5212\5F52\6863\7C7B\578B\FF09')
,p_lov_query=>'.'||wwv_flow_imp.id(3279155171735836234)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3279155548191836235)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\6C38\4E0D\5F52\6863')
,p_lov_return_value=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3279155889154836238)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\4E00\5E74\540E')
,p_lov_return_value=>'ONE_YEAR_LATER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3279156289729836238)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\4E24\5E74\540E')
,p_lov_return_value=>'TWO_YEAR_LATER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3279156723405836238)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\4E09\5E74\540E')
,p_lov_return_value=>'THREE_YEAR_LATER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3280436235954492134)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>unistr('\7ACB\5373\5F52\6863')
,p_lov_return_value=>'IMMEDIATELY'
);
wwv_flow_imp.component_end;
end;
/
