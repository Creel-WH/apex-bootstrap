prompt --application/shared_components/user_interface/lovs/eba_ut_chart_projects_project
begin
--   Manifest
--     EBA_UT_CHART_PROJECTS.PROJECT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1434894399122315456)
,p_lov_name=>'EBA_UT_CHART_PROJECTS.PROJECT'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EBA_UT_CHART_PROJECTS'
,p_return_column_name=>'ID'
,p_display_column_name=>unistr('\9879\76EE')
,p_default_sort_column_name=>unistr('\9879\76EE')
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
