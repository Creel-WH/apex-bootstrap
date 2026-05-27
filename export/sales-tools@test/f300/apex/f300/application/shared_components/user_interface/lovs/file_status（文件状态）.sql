prompt --application/shared_components/user_interface/lovs/file_status（文件状态）
begin
--   Manifest
--     FILE_STATUS（文件状态）
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
 p_id=>wwv_flow_imp.id(3341730231375881566)
,p_lov_name=>unistr('FILE_STATUS\FF08\6587\4EF6\72B6\6001\FF09')
,p_lov_query=>'.'||wwv_flow_imp.id(3341730231375881566)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3341730500658881566)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\6B63\5E38')
,p_lov_return_value=>'NORMAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3341730919145881568)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\5DF2\5F52\6863')
,p_lov_return_value=>'ARCHIVE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3341731301650881569)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\66F4\65B0')
,p_lov_return_value=>'MODIFY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3341731711868881569)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\5DF2\5220\9664')
,p_lov_return_value=>'DELETE'
);
wwv_flow_imp.component_end;
end;
/
