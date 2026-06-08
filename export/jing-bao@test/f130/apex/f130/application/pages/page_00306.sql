prompt --application/pages/page_00306
begin
--   Manifest
--     PAGE: 00306
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
 p_id=>306
,p_name=>unistr('\6570\636E\8D8B\52BF')
,p_alias=>unistr('\6570\636E\8D8B\52BF')
,p_step_title=>unistr('\6570\636E\8D8B\52BF')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(295040031703985010)
,p_javascript_code=>'var change_content;'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(281066640513691566)
,p_plug_name=>unistr('\6570\636E\8D8B\52BF')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>190
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(281066658194691567)
,p_region_id=>wwv_flow_imp.id(281066640513691566)
,p_chart_type=>'line'
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
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(options) {',
'   ',
unistr('    // \8BBE\7F6E\56FE\8868\521D\59CB\5316\9009\9879'),
'    // options.type = "line";',
'    options.yAxis.step = ''&P306_STEP.'';',
'    options.yAxis.min = ''&P306_Y_MIN.'';',
'    options.yAxis.max = ''&P306_Y_MAX.'';',
'    console.log(''options'', options)',
unistr('    // \8BBE\7F6EY\8F74\5C0F\6570\4F4D\6570'),
'    options.yAxis.tickLabel.converter.maximumFractionDigits = 2;',
'    options.yAxis.tickLabel.converter.minimumFractionDigits = 2;',
unistr('    // options.yAxis.tickLabel.converter.style = ''decimal''; //\5C0F\6570'),
unistr('        options.yAxis.tickLabel.converter.style = ''percent''; // \6539\4E3A\767E\5206\6BD4\5F62\5F0F'),
'',
unistr('    // \8BBE\7F6EY\8F74\5185\5BB9\548Ctips\5C0F\6570\4F4D\6570'),
'    options.valueFormats.value.converter.maximumFractionDigits = 2;',
'    options.valueFormats.value.converter.minimumFractionDigits = 2;',
unistr('    // options.valueFormats.value.converter.style =''decimal'';//\5C0F\6570'),
unistr('    options.valueFormats.value.converter.style =''percent'';// \6539\4E3A\767E\5206\6BD4\5F62\5F0F'),
'',
'',
'    options.valueFormats.label.converter.maximumFractionDigits = 2;',
'    options.valueFormats.label.converter.minimumFractionDigits = 2;',
unistr('    // options.valueFormats.label.converter.style =''decimal'';//\5C0F\6570'),
unistr('    options.valueFormats.label.converter.style =''percent'';// \6539\4E3A\767E\5206\6BD4\5F62\5F0F'),
'',
'',
'',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(281066834797691568)
,p_chart_id=>wwv_flow_imp.id(281066658194691567)
,p_seq=>10
,p_name=>unistr('\6570\636E\8D8B\52BF-\6298\7EBF\56FE')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(START_TIME,''yyyy-mm-dd hh24:mi:ss'') START_TIME,',
'       to_char(END_TIME,''yyyy-mm-dd hh24:mi:ss'') END_TIME,',
'       DATE_FORMAT,',
'       VALUE / 100                          val_rate,',
'       to_char(VALUE, ''fm999990.099'') || ''%'' val_msg',
'from CHECK_DEVICE_THIRD_PARTY_VALUE',
'where BASE_DEPT_ID = :BASE_DEPT_ID',
'  and DATA_TYPE = ''EFFICIENCY'' and STATUS=''NORMAL''',
'   and DEVICE_CODE = :P306_DEVICE ',
unistr('--   and (DEVICE_CODE = :P306_DEVICE OR NVL(:P306_DEVICE ,''All'') =''All'')   --wxx 2024-12-02  \65B0\52A0'),
'  and START_TIME >= (case',
'                         when :P306_SHIFT = ''DAY_SHIFT'' then',
'                             trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'')) + 8 / 24',
'                         else trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'') ) + 20 / 24 end)',
'  and END_TIME <= (case',
'                       when :P306_SHIFT = ''DAY_SHIFT'' then',
'                           trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'')) + 20 / 24',
'                       else trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd''))+1 + 8 / 24 end)',
'order by START_TIME;'))
,p_ajax_items_to_submit=>'P306_CHANGE_DATE,P306_SHIFT,P306_DEVICE'
,p_items_value_column_name=>'VAL_RATE'
,p_items_label_column_name=>'DATE_FORMAT'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'on'
,p_marker_shape=>'diamond'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'aboveMarker'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'javascript:$s(''P306_TIME_RNAGE'',''&DATE_FORMAT.''),$s(''P306_VAL_RATE'',''&VAL_MSG.''),$s(''P306_START_TIME'',''&START_TIME.''),$s(''P306_END_TIME'',''&END_TIME.'');'
,p_link_target_type=>'REDIRECT_URL'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(281066910002691569)
,p_chart_id=>wwv_flow_imp.id(281066658194691567)
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
 p_id=>wwv_flow_imp.id(281067017328691570)
