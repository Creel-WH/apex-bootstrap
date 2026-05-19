prompt --application/shared_components/user_interface/lovs/sts_sys_config（可见范围）
begin
--   Manifest
--     STS_SYS_CONFIG（可见范围）
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3777976135446677372)
,p_lov_name=>unistr('STS_SYS_CONFIG\FF08\53EF\89C1\8303\56F4\FF09')
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONFIG_NAME,CONFIG_CODE',
'from STS_SYS_CONFIG where CONFIG_TYPE = 25 and DEL_FLAG = 0 and IS_ENABLE = 1 and TENANT_ID = 3 order by SORT_NUM asc;'))
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
