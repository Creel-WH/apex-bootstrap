prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_name=>unistr('\6676\8C79\63A8\9001\56FE\8868')
,p_alias=>unistr('\6676\8C79\63A8\9001\56FE\8868')
,p_step_title=>unistr('\7F51\683C\6570\503C\8D8A\5927\FF0C\5904\7406\65F6\95F4\8D8A\957F')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2156855203066282494)
,p_plug_name=>unistr('\65B0\5EFA')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2286629353441554723)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2286748345485554784)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2244336160329591608)
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
 p_id=>wwv_flow_imp.id(2244430810493553372)
,p_plug_name=>unistr('\6676\8C79\63A8\9001\56FE\8868')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2244431197669553373)
,p_region_id=>wwv_flow_imp.id(2244430810493553372)
,p_chart_type=>'combo'
,p_title=>unistr('\6676\8C79\4E8B\4EF6\5904\7406\65F6\95F4\5BF9\6BD4\56FE\FF08\5206\FF09')
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
 p_id=>wwv_flow_imp.id(2244432918156553374)
,p_chart_id=>wwv_flow_imp.id(2244431197669553373)
,p_seq=>10
,p_name=>unistr('\5E73\5747\7528\65F6\FF08\5206\949F\FF09')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM TABLE(APEX_PAK_FABLO.GET_TOTAL_AVG_DATA(:P94_BEGIN,:P94_END,:P94_FAB,:P94_LINE,:P94_OP))',
'WHERE TENANT_ID = :USERTENANT',
'-- AND BASE_DEPT_ID = :BASE_DEPT_ID',
''))
,p_ajax_items_to_submit=>'P94_BEGIN,P94_END'
,p_series_type=>'line'
,p_items_value_column_name=>'AVG_TIME'
,p_group_short_desc_column_name=>'CREATE_DATE'
,p_items_label_column_name=>'CREATE_DATE'
,p_color=>'#f91b1b'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'on'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2244444288194712870)
,p_chart_id=>wwv_flow_imp.id(2244431197669553373)
,p_seq=>20
,p_name=>unistr('\9009\62E9\7EF4\5EA6\5E73\5747\7528\65F6\FF08\5206\949F\FF09')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM TABLE(APEX_PAK_FABLO.GET_DETAIL_AVG_DATA(:P94_BEGIN,:P94_END,:P94_FAB,:P94_LINE,:P94_OP))',
'WHERE TENANT_ID = :USERTENANT'))
,p_ajax_items_to_submit=>'P94_BEGIN,P94_END'
,p_series_type=>'line'
,p_items_value_column_name=>'AVG_TIME'
,p_items_label_column_name=>'CREATE_DATE'
,p_color=>'#0ed43a'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'on'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2244444510409712872)
,p_chart_id=>wwv_flow_imp.id(2244431197669553373)
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
 p_id=>wwv_flow_imp.id(2244432286995553374)
,p_chart_id=>wwv_flow_imp.id(2244431197669553373)
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
 p_id=>wwv_flow_imp.id(2244431692972553374)
,p_chart_id=>wwv_flow_imp.id(2244431197669553373)
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
 p_id=>wwv_flow_imp.id(2244444598764712873)
