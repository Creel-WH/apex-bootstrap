prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_name=>unistr('\6676\8C79\95EE\9898\6C47\603B\62A5\8868')
,p_alias=>unistr('\6676\8C79\95EE\9898\6C47\603B\62A5\8868')
,p_step_title=>unistr('\6676\8C79\95EE\9898\6C47\603B\62A5\8868')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2156853568101282478)
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
 p_id=>wwv_flow_imp.id(2229984229944421007)
,p_plug_name=>unistr('\95EE\9898\6C47\603B')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2229984636262421011)
,p_plug_name=>unistr('\95EE\9898\8DDF\8FDB\8BE6\60C5')
,p_region_name=>'barchart'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'		FOLLOWER,',
'		FOLLOWER_DEP,',
'        (',
'CASE ',
unistr('WHEN DSTATUS =''WAIT'' THEN ''\7B49\5F85\5904\7406'''),
unistr('WHEN DSTATUS =''REFUSE'' THEN ''\4E0E\6211\65E0\5173'''),
unistr('WHEN DSTATUS =''TRANSFER'' THEN ''\5DF2\8F6C\4EA4\95EE\9898'''),
unistr('WHEN DSTATUS =''RECEIVE_TRANSFER'' THEN ''\5DF2\63A5\53D7\8F6C\4EA4\95EE\9898'''),
unistr('WHEN DSTATUS =''RECEIVE'' THEN ''\534F\52A9\4EBA\5458\786E\5B9A\8DDF\8FDB'''),
unistr('WHEN DSTATUS =''CONFIRM_RECEIVE'' THEN ''\53D1\8D77\4EBA\786E\8BA4\8DDF\8FDB \3001\6267\884C\4E2D'''),
unistr('WHEN DSTATUS =''RESOLVE'' THEN ''\534F\52A9\4EBA\53D1\8D77\5DF2\89E3\51B3'''),
unistr('--WHEN DSTATUS =''CONFIRM_RESOLVE'' THEN ''\53D1\8D77\4EBA\786E\8BA4\534F\52A9\8005\5DF2\89E3\51B3'''),
unistr('WHEN DSTATUS =''SUBMIT_CLOSE'' THEN ''\53D1\8D77\8005\5173\95ED\95EE\9898'''),
unistr('ELSE ''\65E0\6548\72B6\6001\7801'''),
'END) DSTATUS,',
'		DESCRIPTION,',
'		(CASE IS_END',
' WHEN 0 THEN ',
' (',
'  CASE ',
'WHEN DSTATUS =''WAIT'' THEN CEIL((APEX_date_to_unix_ts(SYSDATE)-APEX_date_to_unix_ts(CREATION_TIME))/60)',
'WHEN DSTATUS =''REFUSE'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60) ',
'WHEN DSTATUS =''TRANSFER'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''RECEIVE_TRANSFER'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''RECEIVE'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''CONFIRM_RECEIVE'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''RESOLVE'' THEN CEIL((ANSWER_TIME-CREATION_TIME)*24*60)',
'--WHEN DSTATUS =''CONFIRM_RESOLVE'' THEN CEIL((ANSWER_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''SUBMIT_CLOSE'' THEN CEIL((ANSWER_TIME-CREATION_TIME)*24*60)',
'ELSE -1',
'END',
' )',
' ELSE ',
' (',
'  CASE ',
'WHEN DSTATUS =''WAIT'' THEN CEIL((APEX_date_to_unix_ts(CLOSE_TIME)-APEX_date_to_unix_ts(CREATION_TIME))/60)',
'WHEN DSTATUS =''REFUSE'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60) ',
'WHEN DSTATUS =''TRANSFER'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''RECEIVE_TRANSFER'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''RECEIVE'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''CONFIRM_RECEIVE'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''RESOLVE'' THEN CEIL((ANSWER_TIME-CREATION_TIME)*24*60)',
'--WHEN DSTATUS =''CONFIRM_RESOLVE'' THEN CEIL((ANSWER_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''SUBMIT_CLOSE'' THEN CEIL((ANSWER_TIME-CREATION_TIME)*24*60)',
'ELSE -1',
'END',
' )',
' END) ANSWER_MIN,',
' ',
' (CASE IS_END',
' WHEN 0 THEN ',
' (',
'  CASE ',
'WHEN DSTATUS =''WAIT'' THEN CEIL((APEX_date_to_unix_ts(SYSDATE)-APEX_date_to_unix_ts(CREATION_TIME))/60)',
'WHEN DSTATUS =''REFUSE'' THEN -1 ',
'WHEN DSTATUS =''TRANSFER'' THEN -2',
'WHEN DSTATUS =''RECEIVE_TRANSFER'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''RECEIVE'' THEN CEIL((APEX_date_to_unix_ts(SYSDATE)-APEX_date_to_unix_ts(DEAL_TIME))/60)',
'WHEN DSTATUS =''CONFIRM_RECEIVE'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''RESOLVE'' THEN CEIL((DEAL_TIME-CREATION_TIME)*24*60)',
'--WHEN DSTATUS =''CONFIRM_RESOLVE'' THEN CEIL((ANSWER_TIME-CREATION_TIME)*24*60)',
'WHEN DSTATUS =''SUBMIT_CLOSE'' THEN CEIL((ANSWER_TIME-CREATION_TIME)*24*60)',
'ELSE -1',
'END',
' )',
' ELSE ',
' (',
'  CASE ',
'WHEN DSTATUS =''WAIT'' THEN CEIL((APEX_date_to_unix_ts(CLOSE_TIME)-APEX_date_to_unix_ts(CREATION_TIME))/60)',
'WHEN DSTATUS =''REFUSE'' THEN -1',
'WHEN DSTATUS =''TRANSFER'' THEN -2',
'WHEN DSTATUS =''RECEIVE_TRANSFER'' THEN -2',
'WHEN DSTATUS =''RECEIVE'' THEN CEIL((CLOSE_TIME-DEAL_TIME)*24*60)',
'WHEN DSTATUS =''CONFIRM_RECEIVE'' THEN CEIL((CLOSE_TIME-DEAL_TIME)*24*60)',
'WHEN DSTATUS =''RESOLVE'' THEN CEIL((CLOSE_TIME-DEAL_TIME)*24*60)',
'--WHEN DSTATUS =''CONFIRM_RESOLVE'' THEN CEIL((CLOSE_TIME-DEAL_TIME)*24*60)',
'WHEN DSTATUS =''SUBMIT_CLOSE'' THEN CEIL((CLOSE_TIME-DEAL_TIME)*24*60)',
'ELSE -1',
'END',
' )',
' END) DEAL_MIN,',
'		CREATION_TIME,',
'		ANSWER_TIME,',
'		DEAL_TIME',
'		FROM TENANT_ISSUE_REPORT_V  ',
'        WHERE instr( :P8_SELECTED, '':'' || main_id || '':'' ) > 0 AND TENANT_ID = :USERTENANT and BASE_DEPT_ID=:BASE_DEPT_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P8_SELECTED'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\95EE\9898\8DDF\8FDB\8BE6\60C5')
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
 p_id=>wwv_flow_imp.id(2229984739916421012)
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
,p_internal_uid=>82059898386531546
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229984834486421013)
,p_db_column_name=>'FOLLOWER'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\8DDF\8FDB\8005')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229984888164421014)
,p_db_column_name=>'FOLLOWER_DEP'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\8DDF\8FDB\90E8\95E8')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230602238516334867)
,p_db_column_name=>'DSTATUS'
,p_display_order=>30
,p_column_identifier=>'H'
,p_column_label=>unistr('\8DDF\8FDB\72B6\6001')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230127399926304867)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>unistr('\95EE\9898\63CF\8FF0')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230602454492334870)
,p_db_column_name=>'ANSWER_MIN'
,p_display_order=>50
,p_column_identifier=>'I'
,p_column_label=>unistr('\54CD\5E94\65F6\957F(\5206)')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230602632046334871)
,p_db_column_name=>'DEAL_MIN'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>unistr('\5904\7406\65F6\957F(\5206)')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230602660762334872)
,p_db_column_name=>'ANSWER_TIME'
,p_display_order=>70
,p_column_identifier=>'K'
,p_column_label=>unistr('\54CD\5E94\65F6\95F4')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'YYYY-MM-DD hh24:mi:ss'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230602800938334873)
,p_db_column_name=>'DEAL_TIME'
,p_display_order=>80
,p_column_identifier=>'L'
,p_column_label=>unistr('\5904\7406\65F6\95F4')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'YYYY-MM-DD hh24:mi:ss'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230602899849334874)
,p_db_column_name=>'CREATION_TIME'
,p_display_order=>90
,p_column_identifier=>'M'
,p_column_label=>'Creation Time'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2230115702873069339)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'821909'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>':FOLLOWER:FOLLOWER_DEP:DESCRIPTION:DSTATUS:ANSWER_MIN:DEAL_MIN:ANSWER_TIME:DEAL_TIME:CREATION_TIME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2230092069912915773)
,p_plug_name=>unistr('\6676\8C79\95EE\9898\6C47\603B\62A5\8868')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'        distinct MAIN_ID,',
'        SUBMIT_NAME,',
'				SUBMIT_DEP,',
'				SUBMIT_SOURCE,',
'				DESCRIPTION,',
'				(CASE',
unistr('WHEN STATUS =''WAIT'' THEN ''\7B49\5F85\5904\7406'''),
unistr('WHEN STATUS =''FOLLOW'' THEN ''\8DDF\8FDB'''),
unistr('WHEN STATUS =''CLOSE'' THEN ''1.52\7248\7ED3\675F'''),
unistr('WHEN STATUS =''CREATE'' THEN ''\95EE\9898\521B\5EFA'''),
unistr('WHEN STATUS = ''MIDWAY_OFF'' THEN ''\4E2D\9014\5173\95ED'''),
unistr('WHEN STATUS = ''RESOLVE'' THEN ''\95EE\9898\5DF2\89E3\51B3'''),
unistr('ELSE ''\65E0\6548\72B6\6001\7801'''),
'END',
') STATUS,',
'        CREATE_DATE,',
'				FAB_NAME,',
'				OP_NAME,',
'				L_NAME,',
'				COUNT(*) COUNT',
'    from tenant_issue_report_v ',
'    WHERE TENANT_ID = :USERTENANT and BASE_DEPT_ID=:BASE_DEPT_ID',
'		GROUP BY ',
'		 MAIN_ID,',
'        SUBMIT_NAME,',
'				SUBMIT_DEP,',
'				SUBMIT_SOURCE,',
'				DESCRIPTION,',
'				STATUS,',
'        CREATE_DATE,',
'				CREATE_DATE,',
'				FAB_NAME,',
'				OP_NAME,',
'				L_NAME',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\6676\8C79\95EE\9898\6C47\603B\62A5\8868')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230094395045915778)
,p_name=>'MAIN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAIN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E0A\62A5\95EE\9898id')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230095365994915779)
,p_name=>'SUBMIT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\63D0\4EA4\4EBA')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230096405283915780)
,p_name=>'SUBMIT_DEP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_DEP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\63D0\4EA4\90E8\95E8')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230097433978915780)
,p_name=>'SUBMIT_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\95EE\9898\6765\6E90')
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230098358028915781)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\95EE\9898\63CF\8FF0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>600
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230099416143915781)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>15
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230100400996915782)
,p_name=>'CREATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\521B\5EFA\65E5\671F')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230101383922915782)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230102374223915783)
,p_name=>'OP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5DE5\827A')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230103428563915783)
,p_name=>'L_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'L_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5382\7EBF')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2230104379291915784)
,p_name=>'Count'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\8DDF\8FDB\4EBA\6570')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2230092559094915774)
,p_internal_uid=>82167717565026308
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
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
 p_id=>wwv_flow_imp.id(2230092974333915774)
