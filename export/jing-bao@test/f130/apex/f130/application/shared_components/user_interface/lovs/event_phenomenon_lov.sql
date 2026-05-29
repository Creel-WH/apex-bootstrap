prompt --application/shared_components/user_interface/lovs/event_phenomenon_lov
begin
--   Manifest
--     EVENT_PHENOMENON_LOV
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
 p_id=>wwv_flow_imp.id(2160615592094392466)
,p_lov_name=>'EVENT_PHENOMENON_LOV'
,p_lov_query=>'select name, code from TENANT_EVENT_PHENOMENON WHERE TENANT_ID = :USERTENANT and BASE_DEPT_ID = :BASE_DEPT_ID'
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'CODE'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
