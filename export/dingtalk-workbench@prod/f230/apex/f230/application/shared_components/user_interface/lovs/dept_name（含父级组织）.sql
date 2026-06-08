prompt --application/shared_components/user_interface/lovs/dept_name（含父级组织）
begin
--   Manifest
--     DEPT_NAME（含父级组织）
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2790351261361363053)
,p_lov_name=>unistr('DEPT_NAME\FF08\542B\7236\7EA7\7EC4\7EC7\FF09')
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'       (SELECT V1.NAME',
'        FROM MPF_BASIC_JA_DING_DEPT_V V1',
'        WHERE V1.DEPT_ID = V.PARENT_DEPT_ID) || ''-'' || V.NAME AS PARENT_DEPT_NAME,',
'       V.DEPT_ID',
'FROM MPF_BASIC_JA_DING_DEPT_V V;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'APEX_230200'
,p_return_column_name=>'DEPT_ID'
,p_display_column_name=>'PARENT_DEPT_NAME'
,p_default_sort_column_name=>'PARENT_DEPT_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
