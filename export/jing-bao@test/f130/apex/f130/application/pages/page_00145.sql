prompt --application/pages/page_00145
begin
--   Manifest
--     PAGE: 00145
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
 p_id=>145
,p_name=>unistr('\4E8B\4EF6\7533\8BC9\5BA1\6838')
,p_alias=>unistr('\4E8B\4EF6\7533\8BC9\5BA1\6838')
,p_step_title=>unistr('\4E8B\4EF6\7533\8BC9\5BA1\6838')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getDetail(feedback_id){',
'    console.log(''id:''+feedback_id);',
'    apex.server.process(''GetDetail'',',
'        {x01: feedback_id},',
'        {',
'            dataType: ''text'',',
'            success: function(data){',
'                apex.item(''detail_html'').setValue(data);',
'            },',
'            error: function(jqXHR, textStatus, errorThrown){',
unistr('                console.log(''\5931\8D25'');'),
'                apex.item(''detail_html'').setValue(errorThrown);',
'                apex.message.showErrors([',
'                    {',
'                        type: "error",',
'                        location: "page",',
'                        message: errorThrown,',
'                        unsafe: false',
'                    }',
'                ]);',
'            }',
'        }',
'    );',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#detail{',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197815335914692364)
,p_plug_name=>unistr('\8BE6\60C5')
,p_region_name=>'detail_html'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(2330918724217485746)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2205958322576318589)
,p_plug_name=>unistr('\4E8B\4EF6\7533\8BC9\5BA1\6838')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330924417379485748)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       EVENT_APPEAL_ID,',
'       EVENT_ID,',
'       REMARK,',
'       SUBMIT_USER_ID,',
'       SUBMIT_EXT_ORG_ID,',
'       CONTENT,',
'       EXPECTED_SOLUTION,',
'       STATUS,',
'       REPLY_EXT_USER_ID,',
'       REPLAY_CONTENT,',
'       ''javascript:$("#detail").click();getDetail('' || EVENT_APPEAL_ID || '');'' as detailaction,',
unistr('       ''\67E5\770B\8BE6\60C5'' as detail'),
'  from TENANT_EVENT_APPEAL WHERE TENANT_ID = :USERTENANT',
'  AND  BASE_DEPT_ID= :BASE_DEPT_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\4E8B\4EF6\7533\8BC9\5BA1\6838')
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(639197345924210614)
,p_name=>'REPLY_EXT_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPLY_EXT_USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(639197532909210615)
,p_name=>'REPLAY_CONTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPLAY_CONTENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2194953285202653000)
,p_name=>'EVENT_APPEAL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_APPEAL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2194953447590653001)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5907\6CE8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>512
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2194953460524653002)
,p_name=>'SUBMIT_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\63D0\4EA4\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2204815696305303939)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2194953629919653003)
,p_name=>'SUBMIT_EXT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_EXT_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\63D0\4EA4\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2287240116559702392)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2194953711712653004)
,p_name=>'CONTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTENT'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\7533\8BC9\5185\5BB9')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2194953803705653005)
,p_name=>'EXPECTED_SOLUTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPECTED_SOLUTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5E0C\671B\89E3\51B3\65B9\5F0F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2194953909797653006)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(2194954240545653009)
,p_name=>'DETAILACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2194954271985653010)
,p_name=>'DETAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>12
,p_link_target=>'&DETAILACTION.'
,p_link_text=>'&DETAIL.'
,p_link_attributes=>'class =  ''t-Button'''
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
 p_id=>wwv_flow_imp.id(2195051956540892563)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5DE5\5355\53F7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select EVENT_SERIAL_NO as d, EVENT_ID as r from TENANT_EVENT;'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2340761616692716740)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2340761701166716741)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2194953211472652999)
