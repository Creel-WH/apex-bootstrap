prompt --application/shared_components/user_interface/lovs/user_group_asso_name
begin
--   Manifest
--     USER_GROUP_ASSO_NAME
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
 p_id=>wwv_flow_imp.id(2280786267923252215)
,p_lov_name=>'USER_GROUP_ASSO_NAME'
,p_lov_query=>'select value, key from apex_user_group_code where link is not null'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'KEY'
,p_display_column_name=>'VALUE'
,p_default_sort_column_name=>'VALUE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
