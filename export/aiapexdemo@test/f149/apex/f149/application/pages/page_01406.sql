prompt --application/pages/page_01406
begin
--   Manifest
--     PAGE: 01406
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
 p_id=>1406
,p_name=>'Reports - Timeline'
,p_alias=>'TIMELINE-REPORTS'
,p_step_title=>unistr('\6D3B\52A8\65F6\95F4\7EBF - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1198433156278410584)
,p_plug_name=>unistr('\8BF4\660E')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'TimelineDemo')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1198433300583410585)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_region_css_classes=>'col-sm-12'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>4
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'TimelineDemo')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1198436449962410617)
,p_name=>'Column Names'
,p_template=>wwv_flow_imp.id(2303754088075183486)
,p_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG:js-headingLevel-2'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>8
,p_grid_column_css_classes=>'col-sm-12'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''#EVENT_MODIFIERS#''  , ''CSS Class-based modifiers for an event item''',
'  from dual union all',
'select ''#EVENT_ATTRIBUTES#'' , ''Custom attributes for an event item''',
'  from dual union all',
'select ''#USER_COLOR#''       , ''Color applied to a user initials using u-color-XX classes or custom classes''',
'  from dual union all',
'select ''#USER_AVATAR#''      , ''User initials or image''',
'  from dual union all',
'select ''#USER_NAME#''        , ''User name''',
'  from dual union all',
'select ''#EVENT_DATE#''       , ''Date of event displayed below user name''',
'  from dual union all',
'select ''#EVENT_STATUS#''     , ''Type of event. Substitute with "is-new", "is-updated" or "is-removed" for default styling.''',
'  from dual union all',
'select ''#EVENT_ICON#''       , ''Icon of event type.''',
'  from dual union all',
'select ''#EVENT_TITLE#''      , ''Name of event''',
'  from dual union all',
'select ''#EVENT_DESC#''       , ''Description of event displayed below event name''',
'  from dual union all',
'select ''#EVENT_LINK#''       , ''Link for the event''',
'  from dual union all',
'select ''#EVENT_TYPE#''       , ''Type of the event'' ',
'  from dual'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2082153545015023065)
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1198436632542410618)
,p_query_column_id=>1
,p_column_alias=>'''#EVENT_MODIFIERS#'''
,p_column_display_sequence=>10
,p_column_heading=>'&#x27;#event Modifiers#&#x27;'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1198436653323410619)
,p_query_column_id=>2
,p_column_alias=>'''CSSCLASS-BASEDMODIFIERSFORANEVENTITEM'''
,p_column_display_sequence=>20
,p_column_heading=>'&#x27;cssclass-basedmodifiersforaneventitem&#x27;'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846945912394368235)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p><strong>Timeline</strong> is a Classic Report template that is useful for displaying a series of events. It can be used to showcase the history of a given widget, recent updates, or new interactions within an application.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846946377031368236)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2513101747170473402)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3156601119967118728)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4054001765906400637)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846946843672368236)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846962546708368257)
,p_plug_name=>unistr('\793A\4F8B SQL \67E5\8BE2')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.REGION_SOURCE_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'TimelineDemo')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1846987846666378493)
,p_name=>unistr('\6F14\793A')
,p_region_name=>'TimelineDemo'
,p_template=>wwv_flow_imp.id(2303754088075183486)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'dm-TemplateOption-previewTarget'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG:js-headingLevel-2'
,p_component_template_options=>'#DEFAULT#:t-Report--hideNoPagination'
,p_grid_column_css_classes=>'col-sm-12'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  p.id,',
'  substr(p.created_by,0,2) user_avatar,',
'  p.created event_date,',
'  lower(p.created_by) user_name,',
'  t.task_name event_title,',
'  t.created created,',
'  lower(t.created_by) owner,',
'  null event_desc,',
'  case status ',
'    when ''Open'' then ''fa fa-clock-o''',
'    when ''Closed'' then ''fa fa-check-circle-o''',
'    when ''On-Hold'' then ''fa fa-exclamation-circle''',
'    when ''Pending'' then ''fa fa-exclamation-triangle''',
'  end event_icon,',
'  case status ',
'    when ''Open'' then ''is-new''',
'    when ''Closed'' then ''is-removed''',
'    when ''On-Hold'' then ''is-updated''',
'    when ''Pending'' then ''is-updated''',
'  end event_status,',
'  status event_type,',
'  ''u-color-''||( ora_hash(p.created_by,44) + 1 ) user_color',
'from',
'  eba_ut_chart_tasks t,',
'  eba_ut_chart_projects p',
'where',
'  t.project = p.id',
'order by p.created'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(1496458811676411176)
,p_query_num_rows=>6
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846988310007378494)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846988683040378494)
,p_query_column_id=>2
,p_column_alias=>'USER_AVATAR'
,p_column_display_sequence=>3
,p_column_heading=>'User avatar'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846989091033378495)
,p_query_column_id=>3
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>4
,p_column_heading=>'Event date'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846989492686378495)
,p_query_column_id=>4
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'User name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846989859270378495)
,p_query_column_id=>5
,p_column_alias=>'EVENT_TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Event title'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846990277441378496)
,p_query_column_id=>6
,p_column_alias=>unistr('\521B\5EFA\65F6\95F4')
,p_column_display_sequence=>11
,p_column_heading=>unistr('\521B\5EFAd')
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846990691860378496)
,p_query_column_id=>7
,p_column_alias=>'OWNER'
,p_column_display_sequence=>12
,p_column_heading=>'Owner'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846991118701378496)
,p_query_column_id=>8
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>6
,p_column_heading=>'Event desc'
,p_column_html_expression=>'#CREATED#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846991505373378497)
,p_query_column_id=>9
,p_column_alias=>'EVENT_ICON'
,p_column_display_sequence=>7
,p_column_heading=>'Event icon'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846991883128378497)
,p_query_column_id=>10
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>8
,p_column_heading=>'Event status'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846992311937378497)
,p_query_column_id=>11
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Event type'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846992645624378498)
,p_query_column_id=>12
,p_column_alias=>'USER_COLOR'
,p_column_display_sequence=>9
,p_column_heading=>'User color'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/
