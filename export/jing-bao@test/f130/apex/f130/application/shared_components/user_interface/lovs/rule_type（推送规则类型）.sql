prompt --application/shared_components/user_interface/lovs/rule_type（推送规则类型）
begin
--   Manifest
--     RULE_TYPE（推送规则类型）
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
 p_id=>wwv_flow_imp.id(216102430456818081)
,p_lov_name=>unistr('RULE_TYPE\FF08\63A8\9001\89C4\5219\7C7B\578B\FF09')
,p_lov_query=>'.'||wwv_flow_imp.id(216102430456818081)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(216102683709818082)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>unistr('\70B9\68C0\5F02\5E38')
,p_lov_return_value=>'CHECK_EXCEPTION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(216103052528818083)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('\7EF4\4FDD\5F02\5E38')
,p_lov_return_value=>'MAINTENANCE_EXCEPTION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(216103449183818083)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>unistr('\7EF4\4FDD\4EFB\52A1')
,p_lov_return_value=>'MAINTENANCE_TASK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(216103934408818083)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>unistr('\5F85\70B9\68C0\4EFB\52A1')
,p_lov_return_value=>'PENDING_INSPECTION_TASK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(221458762004901620)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>unistr('\5F85\7EF4\4FDD\4EFB\52A1')
,p_lov_return_value=>'PENDING_MAINTENANCE_TASK'
);
wwv_flow_imp.component_end;
end;
/
