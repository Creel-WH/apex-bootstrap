prompt --application/shared_components/user_interface/lovs/basic_user（晶台用户）
begin
--   Manifest
--     BASIC_USER（晶台用户）
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
 p_id=>wwv_flow_imp.id(9716469965053335986)
,p_lov_name=>unistr('BASIC_USER\FF08\6676\53F0\7528\6237\FF09')
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME, USER_ID',
'FROM BASIC_USER',
'WHERE TENANT_ID = :USER_TENANT',
'  and DEL_FLAG = 0',
'and IS_LEAVE = 0'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_230200'
,p_return_column_name=>'USER_ID'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
