prompt --application/pages/page_00183
begin
--   Manifest
--     PAGE: 00183
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
 p_id=>183
,p_name=>unistr('\5DE5\5E8F\8BA2\5355\91CF')
,p_alias=>unistr('\5DE5\5E8F\8BA2\5355\91CF')
,p_step_title=>unistr('\5DE5\5E8F\8BA2\5355\91CF')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2166186268679861645)
,p_plug_name=>unistr('\5DE5\5E8F\8BA2\5355\603B\91CF')
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2166186662499861645)
,p_region_id=>wwv_flow_imp.id(2166186268679861645)
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
 p_id=>wwv_flow_imp.id(2166188384096861644)
,p_chart_id=>wwv_flow_imp.id(2166186662499861645)
,p_seq=>10
,p_name=>unistr('\5DE5\5355\603B\91CF')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.NAME FAC_NAME,B.FAB_ID,D.AREA_ID OP_ID,D.NAME OP_NAME,C.AREA_ID LINE_ID,c.Name LINE_NAME,COUNT(*) TOTAL_COUNT,ROUND(SUM(ROUND((APEX_DATE_TO_UNIX_TS(END_TIME) - APEX_DATE_TO_UNIX_TS(BEGIN_TIME)) / 60, 2))/COUNT(*),2) DIS_TIME FROM TENANT_EVEN'
||'T A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'LEFT JOIN FND_AREAS C ON A.MAP_AREA_Y_ID = C.AREA_ID',
'LEFT JOIN FND_AREAS D ON A.MAP_AREA_X_ID = D.AREA_ID',
'WHERE A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID AND A.FAB_ID = :P183_FAB  AND A.MAP_AREA_X_ID = :P183_OPID AND A.CREATION_DATE>=TO_DATE(:P183_BEGIN,''YYYY-MM-DD'') AND A.CREATION_DATE<=TO_DATE(:P183_END,''YYYY-MM-DD'') AND A.END_TIME IS'
||' NOT NULL',
'GROUP BY B.NAME,B.FAB_ID,D.AREA_ID,D.NAME,C.AREA_ID,c.Name',
'ORDER BY COUNT(*) DESC;'))
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL_COUNT'
,p_group_short_desc_column_name=>'LINE_NAME'
,p_items_label_column_name=>'LINE_NAME'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184:P184_FAB,P184_LINEID,P184_OPID,P184_BEGIN,P184_END:&FAB_ID.,&LINE_ID.,&OP_ID.,&P183_BEGIN.,&P183_END.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2182718350709205721)
,p_chart_id=>wwv_flow_imp.id(2166186662499861645)
,p_seq=>20
,p_name=>unistr('\5DE5\5355\5E73\5747\65F6\957F(\5206\949F)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.NAME FAC_NAME,B.FAB_ID,D.AREA_ID OP_ID,D.NAME OP_NAME,C.AREA_ID LINE_ID,c.Name LINE_NAME,COUNT(*) TOTAL_COUNT,ROUND(SUM(ROUND((APEX_DATE_TO_UNIX_TS(END_TIME) - APEX_DATE_TO_UNIX_TS(BEGIN_TIME)) / 60, 2))/COUNT(*),2) DIS_TIME FROM TENANT_EVEN'
||'T A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'LEFT JOIN FND_AREAS C ON A.MAP_AREA_Y_ID = C.AREA_ID',
'LEFT JOIN FND_AREAS D ON A.MAP_AREA_X_ID = D.AREA_ID',
'WHERE A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID AND A.FAB_ID = :P183_FAB  AND A.MAP_AREA_X_ID = :P183_OPID AND A.CREATION_DATE>=TO_DATE(:P183_BEGIN,''YYYY-MM-DD'') AND A.CREATION_DATE<=TO_DATE(:P183_END,''YYYY-MM-DD'') AND A.END_TIME IS'
||' NOT NULL',
'GROUP BY B.NAME,B.FAB_ID,D.AREA_ID,D.NAME,C.AREA_ID,c.Name',
'ORDER BY COUNT(*) DESC;'))
,p_series_type=>'line'
,p_items_value_column_name=>'DIS_TIME'
,p_items_label_column_name=>'LINE_NAME'
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
 p_id=>wwv_flow_imp.id(2182721594300205753)
,p_chart_id=>wwv_flow_imp.id(2166186662499861645)
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
 p_id=>wwv_flow_imp.id(2166187761956861644)
,p_chart_id=>wwv_flow_imp.id(2166186662499861645)
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
 p_id=>wwv_flow_imp.id(2166187149725861645)
,p_chart_id=>wwv_flow_imp.id(2166186662499861645)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182718218423205719)
,p_name=>'P183_FAB'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182718249399205720)
,p_name=>'P183_OPID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182719697205205734)
,p_name=>'P183_BEGIN'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2182719801589205735)
,p_name=>'P183_END'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
