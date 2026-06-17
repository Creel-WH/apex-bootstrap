prompt --application/shared_components/user_interface/lovs/sts_sys_config（权限类型）
begin
--   Manifest
--     STS_SYS_CONFIG（权限类型）
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
 p_id=>wwv_flow_imp.id(3744570019950437408)
,p_lov_name=>unistr('STS_SYS_CONFIG\FF08\6743\9650\7C7B\578B\FF09')
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONFIG_CODE, CONFIG_NAME',
'FROM STS_SYS_CONFIG',
'WHERE CONFIG_TYPE = 1',
'  AND DEL_FLAG = 0',
'  AND IS_ENABLE = 1',
'  AND TENANT_ID = 3',
'  AND CONFIG_CODE <> ''REMOVE''',
'ORDER BY SORT_NUM ASC;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_230200'
,p_return_column_name=>'CONFIG_CODE'
,p_display_column_name=>'CONFIG_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