,p_interactive_grid_id=>wwv_flow_imp.id(2230092559094915774)
,p_static_id=>'821682'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2147926036982889467)
,p_report_id=>wwv_flow_imp.id(2230092974333915774)
,p_view_type=>'DETAIL'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2230093191994915774)
,p_report_id=>wwv_flow_imp.id(2230092974333915774)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230094747036915779)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2230094395045915778)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230095744972915780)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2230095365994915779)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230096809284915780)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2230096405283915780)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230097765830915781)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2230097433978915780)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230098769113915781)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2230098358028915781)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230099810177915782)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2230099416143915781)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230100821504915782)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2230100400996915782)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230101743374915783)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2230101383922915782)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230102829010915783)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2230102374223915783)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230103811895915783)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2230103428563915783)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2230104751031915784)
,p_view_id=>wwv_flow_imp.id(2230093191994915774)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2230104379291915784)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2230187766767506895)
,p_plug_name=>unistr('\6C47\603B')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_05'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2230187878463506896)
,p_plug_name=>unistr('\63D0\4EA4\95EE\9898\6C47\603B')
,p_parent_plug_id=>wwv_flow_imp.id(2230187766767506895)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'*',
' FROM APEX_TENANT_ISSUE_SUBMIT_TOTAL_V WHERE TENANT_ID = :USERTENANT '))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\63D0\4EA4\95EE\9898\6C47\603B')
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
 p_id=>wwv_flow_imp.id(2230603897235334884)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:RR,27:P27_DEP,P27_STATUS:#SUBMIT_DEP#,#STATUS#'
