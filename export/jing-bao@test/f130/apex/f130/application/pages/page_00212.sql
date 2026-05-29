prompt --application/pages/page_00212
begin
--   Manifest
--     PAGE: 00212
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
 p_id=>212
,p_name=>unistr('\5C97\4F4D\70ED\529B\56FE')
,p_alias=>unistr('\5C97\4F4D\70ED\529B\56FE')
,p_step_title=>unistr('\5C97\4F4D\70ED\529B\56FE')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2145725087440808330)
,p_plug_name=>unistr('\5DE5\6BB5\5F02\5E38\5206\5E03')
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2145725204216808331)
,p_region_id=>wwv_flow_imp.id(2145725087440808330)
,p_chart_type=>'bar'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2145725282091808332)
,p_chart_id=>wwv_flow_imp.id(2145725204216808331)
,p_seq=>10
,p_name=>unistr('\5DE5\6BB5\5F02\5E38\5206\5E03')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT OP_NAME,OPID ,SUM(COUNT) S_COUNT FROM (',
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
'WHERE A.TYPE=1 AND B.FAB_ID=:P212_FAB ORDER BY A.SORT_NUM ASC) A ,( SELECT A.NAME,A.AREA_ID LINEID,B.NAME FND_NAME,A.SORT_NUM  FROM FND_AREAS A ',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.TYPE=2 AND B.FAB_ID=:P212_FAB  ORDER BY A.SORT_NUM ASC) B) AA',
'LEFT JOIN',
'(SELECT F1.NAME FND_NAME,G1.NAME OP_NAME,G2.NAME LINE_NAME,G2.AREA_ID LINEID,G1.AREA_ID OPID ,A1.WORK_SHIFT,A1.ARRIVAL_STATUS,COUNT(*) COUNT--,A1.ACTUAL_ARRIVAL_COUNT,A1.OUGHT_ARRIVAL_COUNT, ',
'FROM TENANT_HISTORY_FACTORY_POSITION_RECORD_COUNT A1',
'INNER JOIN MAPS_WORK_STATION_V B1 ON A1.MAPS_WORK_STATION_ID=B1.MAPS_WORK_STATION_ID',
'INNER JOIN FND_FAB F1 ON A1.FAB_ID = F1.FAB_ID',
'INNER JOIN FND_AREAS G1 ON B1.MAP_AREA_X_ID=G1.AREA_ID AND  G1.TYPE=1 AND G1.DEL_FLAG=0',
'INNER JOIN FND_AREAS G2 ON B1.MAP_AREA_Y_ID=G2.AREA_ID AND  G2.TYPE=2 AND G2.DEL_FLAG=0',
'WHERE F1.FAB_ID =:P212_FAB AND A1.WORK_DATE>=TO_DATE(:P212_BEGIN_DATE,''yyyy-MM-dd'') AND A1.WORK_DATE<TO_DATE(:P212_END_DATE,''yyyy-MM-dd'')+1',
'AND A1.TENANT_ID = :USERTENANT AND A1.WORK_SHIFT = :P212_WORK_SHIFT AND A1.ARRIVAL_STATUS=:P212_TYPE',
'GROUP BY F1.NAME,G1.NAME,G2.NAME,G2.AREA_ID,G1.AREA_ID,A1.WORK_SHIFT,A1.ARRIVAL_STATUS--,A1.MAPS_WORK_STATION_NAME',
') GG ON AA.OP_NAME = GG.OP_NAME AND AA.LINE_NAME = GG.LINE_NAME',
'ORDER BY AA.LINEID ASC,AA.OPID ASC',
')',
'GROUP BY OP_NAME,OPID'))
,p_ajax_items_to_submit=>'P212_BEGIN_DATE,P212_END_DATE,P212_FAB,P212_WORK_SHIFT,P212_TYPE'
,p_items_value_column_name=>'S_COUNT'
,p_items_label_column_name=>'OP_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:213:&SESSION.::&DEBUG.:213:P213_BEGIN,P213_END,P213_FAB,P213_OPID,P213_TYPE,P213_WORK_SHIFT:&P212_BEGIN_DATE.,&P212_END_DATE.,&P212_FAB.,&OPID.,&P212_TYPE.,&P212_WORK_SHIFT.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2145725393821808333)
,p_chart_id=>wwv_flow_imp.id(2145725204216808331)
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
 p_id=>wwv_flow_imp.id(2145725510833808334)