,p_chart_id=>wwv_flow_imp.id(281066658194691567)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_min=>.2665
,p_max=>.274
,p_format_type=>'percent'
,p_decimal_places=>2
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>.0005
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
 p_id=>wwv_flow_imp.id(281067857655691579)
,p_plug_name=>unistr('\53D8\66F4\70B9\8BB0\5F55')
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(2359799455309135295)
,p_plug_display_sequence=>200
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<!-- <span>\5F53\524D\65F6\95F4\6BB5:&P306_TIME_RNAGE.</span><br/>'),
unistr('<span>\6548\7387\503C:&P306_VAL_RATE.</span> -->'),
'',
'<div class="change_log_div">',
'',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(243709736635754966)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(281066640513691566)
,p_button_name=>unistr('\8BBE\7F6E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\8BBE\7F6E')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(235999679520995730)
,p_button_sequence=>180
,p_button_name=>unistr('\4E0B\8F7D\6570\636E\8D8B\52BF')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\8F7D\6570\636E\8D8B\52BF')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:308:&SESSION.::&DEBUG.:308::'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(243709344624754962)
,p_name=>'P306_Y_MIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(281066640513691566)
,p_item_default=>'0.2665'
,p_prompt=>unistr('Y\8F74\6700\5C0F\503C')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(243709464977754963)
,p_name=>'P306_Y_MAX'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(281066640513691566)
,p_item_default=>'0.2740'
,p_prompt=>unistr('Y\8F74\6700\5927\503C')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(243709560512754964)
,p_name=>'P306_STEP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(281066640513691566)
,p_item_default=>'0.0005'
,p_prompt=>unistr('Y\8F74\6B65\8FDB')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281066083451691561)
,p_name=>'P306_CHANGE_DATE'
,p_item_sequence=>80
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if sysdate >= trunc(sysdate, ''dd'') + 8 / 24 then',
'        return sysdate;',
'    else',
'        return sysdate-1;',
'    end if;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\65E5\671F')
,p_placeholder=>unistr('\8BF7\9009\62E9\65E5\671F')
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
 p_id=>wwv_flow_imp.id(281066207291691562)
