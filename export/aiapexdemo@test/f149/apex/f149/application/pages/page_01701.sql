prompt --application/pages/page_01701
begin
--   Manifest
--     PAGE: 01701
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_page.create_page(
 p_id=>1701
,p_name=>unistr('Region - \5217\8868\89C6\56FE \79FB\52A8\7AEF Example')
,p_alias=>'REGION-LIST-VIEW-MOBILE-EXAMPLE'
,p_step_title=>unistr('Region - \5217\8868\89C6\56FE \79FB\52A8\7AEF Example')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_id=>wwv_flow_imp.id(1835627882864362525)
,p_navigation_list_template_id=>wwv_flow_imp.id(1436096784509226890)
,p_nav_list_template_options=>'#DEFAULT#:t-NavTabs--inlineLabels-lg:t-NavTabs--hiddenLabels-sm'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2942048529798870365)
,p_plug_name=>'Projects List'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       (select project from EBA_UT_CHART_PROJECTS p where p.id = t.project) PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS',
'  from EBA_UT_CHART_TASKS t'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10
,p_plug_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_plug_display_when_condition=>'sample1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'link_target', '#',
  'list_view_features', 'INSET',
  'text_column', unistr('\4EFB\52A1\540D\79F0'))).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2942050527824870368)
,p_plug_name=>'Departments'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       (select project from EBA_UT_CHART_PROJECTS p where p.id = t.project) PROJECT,',
'       TASK_NAME,',
'       START_DATE,',
'       END_DATE,',
'       STATUS',
'  from EBA_UT_CHART_TASKS t'))
,p_plug_source_type=>'NATIVE_JQM_LIST_VIEW'
,p_plug_query_num_rows=>10
,p_plug_display_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_plug_display_when_condition=>'sample2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'counter_column', unistr('\72B6\6001'),
  'list_divider_column', unistr('\9879\76EE'),
  'list_view_features', 'DIVIDER:SEARCH:INSET',
  'search_type', 'SERVER_EXACT_IGNORE',
  'text_column', unistr('\4EFB\52A1\540D\79F0'))).to_clob
);
wwv_flow_imp.component_end;
end;
/