,p_detail_link_text=>'<span role="img" aria-label="&#x7F16;&#x8F91;" class="fa fa-edit" title="&#x7F16;&#x8F91;"></span>'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>82679055705445418
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230604015142334885)
,p_db_column_name=>'SUBMIT_DEP'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\95EE\9898\63D0\4EA4\90E8\95E8')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230604168198334887)
,p_db_column_name=>'STATUS'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>unistr('\95EE\9898\72B6\6001')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230604076710334886)
,p_db_column_name=>'COUNT'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>unistr('\95EE\9898\6570\91CF')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230605620512334901)
,p_db_column_name=>'EXT_ORG_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ext Org Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230658491344611315)
,p_db_column_name=>'PERCOUNT'
,p_display_order=>60
,p_column_identifier=>'I'
,p_column_label=>unistr('\95EE\9898\5360\6BD4')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2152482549831350086)
,p_db_column_name=>'TENANT_ID'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Tenant Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2230917637339325790)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'829928'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUBMIT_DEP:COUNT:STATUS:EXT_ORG_ID:TENANT_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2230189560730506913)
,p_plug_name=>unistr('\672A\89E3\51B3\63D0\4EA4\95EE\9898\6C47\603B')
,p_parent_plug_id=>wwv_flow_imp.id(2230187766767506895)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT * FROM APEX_TENANT_ISSUE_UNCLOSE_V WHERE TENANT_ID = :USERTENANT'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\672A\89E3\51B3\63D0\4EA4\95EE\9898\6C47\603B')
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
 p_id=>wwv_flow_imp.id(2230604262886334888)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:28:P28_DEP:#FOLLOWER_DEP#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>82679421356445422
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230604401031334889)
,p_db_column_name=>'FOLLOWER_DEP'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\8DDF\8FDB\90E8\95E8')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230604445351334890)
,p_db_column_name=>'DSTATUS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\8DDF\8FDB\72B6\6001')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230604634441334891)
,p_db_column_name=>'COUNT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\672A\89E3\51B3\95EE\9898\603B\6570')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230657348165611304)
,p_db_column_name=>'PERCOUNT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\95EE\9898\5360\6BD4')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2152482715461350087)
,p_db_column_name=>'EXT_ORG_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ext Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2152482765557350088)
,p_db_column_name=>'TENANT_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Tenant Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2230925217476353591)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'830004'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FOLLOWER_DEP:DSTATUS:COUNT:PERCOUNT:EXT_ORG_ID:TENANT_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2230603014969334875)
,p_plug_name=>unistr('\5DF2\89E3\51B3\63D0\4EA4\95EE\9898\6C47\603B')
,p_parent_plug_id=>wwv_flow_imp.id(2230187766767506895)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT * FROM APEX_TENANT_ISSUE_CLOSE_V WHERE TENANT_ID = :USERTENANT'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\5DF2\89E3\51B3\63D0\4EA4\95EE\9898\6C47\603B')
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
 p_id=>wwv_flow_imp.id(2230604707035334892)
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
,p_internal_uid=>82679865505445426
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230604822389334893)
,p_db_column_name=>'FOLLOWER_DEP'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\8DDF\8FDB\90E8\95E8')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230604850028334894)
,p_db_column_name=>'COUNT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\5DF2\89E3\51B3\95EE\9898\603B\6570')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2230658390030611314)
,p_db_column_name=>'PERCOUNT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\95EE\9898\5360\6BD4')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2152482905178350089)
,p_db_column_name=>'TENANT_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Tenant Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2230925795218353598)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'830010'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FOLLOWER_DEP:COUNT:PERCOUNT:TENANT_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2230655634013611286)
,p_plug_name=>unistr('\56FE\8868')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_05'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2230655704144611287)
,p_plug_name=>unistr('\63D0\4EA4\95EE\9898\6C47\603B')
,p_parent_plug_id=>wwv_flow_imp.id(2230655634013611286)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2230655766965611288)
,p_region_id=>wwv_flow_imp.id(2230655704144611287)
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
 p_id=>wwv_flow_imp.id(2230655914826611289)
