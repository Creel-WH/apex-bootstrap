prompt --application/shared_components/user_interface/lovs/username_lov
begin
--   Manifest
--     USERNAME_LOV
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
 p_id=>wwv_flow_imp.id(2160573878920372945)
,p_lov_name=>'USERNAME_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name, ext_user_id',
'from MPF_USER_DEPT_MAIN_ASSO_V',
'WHERE TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID = :ORG_ID'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'EXT_USER_ID'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
