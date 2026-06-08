prompt --application/pages/page_00192
begin
--   Manifest
--     PAGE: 00192
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
 p_id=>192
,p_name=>unistr('\5382\533A\5404\7EBF\5DE5\5355\91CF\56FE\8868')
,p_alias=>unistr('\5382\533A\5404\7EBF\5DE5\5355\91CF\56FE\8868')
,p_step_title=>unistr('\5382\533A\5404\7EBF\5DE5\5355\91CF\56FE\8868')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2224681668440710943)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2359751901918135266)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2224682233900710942)
,p_plug_name=>unistr('\5382\533A\5404\7EBF\5DE5\5355\91CF\56FE\8868')
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>70
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2224682605036710942)
,p_region_id=>wwv_flow_imp.id(2224682233900710942)
,p_chart_type=>'combo'
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
,p_fill_multi_series_gaps=>false
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
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2224684348125710940)
,p_chart_id=>wwv_flow_imp.id(2224682605036710942)
,p_seq=>10
,p_name=>unistr('\5DE5\5355\91CF')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FAB_ID,B.NAME FAB_NAME,A.MAP_AREA_Y_ID LINE_ID ,C.NAME LINE_NAME,COUNT(*) COUNTS,ROUND(SUM(ROUND((APEX_DATE_TO_UNIX_TS(END_TIME) - APEX_DATE_TO_UNIX_TS(BEGIN_TIME)) / 3600, 2)),2) DIS_TIME FROM TENANT_EVENT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID =  B.FAB_ID',
'LEFT JOIN FND_AREAS C ON A.MAP_AREA_Y_ID = C.AREA_ID',
'WHERE A.FAB_ID = :P192_FAB AND A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID AND A.CREATION_DATE >= TO_DATE(:P192_BEGIN,''YYYY-MM-DD'') AND A.CREATION_DATE<=TO_DATE(:P192_END,''YYYY-MM-DD'')+1 AND A.END_TIME IS NOT NULL ',
'GROUP BY A.FAB_ID,B.NAME,A.MAP_AREA_Y_ID ,C.NAME',
'ORDER BY A.MAP_AREA_Y_ID ASC'))
,p_series_type=>'bar'
,p_items_value_column_name=>'COUNTS'
,p_group_short_desc_column_name=>'LINE_NAME'
,p_items_label_column_name=>'LINE_NAME'
,p_color=>'#5f98fc'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2240482619571504847)
,p_chart_id=>wwv_flow_imp.id(2224682605036710942)
,p_seq=>20
,p_name=>unistr('\603B\5DE5\65F6(\5C0F\65F6)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FAB_ID,B.NAME FAB_NAME,A.MAP_AREA_Y_ID LINE_ID ,C.NAME LINE_NAME,COUNT(*) COUNTS,ROUND(SUM(ROUND((APEX_DATE_TO_UNIX_TS(END_TIME) - APEX_DATE_TO_UNIX_TS(BEGIN_TIME)) / 3600, 2)),2) DIS_TIME FROM TENANT_EVENT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID =  B.FAB_ID',
'LEFT JOIN FND_AREAS C ON A.MAP_AREA_Y_ID = C.AREA_ID',
'WHERE A.FAB_ID = :P192_FAB AND A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID AND A.CREATION_DATE >= TO_DATE(:P192_BEGIN,''YYYY-MM-DD'') AND A.CREATION_DATE<=TO_DATE(:P192_END,''YYYY-MM-DD'')+1 AND A.END_TIME IS NOT NULL ',
'GROUP BY A.FAB_ID,B.NAME,A.MAP_AREA_Y_ID ,C.NAME',
'ORDER BY A.MAP_AREA_Y_ID ASC'))
,p_series_type=>'line'
,p_items_value_column_name=>'DIS_TIME'
,p_items_label_column_name=>'LINE_NAME'
,p_color=>'#f8af13'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2240482838009504849)
,p_chart_id=>wwv_flow_imp.id(2224682605036710942)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
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
 p_id=>wwv_flow_imp.id(2224683769934710940)
,p_chart_id=>wwv_flow_imp.id(2224682605036710942)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2224683174125710941)
,p_chart_id=>wwv_flow_imp.id(2224682605036710942)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2240482756381504848)
,p_button_sequence=>50
,p_button_name=>unistr('\67E5\627E')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\627E')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225149436130219316)
,p_name=>'P192_BEGIN'
,p_item_sequence=>30
,p_prompt=>unistr('\5F00\59CB\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
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
 p_id=>wwv_flow_imp.id(2225149544073219317)
,p_name=>'P192_END'
,p_item_sequence=>40
,p_prompt=>unistr('\622A\6B62\65E5\671F')
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2240482466636504845)
,p_name=>'P192_FAB'
,p_item_sequence=>10
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT NAME,FAB_ID FROM FND_FAB WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID; '
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