,p_chart_id=>wwv_flow_imp.id(2230655766965611288)
,p_seq=>10
,p_name=>unistr('\65B0\5EFA')
,p_data_source_type=>'TABLE'
,p_query_table=>'APEX_TENANT_ISSUE_SUBMIT_TOTAL_V'
,p_query_where=>'TENANT_ID = :USERTENANT'
,p_include_rowid_column=>false
,p_series_name_column_name=>'STATUS'
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'SUBMIT_DEP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2230657529337611305)
,p_chart_id=>wwv_flow_imp.id(2230655766965611288)
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
 p_id=>wwv_flow_imp.id(2230657577370611306)
,p_chart_id=>wwv_flow_imp.id(2230655766965611288)
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
 p_id=>wwv_flow_imp.id(2230656150647611292)
,p_plug_name=>unistr('\672A\89E3\51B3\63D0\4EA4\95EE\9898\6C47\603B')
,p_parent_plug_id=>wwv_flow_imp.id(2230655634013611286)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2230656286783611293)
,p_region_id=>wwv_flow_imp.id(2230656150647611292)
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
 p_id=>wwv_flow_imp.id(2230656386424611294)
,p_chart_id=>wwv_flow_imp.id(2230656286783611293)
,p_seq=>10
,p_name=>unistr('\65B0\5EFA')
,p_data_source_type=>'TABLE'
,p_query_table=>'APEX_TENANT_ISSUE_UNCLOSE_V'
,p_query_where=>'TENANT_ID = :USERTENANT'
,p_include_rowid_column=>false
,p_series_name_column_name=>'DSTATUS'
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'FOLLOWER_DEP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2230656536261611295)
,p_chart_id=>wwv_flow_imp.id(2230656286783611293)
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
 p_id=>wwv_flow_imp.id(2230656591544611296)
