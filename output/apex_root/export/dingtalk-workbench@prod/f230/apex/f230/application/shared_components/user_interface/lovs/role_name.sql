prompt --application/shared_components/user_interface/lovs/role_name
begin
--   Manifest
--     ROLE_NAME
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
 p_id=>wwv_flow_imp.id(4427973786299905183)
,p_lov_name=>'ROLE_NAME'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROLE_ID,',
'       ROLE_NAME',
'from MPF_BASIC_JA_DING_ROLE_V'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ROLE_ID'
,p_display_column_name=>'ROLE_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'ROLE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
