prompt --application/pages/page_00182
begin
--   Manifest
--     PAGE: 00182
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
 p_id=>182
,p_name=>unistr('\5DE5\5355\7EDF\8BA1\56FE\8868')
,p_alias=>unistr('\5DE5\5355\7EDF\8BA1\56FE\8868')
,p_step_title=>unistr('\5DE5\5355\7EDF\8BA1\56FE\8868')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2195047359087715464)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2330871170826485717)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2330990162870485778)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2195048014444715462)
,p_plug_name=>unistr('\5DE5\5355\7EDF\8BA1\56FE\8868')
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2195048452678715462)
,p_region_id=>wwv_flow_imp.id(2195048014444715462)
,p_chart_type=>'combo'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
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
 p_id=>wwv_flow_imp.id(2195050068107715458)
,p_chart_id=>wwv_flow_imp.id(2195048452678715462)
,p_seq=>10
,p_name=>unistr('\5DE5\5355\6570\91CF')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.NAME FAC_NAME,B.FAB_ID,C.NAME OP_NAME,C.AREA_ID OP_ID,COUNT(*) TOTAL_COUNT,ROUND(SUM(ROUND((APEX_DATE_TO_UNIX_TS(END_TIME) - APEX_DATE_TO_UNIX_TS(BEGIN_TIME)) / 60, 2))/COUNT(*),2) DIS_TIME FROM TENANT_EVENT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'LEFT JOIN FND_AREAS C ON A.MAP_AREA_X_ID = C.AREA_ID',
'WHERE A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID AND A.FAB_ID =:P182_FAB AND A.CREATION_DATE>=TO_DATE(:P182_BEGIN,''YYYY-MM-DD'') AND A.CREATION_DATE<=TO_DATE(:P182_END,''YYYY-MM-DD'') AND A.END_TIME IS NOT NULL ',
'GROUP BY B.NAME,B.FAB_ID,C.AREA_ID,C.NAME',
'ORDER BY COUNT(*) DESC;  '))
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL_COUNT'
,p_group_short_desc_column_name=>'OP_NAME'
,p_items_label_column_name=>'OP_NAME'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:183:&SESSION.::&DEBUG.:CR,183:P183_FAB,P183_OPID,P183_BEGIN,P183_END:&FAB_ID.,&OP_ID.,&P182_BEGIN.,&P182_END.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2211598775749855267)
,p_chart_id=>wwv_flow_imp.id(2195048452678715462)
,p_seq=>20
,p_name=>unistr('\5DE5\5355\603B\65F6\957F(\5206\949F)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.NAME FAC_NAME,B.FAB_ID,C.NAME OP_NAME,C.AREA_ID OP_ID,COUNT(*) TOTAL_COUNT,ROUND(SUM(ROUND((APEX_DATE_TO_UNIX_TS(END_TIME) - APEX_DATE_TO_UNIX_TS(BEGIN_TIME)) / 60, 2))/COUNT(*),2) DIS_TIME FROM TENANT_EVENT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'LEFT JOIN FND_AREAS C ON A.MAP_AREA_X_ID = C.AREA_ID',
'WHERE A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID AND A.FAB_ID =:P182_FAB AND A.CREATION_DATE>=TO_DATE(:P182_BEGIN,''YYYY-MM-DD'') AND A.CREATION_DATE<=TO_DATE(:P182_END,''YYYY-MM-DD'') AND A.END_TIME IS NOT NULL ',
'GROUP BY B.NAME,B.FAB_ID,C.AREA_ID,C.NAME',
'ORDER BY COUNT(*) DESC;  '))
,p_ajax_items_to_submit=>'P182_FAB'
,p_series_type=>'line'
,p_items_value_column_name=>'DIS_TIME'
,p_items_label_column_name=>'OP_NAME'
,p_color=>'#f4bc07'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'on'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2195049478748715458)
,p_chart_id=>wwv_flow_imp.id(2195048452678715462)
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
 p_id=>wwv_flow_imp.id(2211602180584855301)
,p_chart_id=>wwv_flow_imp.id(2195048452678715462)
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
 p_id=>wwv_flow_imp.id(2195048898170715460)
,p_chart_id=>wwv_flow_imp.id(2195048452678715462)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2211598421099855263)
,p_plug_name=>unistr('\641C\7D22')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2211598636982855265)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2211598421099855263)
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2211598526613855264)
,p_name=>'P182_FAB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2211598421099855263)
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>' select name r,fab_id v from fnd_fab where tenant_id = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2211600257315855281)
,p_name=>'P182_BEGIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2211598421099855263)
,p_prompt=>unistr('\5F00\59CB\65F6\95F4')
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', '2',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2211600295129855282)
,p_name=>'P182_END'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2211598421099855263)
,p_prompt=>unistr('\7ED3\675F\65F6\95F4')
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', '2',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