,p_internal_uid=>2786552557832539
,p_is_editable=>true
,p_edit_operations=>'u'
,p_update_authorization_scheme=>wwv_flow_imp.id(2203630864353568225)
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2195033154368871158)
,p_interactive_grid_id=>wwv_flow_imp.id(2194953211472652999)
,p_static_id=>'28665'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2195033275398871158)
,p_report_id=>wwv_flow_imp.id(2195033154368871158)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(598613182534091586)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(639197345924210614)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(598614054415091583)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(639197532909210615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2195033831812871160)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2194953285202653000)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2195034727850871162)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2194953447590653001)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2195035578793871164)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2194953460524653002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2195036483023871166)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2194953629919653003)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>222.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2195037398819871168)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2194953711712653004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2195038330905871170)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2194953803705653005)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2195039202592871173)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2194953909797653006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>142.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2195041901017871179)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2194954240545653009)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2195042704496871181)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2194954271985653010)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>175.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2196249024032821314)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2195051956540892563)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>119.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2357751586957702326)
,p_view_id=>wwv_flow_imp.id(2195033275398871158)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2340761616692716740)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2195029922879858984)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2205958322576318589)
,p_button_name=>'DETAIL'
,p_button_static_id=>'detail'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988065388485776)
,p_button_image_alt=>'detail'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2195051666098892561)
,p_name=>unistr('\67E5\770B\8BE6\60C5')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2195029922879858984)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2195051802243892562)
,p_event_id=>wwv_flow_imp.id(2195051666098892561)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2197815335914692364)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2340761817936716742)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2205958322576318589)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\4E8B\4EF6\7533\8BC9\5BA1\6838 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>186317946274282337
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2195030786374860786)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetDetail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_clob CLOB;',
'    v_img_clob CLOB;',
'    v_event_plea_id number(20) := apex_application.g_x01;',
'    v_remark varchar2(200);',
'    v_submit_user_id number(20);',
'    v_submit_ext_org_id number(20);',
'    v_content varchar2(2000);',
'    v_expected_solution varchar2(1000);',
'    v_image_urls varchar2(1000);',
'    v_submit_user_name varchar2(100);',
'    v_submit_ext_org_name varchar2(100);',
'    v_event_id number(20);',
'    v_event_serial_no number(20);',
'begin',
'    select',
'        EVENT_ID,',
'        REMARK,',
'        SUBMIT_USER_ID,',
'        SUBMIT_EXT_ORG_ID,',
'        CONTENT,',
'        EXPECTED_SOLUTION,',
'        IMAGES_URLS',
'    into',
'        v_event_id,',
'        v_remark,',
'        v_submit_user_id,',
'        v_submit_ext_org_id,',
'        v_content,',
'        v_expected_solution,',
'        v_image_urls',
'    from TENANT_EVENT_APPEAL',
'    where event_appeal_id = v_event_plea_id;',
'',
'    select EVENT_SERIAL_NO into v_event_serial_no from TENANT_EVENT where event_id = v_event_id;',
'    select name into v_submit_user_name from MPF_SHARE_USER_V where ext_user_id = v_submit_user_id;',
'    select name into v_submit_ext_org_name from MPF_SHARE_DEPT_V where ext_org_id = v_submit_ext_org_id;',
'',
'    for item in (',
'        select REGEXP_SUBSTR(v_image_urls,''[^,]+'',1,level) as IMAGE_URL from dual',
'        connect by level<= (REGEXP_COUNT(v_image_urls,''\,'')+1)',
'    )',
'    loop',
'        v_img_clob := v_img_clob || ''<img src="''||item.IMAGE_URL||''"class="rounded" width="200px" height="200px" alt="">'';',
'    end loop;',
'    v_clob :=',
'        ''<body>',
'            <div class="view">',
'                <div class="row gap">',
'                    <div class="col cell">',
'                        <div class="cell-value">',
unistr('                            <label class="cell-title" for="">\4E8B\4EF6\7F16\53F7</label>'),
'                            <div>',
'                                <span class="cell-span">#''||v_event_serial_no||''</span>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row gap">',
'                    <div class="col cell">',
'                        <div class="cell-value">',
unistr('                            <label class="cell-title" for="">\63D0\4EA4\4EBA</label>'),
'                            <div class="cell-content">',
'                                <div class="person">',
'                                    <p class="name">''||v_submit_user_name||''</p>',
'                                    <span class="dept">''||v_submit_ext_org_name||''</span>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row gap">',
'                    <div class="col cell">',
'                        <div class="cell-value">',
unistr('                            <label class="cell-title" for="">\53CD\9988\5185\5BB9:</label>'),
'                            <div>',
'                                <span class="cell-span"> ''||v_content||'' </span>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row gap">',
'                    <div class="col cell">',
'                        <div class="cell-value">',
unistr('                            <label class="cell-title" for="">\671F\671B\89E3\51B3\65B9\5F0F:</label>'),
'                            <div>',
'                                <span class="cell-span">''||v_expected_solution||''</span>',
'                            </div>',
'                        </div>',
'                    </div>',
'                </div>',
'                <div class="row gap">',
'                    <div class="col cell">',
'                        <div class="cell-value">',
unistr('                            <label class="cell-title" for="">\53CD\9988\56FE\7247:</label>'),
'                            <div>'';',
'    if v_img_clob != null then',
'        v_clob := v_clob || v_img_clob;',
'    end if;',
'    v_clob := v_clob ||',
'                            ''</div>',
'                        </div>',
'                    </div>',
'                </div>',
'            <div/>',
'        <body/>'';',
'    htp.prn(v_clob);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>40586914712426381
);
wwv_flow_imp.component_end;
end;
/
