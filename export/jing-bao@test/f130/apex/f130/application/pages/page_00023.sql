prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_name=>unistr('\547C\53EB\73ED\7EC4\957F\7EDF\8BA1\62A5\8868')
,p_alias=>unistr('\547C\53EB\73ED\7EC4\957F\7EDF\8BA1\62A5\8868')
,p_step_title=>unistr('\547C\53EB\73ED\7EC4\957F\7EDF\8BA1\62A5\8868')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2172214465585563921)
,p_plug_name=>unistr('\65B0\5EFA')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2301990439734836168)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2302109431778836229)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2245490224192586329)
,p_plug_name=>'Start'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2245490538008586333)
,p_plug_name=>unistr('\547C\53EB\8BE6\60C5')
,p_region_name=>'barchart'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'BECALLER,',
'IS_SUCCESS,',
'DURATION,',
'FAB_NAME,',
'LINE_NAME,',
'OP_NAME',
'FROM CALL_MONITOR_REPORT_V',
'WHERE instr( :P23_SELECTED, '':'' || mainid || '':'' ) > 0 AND TENANT_ID = :USERTENANT'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P23_SELECTED'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\547C\53EB\8BE6\60C5')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2245490708344586334)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>82204780521415423
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2245490764026586335)
,p_db_column_name=>'BECALLER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\88AB\547C\53EB\4EBA')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2245490830929586336)
,p_db_column_name=>'IS_SUCCESS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\662F\5426\547C\53EB\6210\529F')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2245491013959586337)
,p_db_column_name=>'DURATION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\6301\7EED\65F6\95F4')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2245491095909586338)
,p_db_column_name=>'FAB_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\5382\533A')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2245491180683586339)
,p_db_column_name=>'LINE_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('\5382\7EBF')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2245491267893586340)
,p_db_column_name=>'OP_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('\5DE5\827A')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2245532159978547506)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'822463'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BECALLER:IS_SUCCESS:DURATION:FAB_NAME:LINE_NAME:OP_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2303619802308903786)
,p_plug_name=>unistr('\547C\53EB\73ED\7EC4\957F\7EDF\8BA1\62A5\8868')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'MAINID,',
'CALLDATE,',
'CALLSOURCE,',
'caller,',
'COUNT(*) COUNT',
'FROM CALL_MONITOR_REPORT_V',
'WHERE TENANT_ID = :USERTENANT',
'GROUP BY MAINID,',
'CALLDATE,',
'CALLSOURCE,',
'caller',
'ORDER BY CALLDATE DESC'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\547C\53EB\73ED\7EC4\957F\7EDF\8BA1\62A5\8868')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2245489728539586325)
,p_name=>'CALLDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CALLDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\547C\53EB\65E5\671F')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2245489902792586326)
,p_name=>'CALLSOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CALLSOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\547C\53EB\6765\6E90')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2245489930679586327)
,p_name=>'CALLER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CALLER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\547C\53EB\4EBA')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2245490051457586328)
,p_name=>'COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\88AB\547C\53EB\4EBA\6570')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2303622184327903787)
,p_name=>'MAINID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAINID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2303620339309903786)
,p_internal_uid=>58289352343376400
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>true
,p_detail_view_before_rows=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="t-MediaList t-MediaList--showDesc t-MediaList--showIcons t-MediaList--showBadges">',
''))
,p_detail_view_for_each_row=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  ">',
'    <div class="t-MediaList-itemWrap">',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon fa &ICON."></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">&NAME.</h3>',
'            <p class="t-MediaList-desc">',
'                Country: &COUNTRY.<br>',
'                Born: &FROM_YR.<br>',
'                Age: &AGE.',
'            </p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">&CATEGORY.</span>',
'        </div>',
'    </div>',
'</li>',
''))
,p_detail_view_after_rows=>'</ul>'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    var paginationSettings = {',
'            showRange: true,',
'            showPageSelector: true,',
'            showPageLinks: false,',
'// uncomment to hide the first and last buttons',
'//            firstAndLastButtons: false',
'        };',
'',
'    config.defaultGridViewOptions = {',
'        rowHeader: "sequence",',
'        pagination: paginationSettings',
'    };',
'    config.defaultIconViewOptions = {',
'        collectionClasses: "t-Cards t-Cards--compact t-Cards--displayIcons u-colors t-Cards--desc-2ln",',
'        pagination: paginationSettings',
'    };',
'    config.defaultDetailViewOptions = {',
'        pagination: paginationSettings',
'    }',
'    return config; // don''t forget to return this!',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2303620771795903786)
,p_interactive_grid_id=>wwv_flow_imp.id(2303620339309903786)
,p_static_id=>'582898'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2303620917753903786)
,p_report_id=>wwv_flow_imp.id(2303620771795903786)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2245520863116506530)
,p_view_id=>wwv_flow_imp.id(2303620917753903786)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2245489728539586325)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2245521650043506532)
,p_view_id=>wwv_flow_imp.id(2303620917753903786)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2245489902792586326)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2245522622988506534)
,p_view_id=>wwv_flow_imp.id(2303620917753903786)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2245489930679586327)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2245523504548506536)
,p_view_id=>wwv_flow_imp.id(2303620917753903786)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2245490051457586328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303622563415903787)
,p_view_id=>wwv_flow_imp.id(2303620917753903786)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2303622184327903787)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2245490315892586330)
,p_name=>'P23_SELECTED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2245490224192586329)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2245490339700586331)
,p_name=>'update detail'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2303619802308903786)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2245490525704586332)
,p_event_id=>wwv_flow_imp.id(2245490339700586331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, selectedIds = ":",',
'    model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'    selectedIds += model.getValue( this.data.selectedRecords[i], "MAINID") + ":";',
'}',
'$s("P23_SELECTED", selectedIds);',
'apex.region("barchart").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166448780594881136)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166448858943881137)
,p_event_id=>wwv_flow_imp.id(2166448780594881136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',23,''\547C\53EB\73ED\7EC4\957F\7EDF\8BA1\62A5\8868'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
