prompt --application/shared_components/user_interface/lovs/base（基地）
begin
--   Manifest
--     BASE（基地）
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
 p_id=>wwv_flow_imp.id(10251157765107082132)
,p_lov_name=>unistr('BASE\FF08\57FA\5730\FF09')
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CODE_VALUE, DICT_ID',
'FROM META_DICT',
'WHERE PARENT_DICT_ID IN',
'      (SELECT DICT_ID FROM META_DICT WHERE DICT_CODE = ''BASE'' AND TENANT_ID = :USER_TENANT)'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APEX_230200'
,p_return_column_name=>'DICT_ID'
,p_display_column_name=>'CODE_VALUE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'CODE_VALUE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