,p_chart_id=>wwv_flow_imp.id(2145725204216808331)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2263093880209720684)
,p_plug_name=>unistr('\67E5\8BE2')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2267798945890196652)
,p_plug_name=>unistr('\70ED\529B\56FE')
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2263093754879720683)
,p_plug_name=>unistr('\56FE\8868')
,p_parent_plug_id=>wwv_flow_imp.id(2267798945890196652)
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--hiddenOverflow:t-Form--xlarge:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BB.LINE_NAME x_axis_value,BB.OP_NAME y_axis_value,BB.COUNT heat_value FROM (',
'SELECT DISTINCT AA.LINE_NAME ,AA.OP_NAME,',
'(',
' CASE',
'   WHEN GG.COUNT IS NULL THEN 0',
'     ELSE GG.COUNT',
'       END',
') COUNT,GG.LINEID,GG.OPID',
'FROM',
'(SELECT A.NAME OP_NAME,B.NAME LINE_NAME FROM  ( SELECT A.NAME,B.NAME FND_NAME,A.SORT_NUM  FROM FND_AREAS A ',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.TYPE=1 AND B.FAB_ID=:P212_FAB ORDER BY A.SORT_NUM ASC) A ,( SELECT A.NAME,B.NAME FND_NAME,A.SORT_NUM  FROM FND_AREAS A ',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.TYPE=2 AND B.FAB_ID=:P212_FAB  ORDER BY A.SORT_NUM ASC) B) AA',
'LEFT JOIN',
'(SELECT F1.NAME FND_NAME,G1.NAME OP_NAME,G2.NAME LINE_NAME,G2.SORT_NUM LINEID,G1.SORT_NUM OPID ,COUNT(A1.ARRIVAL_STATUS) COUNT FROM TENANT_HISTORY_FACTORY_POSITION_RECORD_COUNT A1',
'LEFT JOIN MAPS_WORK_STATION_V B1 ON A1.MAPS_WORK_STATION_ID=B1.MAPS_WORK_STATION_ID',
'LEFT JOIN FND_FAB F1 ON A1.FAB_ID = F1.FAB_ID',
'LEFT JOIN FND_AREAS G1 ON B1.MAP_AREA_X_ID=G1.AREA_ID AND  G1.TYPE=1 AND G1.DEL_FLAG=0',
'LEFT JOIN FND_AREAS G2 ON B1.MAP_AREA_Y_ID=G2.AREA_ID AND  G2.TYPE=2 AND G2.DEL_FLAG=0',
'WHERE F1.FAB_ID =:P212_FAB AND A1.WORK_DATE>=TO_DATE(:P212_BEGIN_DATE,''yyyy-MM-dd'') AND A1.WORK_DATE<TO_DATE(:P212_END_DATE,''yyyy-MM-dd'')+1',
'AND A1.TENANT_ID = :USERTENANT AND A1.WORK_SHIFT = :P212_WORK_SHIFT AND A1.ARRIVAL_STATUS=:P212_TYPE',
'GROUP BY F1.NAME,G1.NAME,G2.NAME,G2.SORT_NUM,G1.SORT_NUM',
') GG ON AA.OP_NAME = GG.OP_NAME AND AA.LINE_NAME = GG.LINE_NAME',
'ORDER BY GG.LINEID ASC,GG.OPID ASC)BB',
'ORDER BY BB.LINEID,BB.OPID'))
,p_plug_source_type=>'PLUGIN_ORCLKING.HEAT.MAP.CHART'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '999',
  'attribute_02', '600',
  'attribute_03', unistr('\5C97\4F4D\70ED\529B\56FE'))).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2135119701816919280)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2263093880209720684)
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286747086875554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2122013491937959655)
,p_name=>'P212_WORK_SHIFT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2263093880209720684)
,p_item_default=>'DAY_SHIFT'
,p_prompt=>unistr('\767D\591C\73ED')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\767D\73ED;DAY_SHIFT,\591C\73ED;NIGHT_SHIFT')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2122013911433959659)
,p_name=>'P212_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2263093880209720684)
,p_item_default=>'MORE'
,p_prompt=>unistr('\7EDF\8BA1\7C7B\578B')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\4EBA\5458\8FC7\5269;MORE,\5C97\4F4D\7F3A\4EBA;LESS')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2135120105352919278)
,p_name=>'P212_BEGIN_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2263093880209720684)
,p_item_default=>'sysdate-6'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\5F00\59CB\65E5\671F')
,p_format_mask=>'yyyy-MM-dd'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2135120543091919275)
,p_name=>'P212_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2263093880209720684)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\622A\6B62\65E5\671F')
,p_format_mask=>'yyyy-MM-dd'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2135120899028919275)
,p_name=>'P212_FAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2263093880209720684)
,p_item_default=>'1'
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\7EC4\4EF6\4E00\5382;22,\7EC4\4EF6\4E8C\5382;1')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2135122214851919259)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2135122753540919258)
,p_event_id=>wwv_flow_imp.id(2135122214851919259)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',88,''\70ED\529B\56FE\6D4B\8BD5'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