,p_chart_id=>wwv_flow_imp.id(2230656286783611293)
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
 p_id=>wwv_flow_imp.id(2230656704995611297)
,p_plug_name=>unistr('\5DF2\89E3\51B3\63D0\4EA4\95EE\9898\6C47\603B')
,p_parent_plug_id=>wwv_flow_imp.id(2230655634013611286)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2230656815729611298)
,p_region_id=>wwv_flow_imp.id(2230656704995611297)
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
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2230656906604611299)
,p_chart_id=>wwv_flow_imp.id(2230656815729611298)
,p_seq=>10
,p_name=>unistr('\65B0\5EFA')
,p_data_source_type=>'TABLE'
,p_query_table=>'APEX_TENANT_ISSUE_CLOSE_V'
,p_query_where=>'TENANT_ID = :USERTENANT'
,p_include_rowid_column=>false
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'FOLLOWER_DEP'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2230656950838611300)
,p_chart_id=>wwv_flow_imp.id(2230656815729611298)
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
 p_id=>wwv_flow_imp.id(2230657103580611301)
,p_chart_id=>wwv_flow_imp.id(2230656815729611298)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2229984329840421008)
,p_name=>'P8_SELECTED'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2229984229944421007)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2230605028082334895)
,p_name=>'P24_REFRESH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2229984229944421007)
,p_prompt=>unistr('1\5206\949F\5237\65B0\6570\636E')
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:1\5206\949F\5237\65B0\6570\636E;Y')
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2229984427634421009)
,p_name=>'update detail'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2230092069912915773)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2229984496153421010)
,p_event_id=>wwv_flow_imp.id(2229984427634421009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, selectedIds = ":",',
'    model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'    selectedIds += model.getValue( this.data.selectedRecords[i], "MAIN_ID") + ":";',
'}',
'$s("P8_SELECTED", selectedIds);',
'apex.region("barchart").refresh();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2230605082339334896)
,p_name=>'SETUP TIMER'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P24_REFRESH'
,p_condition_element=>'P24_REFRESH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2230605219676334897)
,p_event_id=>wwv_flow_imp.id(2230605082339334896)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.ORACLE.APEX.TIMER'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2230092069912915773)
,p_attribute_01=>'add'
,p_attribute_02=>'report_refresh'
,p_attribute_04=>'60000'
,p_attribute_05=>'infinite'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2230605249813334898)
,p_event_id=>wwv_flow_imp.id(2230605082339334896)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_COM.ORACLE.APEX.TIMER'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2230092069912915773)
,p_attribute_01=>'remove'
,p_attribute_03=>'report_refresh'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2230605361504334899)
,p_name=>'REFRESH REPORT'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2230092069912915773)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_COM.ORACLE.APEX.TIMER|DYNAMIC ACTION|timer_expired'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2230605480062334900)
,p_event_id=>wwv_flow_imp.id(2230605361504334899)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2230092069912915773)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2151087495749599689)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151087560459599690)
,p_event_id=>wwv_flow_imp.id(2151087495749599689)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',24,''\6676\8C79\95EE\9898\6C47\603B\62A5\8868'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