,p_plug_name=>unistr('\7F51\683C\6570\503C\8D8A\5927\FF0C\5904\7406\65F6\95F4\8D8A\957F')
,p_region_template_options=>'#DEFAULT#:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BB.LINE_NAME x_axis_value, BB.OP_NAME y_axis_value, BB.COUNT heat_value',
'FROM (SELECT DISTINCT AA.LINE_NAME,',
'                      AA.OP_NAME,',
'                      AA.OP_SORT,',
'                      AA.LINE_SORT,',
'                      (',
'                          CASE',
'                              WHEN GG.AVGS IS NULL THEN 0',
'                              ELSE GG.AVGS',
'                              END',
'                          ) COUNT,',
'                      GG.LINEID,',
'                      GG.OPID',
'      FROM (SELECT B.NAME LINE_NAME, A.NAME OP_NAME, A.SORT_NUM OP_SORT, B.SORT_NUM LINE_SORT',
'            FROM (SELECT A.NAME, B.NAME FND_NAME, A.SORT_NUM',
'                  FROM FND_AREAS A',
'                           LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'                  WHERE A.TYPE = 1',
'                    AND B.NAME = :P94_FAB',
'                    -- AND A.BASE_DEPT_ID = :BASE_DEPT_ID',
'                    -- AND B.BASE_DEPT_ID = :BASE_DEPT_ID',
'                  ORDER BY A.SORT_NUM ASC) A,',
'                 (SELECT A.NAME, B.NAME FND_NAME, A.SORT_NUM',
'                  FROM FND_AREAS A',
'                           LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'                  WHERE A.TYPE = 2',
'                    AND B.NAME = :P94_FAB',
'                    -- AND A.BASE_DEPT_ID = :BASE_DEPT_ID',
'                    -- AND B.BASE_DEPT_ID = :BASE_DEPT_ID',
'                  ORDER BY A.Sort_Num ASC) B) AA',
'               LEFT JOIN',
'           (SELECT B.FAB_NAME,',
'                   B.LINE_NAME,',
'                   B.OP_NAME,',
'                   B.LINEID,',
'                   B.OPID,',
'                   CASE',
'                       WHEN A.AVG_TIME = 0 THEN 0',
'                       ELSE ROUND(B.AVG_TIME / A.AVG_TIME, 2)',
'                       END AVGS',
'            FROM (SELECT T.FAB_NAME,',
'                         T.OP_NAME,',
'                         SUM(T.LAST_TIME)                                  TOTALTIME,',
'                         COUNT(*)                                          COUNT,',
'                         CASE',
'                             WHEN COUNT(*) = 0 THEN 0',
'                             ELSE',
'                                 ROUND(SUM(T.LAST_TIME) / COUNT(*), 0) END AVG_TIME',
'                  FROM V_DEAL_EVENT_TIME_LO T',
'                  WHERE T.fab_name = :P94_FAB',
'-- AND T.BASE_DEPT_ID = :BASE_DEPT_ID',
'                    AND TO_DATE(T.CREATE_DATE, ''yyyy-MM-dd'') > TO_DATE(:P94_BEGIN, ''yyyy-mm-dd'')',
'                    AND TO_DATE(T.CREATE_DATE, ''yyyy-MM-dd'') < TO_DATE(:P94_END, ''yyyy-mm-dd'') + 1',
'                    AND T.TENANT_ID = :USERTENANT',
'                  GROUP BY T.FAB_NAME, T.OP_NAME) A',
'                     LEFT JOIN (SELECT T.FAB_NAME,',
'                                       T.LINE_NAME,',
'                                       T.OP_NAME,',
'                                       SUM(T.LAST_TIME)                                   TOTALTIME,',
'                                       T.LINEID,',
'                                       T.OPID,',
'                                       COUNT(*)                                           COUNT,',
'                                       CASE',
'                                           WHEN COUNT(*) = 0 THEN 0',
'                                           ELSE ROUND(SUM(T.LAST_TIME) / COUNT(*), 0) END AVG_TIME',
'                                FROM V_DEAL_EVENT_TIME_LO T',
'                                WHERE T.fab_name = :P94_FAB',
'-- AND T.BASE_DEPT_ID = :BASE_DEPT_ID',
'                                  AND TO_DATE(T.CREATE_DATE, ''yyyy-MM-dd'') > TO_DATE(:P94_BEGIN, ''yyyy-mm-dd'')',
'                                  AND TO_DATE(T.CREATE_DATE, ''yyyy-MM-dd'') < TO_DATE(:P94_END, ''yyyy-mm-dd'') + 1',
'                                  AND T.TENANT_ID = :USERTENANT',
'                                GROUP BY T.FAB_NAME, T.OP_NAME, T.LINE_NAME, T.LINEID, T.OPID) B',
'                               ON A.FAB_NAME = B.FAB_NAME AND A.OP_NAME = B.OP_NAME) GG',
'           ON AA.LINE_NAME = GG.LINE_NAME AND AA.OP_NAME = GG.OP_NAME',
'      ORDER BY AA.LINE_SORT ASC, AA.OP_SORT ASC) BB',
'ORDER BY BB.LINE_SORT ASC, BB.OP_SORT ASC;'))
,p_plug_source_type=>'PLUGIN_ORCLKING.HEAT.MAP.CHART'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '600',
  'attribute_02', '400',
  'attribute_03', unistr('\6676\8C79\4E8B\4EF6\70ED\529B\56FE'))).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244336651303591613)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2244336160329591608)
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244336253709591609)
,p_name=>'P94_BEGIN'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2244336160329591608)
,p_item_default=>'sysdate-7'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\5F00\59CB\65E5\671F')
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
 p_id=>wwv_flow_imp.id(2244336391078591610)
,p_name=>'P94_END'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2244336160329591608)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\622A\6B62\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244336452762591611)
,p_name=>'P94_FAB'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2244336160329591608)
,p_item_default=>unistr('\7EC4\4EF6\4E8C\5382')
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select  NAME KEY,NAME VAL from FND_FAB where tenant_id = :usertenant and BASE_DEPT_ID=:BASE_DEPT_ID;'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244336579680591612)
,p_name=>'P94_LINE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2244336160329591608)
,p_prompt=>unistr('\4EA7\7EBF')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select NAME key, name val from FND_AREAS where FAB_ID=:P94_FAB and TYPE=2 and DEL_FLAG=0 and BASE_DEPT_ID=:BASE_DEPT_ID;'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P94_FAB'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244336756734591614)
,p_name=>'P94_OP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2244336160329591608)
,p_prompt=>unistr('\533A\57DF')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select NAME key, name val from FND_AREAS where FAB_ID=:P94_FAB and TYPE=2 and DEL_FLAG=0 and BASE_DEPT_ID=:BASE_DEPT_ID;'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P94_FAB'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2150902557637574380)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150902682027574381)
,p_event_id=>wwv_flow_imp.id(2150902557637574380)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',94,''\6676\8C79\63A8\9001\56FE\8868'');'),
'end;'))
,p_attribute_02=>'P94_BEGIN,P94_END,P94_FAB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
