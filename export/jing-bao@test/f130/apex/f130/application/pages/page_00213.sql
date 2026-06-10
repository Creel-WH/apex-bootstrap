prompt --application/pages/page_00213
begin
--   Manifest
--     PAGE: 00213
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
 p_id=>213
,p_name=>unistr('\7EBF\522B\5F02\5E38\5206\5E03')
,p_alias=>unistr('\7EBF\522B\5F02\5E38\5206\5E03')
,p_step_title=>unistr('\7EBF\522B\5F02\5E38\5206\5E03')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2200704532622659708)
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
 p_id=>wwv_flow_imp.id(2200705111390659709)
,p_plug_name=>unistr('\7EBF\522B\5F02\5E38\5206\5E03')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2200705558473659709)
,p_region_id=>wwv_flow_imp.id(2200705111390659709)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
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
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2200707242952659710)
,p_chart_id=>wwv_flow_imp.id(2200705558473659709)
,p_seq=>10
,p_name=>unistr('\7EBF\522B\5F02\5E38\5206\5E03')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OP_NAME,OPID,LINE_NAME,LINEID ,SUM(COUNT) S_COUNT FROM (',
'SELECT DISTINCT AA.LINE_NAME ,AA.OP_NAME,',
'(',
' CASE',
'   WHEN GG.COUNT IS NULL THEN 0',
'     ELSE GG.COUNT',
'       END',
') COUNT,AA.LINEID,AA.OPID',
'FROM',
'(SELECT A.NAME OP_NAME,B.NAME LINE_NAME,A.OPID,B.LINEID FROM  ( SELECT A.NAME,A.AREA_ID OPID,B.NAME FND_NAME,A.SORT_NUM  FROM FND_AREAS A ',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.TYPE=1 AND B.FAB_ID=:P213_FAB ORDER BY A.SORT_NUM ASC) A ,( SELECT A.NAME,A.AREA_ID LINEID,B.NAME FND_NAME,A.SORT_NUM  FROM FND_AREAS A ',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.TYPE=2 AND B.FAB_ID=:P213_FAB  ORDER BY A.SORT_NUM ASC) B) AA',
'LEFT JOIN',
'(SELECT F1.NAME FND_NAME,G1.NAME OP_NAME,G2.NAME LINE_NAME,G2.AREA_ID LINEID,G1.AREA_ID OPID ,A1.WORK_SHIFT,A1.ARRIVAL_STATUS,COUNT(*) COUNT--,A1.ACTUAL_ARRIVAL_COUNT,A1.OUGHT_ARRIVAL_COUNT, ',
'FROM TENANT_HISTORY_FACTORY_POSITION_RECORD_COUNT A1',
'INNER JOIN MAPS_WORK_STATION_V B1 ON A1.MAPS_WORK_STATION_ID=B1.MAPS_WORK_STATION_ID',
'INNER JOIN FND_FAB F1 ON A1.FAB_ID = F1.FAB_ID',
'INNER JOIN FND_AREAS G1 ON B1.MAP_AREA_X_ID=G1.AREA_ID AND  G1.TYPE=1 AND G1.DEL_FLAG=0',
'INNER JOIN FND_AREAS G2 ON B1.MAP_AREA_Y_ID=G2.AREA_ID AND  G2.TYPE=2 AND G2.DEL_FLAG=0',
'WHERE F1.FAB_ID =:P213_FAB AND A1.WORK_DATE>=TO_DATE(:P213_BEGIN,''yyyy-MM-dd'') AND A1.WORK_DATE<TO_DATE(:P213_END,''yyyy-MM-dd'')+1',
'AND A1.TENANT_ID = :USERTENANT AND A1.WORK_SHIFT = :P213_WORK_SHIFT AND A1.ARRIVAL_STATUS=:P213_TYPE',
'GROUP BY F1.NAME,G1.NAME,G2.NAME,G2.AREA_ID,G1.AREA_ID,A1.WORK_SHIFT,A1.ARRIVAL_STATUS',
') GG ON AA.OP_NAME = GG.OP_NAME AND AA.LINE_NAME = GG.LINE_NAME ',
'WHERE AA.OPID=:P213_OPID',
'ORDER BY AA.LINEID ASC,AA.OPID ASC',
')',
'GROUP BY OP_NAME,OPID,LINE_NAME,LINEID',
'ORDER BY LINEID ASC;'))
,p_items_value_column_name=>'S_COUNT'
,p_group_short_desc_column_name=>'LINE_NAME'
,p_items_label_column_name=>'LINE_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:214:&SESSION.::&DEBUG.:214:P214_BEGIN,P214_END,P214_FAB,P214_LINEID,P214_OPID,P214_TYPE,P214_WORK_SHIFT:&P213_BEGIN.,&P213_END.,&P213_FAB.,&LINEID.,&P213_OPID.,&P213_TYPE.,&P213_WORK_SHIFT.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2200706049910659710)
,p_chart_id=>wwv_flow_imp.id(2200705558473659709)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2200706652227659710)
,p_chart_id=>wwv_flow_imp.id(2200705558473659709)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2189967371935739329)
,p_name=>'P213_BEGIN'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2189967473316739330)
,p_name=>'P213_END'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2189967609381739331)
,p_name=>'P213_FAB'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2189967711289739332)
,p_name=>'P213_TYPE'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2189967781465739333)
,p_name=>'P213_WORK_SHIFT'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2189967961525739334)
,p_name=>'P213_OPID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
