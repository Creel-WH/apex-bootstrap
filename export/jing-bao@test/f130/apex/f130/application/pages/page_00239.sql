prompt --application/pages/page_00239
begin
--   Manifest
--     PAGE: 00239
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_page.create_page(
 p_id=>239
,p_name=>unistr('\5206\6790\6570\636E')
,p_alias=>unistr('\5206\6790\6570\636E')
,p_step_title=>unistr('\5206\6790\6570\636E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2315211550934012733)
,p_plug_name=>unistr('\7B5B\9009')
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359792042793135293)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2383591244492172211)
,p_name=>unistr('\5206\6790\6570\636E\7EDF\8BA1')
,p_template=>wwv_flow_imp.id(2359816405900135301)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--cols t-BadgeList--3cols:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(1)                                                                                   TOTAL,',
'       COUNT(CASE WHEN TRUNC(UPDATE_DATE, ''MM'') = TRUNC(SYSDATE, ''MM'') THEN EVENT_ANALYZE_ID END) MONTH_TOTAL,',
'       COUNT(CASE WHEN TRUNC(UPDATE_DATE) = TRUNC(SYSDATE) THEN EVENT_ANALYZE_ID END)             DAY_TOTAL',
'FROM TENANT_EVENT_ANALYZE',
'WHERE TENANT_ID = :USERTENANT',
'  and DEL_FLAG = 0',
'  AND AUDIT_STATE = ''COMPLETE'''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2359818931800135303)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2252143427216519666)
,p_query_column_id=>1
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>50
,p_column_heading=>unistr('\590D\76D8\603B\6570\FF08\5DF2\5B8C\6210\6570\91CF\FF09')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2252143887298519665)
,p_query_column_id=>2
,p_column_alias=>'MONTH_TOTAL'
,p_column_display_sequence=>40
,p_column_heading=>unistr('\672C\6708\590D\76D8\6570\91CF\FF08\5DF2\5B8C\6210\6570\91CF\FF09')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2252144217032519665)
,p_query_column_id=>3
,p_column_alias=>'DAY_TOTAL'
,p_column_display_sequence=>30
,p_column_heading=>unistr('\4ECA\65E5\590D\76D8\6570\91CF\FF08\5DF2\5B8C\6210\6570\91CF\FF09')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2385248201921260787)
,p_plug_name=>unistr('\90E8\95E8\5206\6790\7EDF\8BA1')
,p_region_name=>'region_fb'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select nvl(sum(e_count), 0) e_count, decode(AUDIT_STATE, ''COMPLETE'', ''\5DF2\5B8C\6210'', ''\5F85\590D\76D8'') AUDIT_STATE, NAME'),
'from (',
'         select count(EVENT_ANALYZE_ID) e_count,',
'                a.AUDIT_STATE,',
'                dept.NAME',
'         from TENANT_EVENT_ANALYZE a',
'                  left join MPF_SHARE_DEPT_V dept on a.EXT_ORG_ID = dept.EXT_ORG_ID and dept.TENANT_ID = :USERTENANT',
'         where a.TENANT_ID = :USERTENANT',
'           AND a.BASE_DEPT_ID=:BASE_DEPT_ID',
'           and a.DEL_FLAG = 0',
'           and a.AUDIT_STATE in (''COMPLETE'', ''WAIT'')',
'           and A.CREATED_TIME >= TO_DATE(:P239_START_TIME, ''YYYY-MM-DD'')',
'           and A.CREATED_TIME < TO_DATE(:P239_END_TIME, ''YYYY-MM-DD'') + 1',
'         group by a.AUDIT_STATE,',
'                  dept.NAME',
'',
'         union all',
'',
'         select count(e.EVENT_ID) e_count,',
'                ''WAIT''            AUDIT_STATE,',
'                dept.NAME',
'         from TENANT_EVENT_V2 e',
'                  left join MPF_SHARE_DEPT_V dept on e.MAIN_ORG_ID = dept.EXT_ORG_ID and dept.TENANT_ID = :USERTENANT',
'         where e.TENANT_ID = :USERTENANT',
'          -- AND e.BASE_DEPT_ID=:BASE_DEPT_ID',
'           and e.STATUS != ''CLOSED''',
'           and not exists(select a.EVENT_ID',
'                          from TENANT_EVENT_ANALYZE a',
'                          where a.TENANT_ID = :USERTENANT',
'                            and a.EVENT_ID = e.EVENT_ID',
'                            and a.DEL_FLAG = 0)',
'           and e.BEGIN_TIME >= TO_DATE(:P239_START_TIME, ''YYYY-MM-DD'')',
'           and e.BEGIN_TIME < TO_DATE(:P239_END_TIME, ''YYYY-MM-DD'') + 1',
'         group by ''WAIT'', dept.NAME',
'     )',
'group by AUDIT_STATE, NAME;',
''))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P239_START_TIME,P239_END_TIME'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2253771725216416625)
,p_region_id=>wwv_flow_imp.id(2385248201921260787)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2253773455957416621)
,p_chart_id=>wwv_flow_imp.id(2253771725216416625)
,p_seq=>10
,p_name=>unistr('\590D\76D8')
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'AUDIT_STATE'
,p_items_value_column_name=>'E_COUNT'
,p_items_label_column_name=>'NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2253772290230416623)
,p_chart_id=>wwv_flow_imp.id(2253771725216416625)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2253772811513416622)
,p_chart_id=>wwv_flow_imp.id(2253771725216416625)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_min_step=>1
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2252141955192519674)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2315211550934012733)
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2252142367353519671)
,p_name=>'P239_START_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2315211550934012733)
,p_item_default=>'sysdate-7'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\5F00\59CB\65F6\95F4')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2252142750712519669)
,p_name=>'P239_END_TIME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2315211550934012733)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\7ED3\675F\65F6\95F4')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2252147239795519651)
,p_name=>unistr('\67E5\8BE2')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2252141955192519674)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2251432023495980293)
,p_event_id=>wwv_flow_imp.id(2252147239795519651)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2385248201921260787)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