,p_name=>'P306_DEVICE'
,p_item_sequence=>120
,p_item_default=>'All'
,p_prompt=>unistr('\8BBE\5907')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select to_nchar(''\5168\90E8''), to_nchar(''All'')'),
'from dual',
'union all',
'select distinct DEVICE_CODE, DEVICE_CODE',
'from CHECK_DEVICE_THIRD_PARTY_VALUE',
'where BASE_DEPT_ID = :BASE_DEPT_ID',
'  and DATA_TYPE = ''EFFICIENCY'' and STATUS=''NORMAL''',
'  and DEVICE_CODE != ''All''',
'  and START_TIME >= (case',
'                         when :P306_SHIFT = ''DAY_SHIFT'' then',
'                             trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'')) + 8 / 24',
'                         else trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'') - 1) + 20 / 24 end)',
'  and END_TIME <= (case',
'                       when :P306_SHIFT = ''DAY_SHIFT'' then',
'                           trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'')) + 20 / 24',
'                       else trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'')) + 8 / 24 end);'))
,p_lov_cascade_parent_items=>'P306_SHIFT,P306_CHANGE_DATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281066342604691563)
,p_name=>'P306_AREA_NAME'
,p_item_sequence=>110
,p_item_default=>'-1'
,p_prompt=>unistr('\533A\57DF ')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''\5168\90E8'', -1'),
'from dual',
'union all',
'select distinct AREA_NAME, AREA_ID',
'from CHECK_CHANGE_RECORD',
'where DEPT_ID = decode(:P306_DEPT_NAME,-1,DEPT_ID,:P306_DEPT_NAME)',
'  and BASE_DEPT_ID = :BASE_DEPT_ID',
'  and CREATION_DATE >= (case',
'                            when :P306_SHIFT = ''DAY_SHIFT'' then',
'                                trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'')) + 8 / 24',
'                            else trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'') - 1) + 20 / 24 end)',
'  and CREATION_DATE <= (case',
'                            when :P306_SHIFT = ''DAY_SHIFT'' then',
'                                trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'')) + 20 / 24',
'                            else trunc(to_date(:P306_CHANGE_DATE, ''yyyy-mm-dd'')) + 8 / 24 end);'))
,p_lov_cascade_parent_items=>'P306_DEPT_NAME,P306_SHIFT,P306_CHANGE_DATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281066381446691564)
,p_name=>'P306_DEPT_NAME'
,p_item_sequence=>100
,p_item_default=>'-1'
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select to_nchar(''\5168\90E8''), -1'),
'from dual',
'union all',
'select d.NAME, d.EXT_ORG_ID',
'from MPF_SHARE_DEPT_V d',
'where d.BASE_DEPT_ID = :BASE_DEPT_ID',
'  and d.DEL_FLAG = 0',
'  and exists(',
'        select 1',
'        from CHECK_CHANGE_LIBRARY r',
'        where r.BASE_DEPT_ID = :BASE_DEPT_ID',
'          and r.DEL_FLAG = 0',
'          and r.DEPT_ID = d.EXT_ORG_ID',
'    );'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281066494942691565)
,p_name=>'P306_SHIFT'
,p_item_sequence=>90
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if sysdate >= trunc(sysdate, ''dd'') + 8 / 24 or sysdate <= trunc(sysdate, ''dd'') + 20 / 24 then',
'        return ''DAY_SHIFT'';',
'    else',
'        return ''NIGHT_SHIFT'';',
'    end if;',
'end;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\73ED\6B21')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\767D\73ED;DAY_SHIFT,\591C\73ED;NIGHT_SHIFT')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281067664637691577)
,p_name=>'P306_START_TIME'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(281067813264691578)
,p_name=>'P306_END_TIME'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308013473532725934)
,p_name=>'P306_TIME_RNAGE'
,p_item_sequence=>160
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308013643602725935)
,p_name=>'P306_VAL_RATE'
,p_item_sequence=>150
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308014126140725940)
,p_name=>'P306_MSG_DATA'
,p_data_type=>'CLOB'
,p_item_sequence=>170
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(281067051250691571)
,p_name=>unistr('\66F4\65B0\65F6\95F4')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P306_CHANGE_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281067208934691572)
,p_event_id=>wwv_flow_imp.id(281067051250691571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(281066640513691566)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(281067309793691573)
,p_name=>unistr('\66F4\65B0\73ED\6B21')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P306_SHIFT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281067389514691574)
,p_event_id=>wwv_flow_imp.id(281067309793691573)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(281066640513691566)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(281067471710691575)
,p_name=>unistr('\66F4\65B0\8BBE\5907')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P306_DEVICE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(281067596450691576)
,p_event_id=>wwv_flow_imp.id(281067471710691575)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(281066640513691566)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(308013087611725930)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(308013145863725931)
,p_event_id=>wwv_flow_imp.id(308013087611725930)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(281067857655691579)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(308013326299725932)
,p_name=>unistr('\66F4\6539\5F00\59CB\65F6\95F4')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P306_TIME_RNAGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(308014000589725939)
,p_event_id=>wwv_flow_imp.id(308013326299725932)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('sql\65B9\6848')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg  varchar2(2000);',
'    v_clob     clob;',
'    v_loop_num number(20) := 0;',
'begin',
'',
unistr('    for c in (select ''\8BBE\5907\7F16\7801: '' || d.DEVICE_CODE || ''</br>'' ||'),
unistr('                     ''\533A\57DF: '' || r.AREA_NAME || ''</br>'' ||'),
unistr('                     ''\53D8\66F4\5185\5BB9: '' || t.CONTENT || ''</br>'' ||'),
unistr('                     ''\5907\6CE8: '' || r.REMARK || ''</br>'' ||'),
unistr('                     ''\8BB0\5F55\4EBA: '' || r.RECORD_JOB_NUMBER || ''-'' || r.RECORD_NAME || ''</br>'' || '),
unistr('                     ''\8BB0\5F55\65F6\95F4: '' || to_char(r.CREATION_DATE, ''yyyy-mm-dd hh24:mi:ss'')  || ''</br>'' ||'),
unistr('                     ''\5F71\54CD\65F6\95F4\FF08\5206\949F\FF09:'' || r.EFFECT_MINUTE  msg'),
'              from CHECK_CHANGE_RECORD r',
'                       left join CHECK_CHANGE_RECORD_ITEM t on r.RECORD_ID = t.RECORD_ID',
'                       left join CHECK_CHANGE_RECORD_DEVICE d on r.RECORD_ID = d.RECORD_ID',
'              where',
'--                     r.DEPT_ID = 100000000006250',
'                  r.DEPT_ID = decode(:P306_DEPT_NAME, -1, r.DEPT_ID, :P306_DEPT_NAME)',
'                and r.AREA_ID = decode(:P306_AREA_NAME, -1, r.AREA_ID, :P306_AREA_NAME)',
'                and r.BASE_DEPT_ID = :BASE_DEPT_ID',
'                and r.CREATION_DATE >= to_date(:P306_START_TIME, ''yyyy-mm-dd hh24:mi:ss'')',
'                and r.CREATION_DATE <= to_date(:P306_END_TIME, ''yyyy-mm-dd hh24:mi:ss'')',
'              order by r.CREATION_DATE desc)',
'        loop',
'            if v_loop_num < 1 then',
'                v_clob := v_clob ||',
'                          to_clob(''<div style="background-color: #EAEAEA;padding-left: 20px;padding-top: 10px;padding-bottom: 10px;line-height: 1.5;">'' ||',
'                                  c.msg || ''</div>'');',
'            else',
'                v_clob := v_clob || to_clob(''</br>'' ||',
'                                            ''<div style="background-color: #EAEAEA;padding-left: 20px;padding-top: 10px;padding-bottom: 10px;line-height: 1.5;">'' ||',
'                                            c.msg || ''</div>'');',
'            end if;',
'            v_loop_num := v_loop_num + 1;',
'        end loop;',
'',
'    apex_util.set_session_state(''P306_MSG_DATA'', v_clob);',
'',
'    apex_json.open_object;',
'    apex_json.write(''data'', v_clob);',
'    apex_json.close_all;',
'',
'exception',
'    when others then',
'        apex_json.open_object;',
'        apex_json.write(''data'', '' '');',
'        apex_json.close_all;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'',
'end;'))
,p_attribute_02=>'P306_DEPT_NAME,P306_AREA_NAME,P306_START_TIME,P306_END_TIME'
,p_attribute_03=>'P306_MSG_DATA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>-wwv_flow_imp.id(2204005795769225463)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(308014447669725944)
,p_event_id=>wwv_flow_imp.id(308013326299725932)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('ajax\65B9\6848')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#change_log'').remove();',
'',
'',
'console.log(''0 P306_START_TIME:'' + $v(''P306_START_TIME'') + ''  P306_END_TIME:'' + $v(''P306_END_TIME''));',
'',
'setTimeout(function () {',
'    console.log(''1 P306_START_TIME:'' + $v(''P306_START_TIME'') + ''  P306_END_TIME:'' + $v(''P306_END_TIME''));',
'',
'    apex.server.process(''get_change_log_back'', {',
'        ''pageItems'': ''#P306_DEPT_NAME,#P306_AREA_NAME,#P306_START_TIME,#P306_END_TIME''',
'    }, {',
'        dataType: ''json'',',
'        success: function (data) {',
'            var log = '''';',
'            console.log(data);',
'            if (data.data) {',
'                log = JSON.parse(JSON.stringify(data.data))',
'',
'',
'            }',
'            change_content = `<div style="font:initial;" id="change_log"> ',
unistr('              <span style="line-height:2.5;"> \5F53\524D\65F6\95F4\6BB5: ${$v(''P306_TIME_RNAGE'')}</span><br/>'),
unistr('              <span>\6548\7387\503C: ${$v(''P306_VAL_RATE'')}</span></br></br><hr/>'),
'              <div> ${log}</div></div>`;',
'            console.log(change_content);',
'            $(''.change_log_div'').append(change_content);',
'',
'        },',
'        error: function (e) {',
'            console.log(e);',
'        }',
'    });',
'}, 200)',
'',
'',
'',
'',
'',
'',
'',
'',
'// change_content = `<div style="font:initial;" id="change_log"> ',
unistr('//               <span style="line-height:2.5;"> \5F53\524D\65F6\95F4\6BB5: ${$v(''P306_TIME_RNAGE'')}</span><br/>'),
unistr('//               <span>\6548\7387\503C: ${$v(''P306_VAL_RATE'')}</span></br></br><hr/>'),
'//               <div> ${$v(''P306_MSG_DATA'')}</div></div>`;',
'',
'// console.log(change_content);',
'// $(''.change_log_div'').append(change_content);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(308013777881725937)
,p_event_id=>wwv_flow_imp.id(308013326299725932)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(281067857655691579)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(308013426949725933)
,p_event_id=>wwv_flow_imp.id(308013326299725932)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(281067857655691579)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(243709801362754967)
,p_name=>unistr('\7528\6237\52A8\6001\8C03\6574\8F74\5750\6807')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(243709736635754966)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(243709935967754968)
,p_event_id=>wwv_flow_imp.id(243709801362754967)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_util.set_session_state(''P306_STEP'', :P306_STEP);',
'apex_util.set_session_state(''P306_Y_MAX'', :P306_Y_MAX);',
'apex_util.set_session_state(''P306_Y_MIN'', :P306_Y_MIN);',
''))
,p_attribute_02=>'P306_Y_MIN,P306_Y_MAX,P306_STEP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(243710045971754969)
,p_event_id=>wwv_flow_imp.id(243709801362754967)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(308014424427725943)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_change_log'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg  varchar2(2000);',
'    v_clob     clob;',
'    v_loop_num number(20) := 0;',
'begin',
'',
'    for c in (select DEVICE_CODE ||',
'                     AREA_NAME ||',
unistr('--                      ''\53D8\66F4\5185\5BB9:</br><div style="margin-left: 10%;"> '' || listagg(img, ''</br>'') || listagg(CONTENT, '' '') ||'),
unistr('                     ''\53D8\66F4\5185\5BB9:</br><div style="margin-left: 10%;line-height: 1.7;">'' || listagg(CONTENT, '' '') ||'),
'                     ''</div>'' ||''<div style="float: left;">'' ||listagg(distinct img, ''</br>'') ||''</div>'' ||',
'                     REMARK ||',
'                     RECORD_NAME ||',
'                     CREATION_DATE msg',
'              from (select r.RECORD_ID,',
'                           (select listagg( ''<img style="width: 50%;" src="'' ||  data_val || ''" />'',''</br>'') from JA_UTILS_PKG.SPLIT_STR(r.IMAGES, '','')) img,',
unistr('                           ''\8BBE\5907\7F16\7801: '' || d.DEVICE_CODE || ''</br>''                                                   DEVICE_CODE,'),
unistr('                           ''\533A\57DF: '' || r.AREA_NAME || ''</br>''                                                       AREA_NAME,'),
unistr('                           ''\53D8\66F4\9879\63CF\8FF0: '' || t.ITEM_NAME || '';</br>\586B\5199\5185\5BB9:'' || t.CONTENT || '';</br>''                     CONTENT,'),
unistr('                           ''\5907\6CE8: '' || r.REMARK || ''</br>''                                                          REMARK,'),
unistr('                           ''\8BB0\5F55\4EBA: '' || r.RECORD_JOB_NUMBER || ''-'' || r.RECORD_NAME || ''</br>''                      RECORD_NAME,'),
unistr('                           ''\8BB0\5F55\65F6\95F4: '' || to_char(r.CREATION_DATE, ''yyyy-mm-dd hh24:mi:ss'')                          CREATION_DATE,'),
unistr('       ''\5F71\54CD\65F6\95F4\FF08\5206\949F\FF09:'' || r.EFFECT_MINUTE AS EFFECT_MINUTE,'),
unistr('       ''\6700\7EC8\65F6\95F4: '' || to_char(r.CREATION_DATE + (r.EFFECT_MINUTE / 60) / 24, ''yyyy-mm-dd hh24:mi:ss'') AS FINAL_TIME'),
'                    from CHECK_CHANGE_RECORD r',
'                             left join CHECK_CHANGE_RECORD_ITEM t on r.RECORD_ID = t.RECORD_ID',
'                             left join CHECK_CHANGE_RECORD_DEVICE d on r.RECORD_ID = d.RECORD_ID',
'                    where r.DEPT_ID = decode(:P306_DEPT_NAME, -1, r.DEPT_ID, :P306_DEPT_NAME)',
'                      and r.AREA_ID = decode(:P306_AREA_NAME, -1, r.AREA_ID, :P306_AREA_NAME)',
'                      and r.BASE_DEPT_ID = :BASE_DEPT_ID',
'   AND to_date(to_char(r.CREATION_DATE + (r.EFFECT_MINUTE / 60) / 24, ''yyyy-mm-dd hh24:mi:ss''), ''yyyy-mm-dd hh24:mi:ss'') >= to_date(:P306_START_TIME, ''yyyy-mm-dd hh24:mi:ss'')',
'  AND to_date(to_char(r.CREATION_DATE + (r.EFFECT_MINUTE / 60) / 24, ''yyyy-mm-dd hh24:mi:ss''), ''yyyy-mm-dd hh24:mi:ss'') <= to_date(:P306_END_TIME, ''yyyy-mm-dd hh24:mi:ss'')',
'                    order by r.CREATION_DATE desc)',
'              group by DEVICE_CODE, RECORD_ID, AREA_NAME, REMARK, RECORD_NAME, CREATION_DATE',
'        )',
'        loop',
'            if v_loop_num < 1 then',
'                v_clob := v_clob ||',
'                          to_clob(''<div style="background-color: #EAEAEA;padding-left: 20px;padding-top: 10px;padding-bottom: 10px;line-height: 1.5;">'' ||',
'                                  c.msg || ''</div>'');',
'            else',
'                v_clob := v_clob || to_clob(''</br>'' ||',
'                                            ''<div style="background-color: #EAEAEA;padding-left: 20px;padding-top: 10px;padding-bottom: 10px;line-height: 1.5;">'' ||',
'                                            c.msg || ''</div>'');',
'            end if;',
'            v_loop_num := v_loop_num + 1;',
'        end loop;',
'',
'    apex_util.set_session_state(''P306_MSG_DATA'', v_clob);',
'',
'    apex_json.open_object;',
'    apex_json.write(''data'', v_clob);',
'    apex_json.close_all;',
'',
'exception',
'    when others then',
'        apex_json.open_object;',
'        apex_json.write(''data'', '' '');',
'        apex_json.close_all;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>-wwv_flow_imp.id(2204005795769225463)
,p_internal_uid=>88646778997984314
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(232111544748827242)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_change_log_back'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg  varchar2(2000);',
'    v_clob     clob;',
'    v_loop_num number(20) := 0;',
'begin',
'',
'    for c in (SELECT DEVICE_CODE ||',
'       AREA_NAME ||',
unistr('       ''\53D8\66F4\5185\5BB9:</br><div style="margin-left: 10%;line-height: 1.7;">'' || listagg(CONTENT, '' '') ||'),
'       ''</div>'' || ''<div style="float: left;">'' || listagg(distinct img, ''</br>'') || ''</div>'' ||',
'       REMARK ||',
'       RECORD_NAME ||',
'       CREATION_DATE ||',
'       EFFECT_MINUTE msg',
'FROM (',
'    SELECT r.RECORD_ID,',
'          (select listagg( ''<img style="width: 50%;" src="'' ||  data_val || ''" />'',''</br>'') from JA_UTILS_PKG.SPLIT_STR(r.IMAGES, '','')) img,',
unistr('           ''\8BBE\5907\7F16\7801: '' || d.DEVICE_CODE || ''</br>'' DEVICE_CODE,'),
unistr('           ''\533A\57DF: '' || r.AREA_NAME || ''</br>'' AREA_NAME,'),
unistr('           ''\53D8\66F4\9879\63CF\8FF0: '' || t.ITEM_NAME || '';</br>\586B\5199\5185\5BB9:'' || t.CONTENT || '';</br>'' CONTENT,'),
unistr('           ''\5907\6CE8: '' || r.REMARK || ''</br>'' REMARK,'),
unistr('           ''\8BB0\5F55\4EBA: '' || r.RECORD_JOB_NUMBER || ''-'' || r.RECORD_NAME || ''</br>'' RECORD_NAME,'),
unistr('           ''\8BB0\5F55\65F6\95F4: '' || to_char(r.CREATION_DATE, ''yyyy-mm-dd hh24:mi:ss'') || ''</br>'' CREATION_DATE,'),
unistr('           ''\5F71\54CD\65F6\95F4\FF08\5206\949F\FF09:'' || r.EFFECT_MINUTE AS EFFECT_MINUTE,'),
unistr('           ''\6700\7EC8\65F6\95F4: '' || to_char(r.CREATION_DATE + (r.EFFECT_MINUTE / 60) / 24, ''yyyy-mm-dd hh24:mi:ss'') AS FINAL_TIME'),
'    FROM CHECK_CHANGE_RECORD r',
'    LEFT JOIN CHECK_CHANGE_RECORD_ITEM t ON r.RECORD_ID = t.RECORD_ID',
'    LEFT JOIN CHECK_CHANGE_RECORD_DEVICE d ON r.RECORD_ID = d.RECORD_ID',
'    WHERE r.DEPT_ID = DECODE(:P306_DEPT_NAME, -1, r.DEPT_ID, :P306_DEPT_NAME)',
'      AND r.AREA_ID = DECODE(:P306_AREA_NAME, -1, r.AREA_ID, :P306_AREA_NAME)',
'      AND r.BASE_DEPT_ID = :BASE_DEPT_ID',
'      AND TO_DATE(TO_CHAR(r.RECORD_DATE + (r.EFFECT_MINUTE / 60) / 24, ''yyyy-mm-dd hh24:mi:ss''), ''yyyy-mm-dd hh24:mi:ss'') >= TO_DATE(:P306_START_TIME, ''yyyy-mm-dd hh24:mi:ss'')',
'      AND TO_DATE(TO_CHAR(r.RECORD_DATE + (r.EFFECT_MINUTE / 60) / 24, ''yyyy-mm-dd hh24:mi:ss''), ''yyyy-mm-dd hh24:mi:ss'') <= TO_DATE(:P306_END_TIME, ''yyyy-mm-dd hh24:mi:ss'')',
'    ORDER BY r.RECORD_DATE DESC',
')',
'GROUP BY DEVICE_CODE, RECORD_ID, AREA_NAME, REMARK, RECORD_NAME, CREATION_DATE, EFFECT_MINUTE',
'',
'        )',
'        loop',
'            if v_loop_num < 1 then',
'                v_clob := v_clob ||',
'                          to_clob(''<div style="background-color: #EAEAEA;padding-left: 20px;padding-top: 10px;padding-bottom: 10px;line-height: 1.5;">'' ||',
'                                  c.msg || ''</div>'');',
'            else',
'                v_clob := v_clob || to_clob(''</br>'' ||',
'                                            ''<div style="background-color: #EAEAEA;padding-left: 20px;padding-top: 10px;padding-bottom: 10px;line-height: 1.5;">'' ||',
'                                            c.msg || ''</div>'');',
'            end if;',
'            v_loop_num := v_loop_num + 1;',
'        end loop;',
'',
'    apex_util.set_session_state(''P306_MSG_DATA'', v_clob);',
unistr('--     JA_WRITE_LOG(''\53D8\66F4\8BB0\5F55'', ''debug'', v_clob, :USER_ID, :USERTENANT, :APP_NAME, :APP_ID, :APP_CODE);'),
'',
'    apex_json.open_object;',
'    apex_json.write(''data'', v_clob);',
'    apex_json.close_all;',
'',
'exception',
'    when others then',
'        apex_json.open_object;',
'        apex_json.write(''data'', '' '');',
'        apex_json.close_all;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>114747178887315705
);
wwv_flow_imp.component_end;
end;
/
