prompt --application/pages/page_00149
begin
--   Manifest
--     PAGE: 00149
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
 p_id=>149
,p_name=>unistr('\610F\89C1\53CD\9988')
,p_alias=>unistr('\610F\89C1\53CD\9988')
,p_step_title=>unistr('\610F\89C1\53CD\9988')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getDetail(feedback_id){',
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
 p_id=>wwv_flow_imp.id(2223832536085302534)
,p_plug_name=>unistr('\8BE6\60C5')
,p_region_name=>'detail_html'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(2359799455309135295)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2310206007135600955)
,p_plug_name=>unistr('\610F\89C1\53CD\9988')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       FEEDBACK_ID,',
'       REMARK,',
'       SUBMIT_USER_ID,',
'       SUBMIT_EXT_ORG_ID,',
'       CONTENT,',
'       CURRENT_PAGE_URL,',
'       CURRENT_PAGE_NAME,',
'       IMAGES_URLS,',
'       STATUS,',
'       ''javascript:$("#detail").click();getDetail('' || FEEDBACK_ID || '');'' as detailaction,',
unistr('       ''\67E5\770B\8BE6\60C5'' as detail'),
'  from TENANT_FEEDBACK WHERE TENANT_ID = :USERTENANT ',
'  and BASE_DEPT_ID= :BASE_DEPT_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\610F\89C1\53CD\9988')
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
 p_id=>wwv_flow_imp.id(2223832743765302536)
,p_name=>'FEEDBACK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK_ID'
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
 p_id=>wwv_flow_imp.id(2223832860793302537)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5907\6CE8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(2223832972111302538)
,p_name=>'SUBMIT_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\63D0\4EA4\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_lov_id=>wwv_flow_imp.id(2233696427396953488)
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
 p_id=>wwv_flow_imp.id(2223833068161302539)
,p_name=>'SUBMIT_EXT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_EXT_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\63D0\4EA4\90E8\95E8')
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
,p_lov_id=>wwv_flow_imp.id(2316120847651351941)
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
 p_id=>wwv_flow_imp.id(2223833140606302540)
,p_name=>'CONTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTENT'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\53CD\9988\5185\5BB9')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(2223833238014302541)
,p_name=>'CURRENT_PAGE_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_PAGE_URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\53CD\9988\9875\9762url')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(2223833327132302542)
,p_name=>'CURRENT_PAGE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CURRENT_PAGE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\53CD\9988\9875\9762\540D\79F0')
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
 p_id=>wwv_flow_imp.id(2223833451697302543)
,p_name=>'IMAGES_URLS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMAGES_URLS'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2223833520404302544)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(2223833648820302545)
,p_name=>'DETAILACTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAILACTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(2223833779283302546)
,p_name=>'DETAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>12
,p_link_target=>'&DETAILACTION.'
,p_link_text=>'&DETAIL.'
,p_link_attributes=>'class = ''t-Button'''
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
 p_id=>wwv_flow_imp.id(2369642632665366292)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2369642729955366293)
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
 p_id=>wwv_flow_imp.id(2223832625688302535)
,p_internal_uid=>2785235681832526
,p_is_editable=>true
,p_edit_operations=>'u'
,p_update_authorization_scheme=>wwv_flow_imp.id(2232511595445217774)
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
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
 p_id=>wwv_flow_imp.id(2223874746459378599)
,p_interactive_grid_id=>wwv_flow_imp.id(2223832625688302535)
,p_static_id=>'28274'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2223874963912378599)
,p_report_id=>wwv_flow_imp.id(2223874746459378599)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223875391600378601)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2223832743765302536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223876371255378605)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2223832860793302537)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223877260954378607)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2223832972111302538)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223878114448378610)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2223833068161302539)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223879051872378612)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2223833140606302540)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223879941185378615)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2223833238014302541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223880812295378617)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2223833327132302542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223881764348378619)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2223833451697302543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223882672070378622)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2223833520404302544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223883523168378624)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2223833648820302545)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2223884441394378627)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2223833779283302546)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2386666915035253823)
,p_view_id=>wwv_flow_imp.id(2223874963912378599)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2369642632665366292)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2223832227730302531)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2310206007135600955)
,p_button_name=>'DETAIL'
,p_button_static_id=>'detail'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359868796480135325)
,p_button_image_alt=>'detail'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2223832334515302532)
,p_name=>unistr('\67E5\770B\8BE6\60C5')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2223832227730302531)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2223832447279302533)
,p_event_id=>wwv_flow_imp.id(2223832334515302532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2223832536085302534)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2369642895742366294)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2310206007135600955)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\610F\89C1\53CD\9988 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>186318292988282340
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2223833886901302547)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetDetail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_clob                CLOB;',
'    v_img_clob            CLOB;',
'    v_feedback_id         number(20) := apex_application.g_x01;',
'    v_remark              varchar2(2000);',
'    v_submit_user_id      number(20);',
'    v_submit_ext_org_id   number(20);',
'    v_content             varchar2(2000);',
'    v_current_page_url    varchar2(100);',
'    v_current_page_name   varchar2(100);',
'    v_image_urls          varchar2(1000);',
'    v_submit_user_name    varchar2(100);',
'    v_submit_ext_org_name varchar2(100);',
'    v_event_id            number(20);',
'begin',
'    select REMARK,',
'           SUBMIT_USER_ID,',
'           SUBMIT_EXT_ORG_ID,',
'           CONTENT,',
'           CURRENT_PAGE_URL,',
'           CURRENT_PAGE_NAME,',
'           IMAGES_URLS',
'    into',
'        v_remark,',
'        v_submit_user_id,',
'        v_submit_ext_org_id,',
'        v_content,',
'        v_current_page_url,',
'        v_current_page_name,',
'        v_image_urls',
'    from TENANT_FEEDBACK',
'    where feedback_id = v_feedback_id;',
'',
'    select name into v_submit_user_name from MPF_SHARE_USER_V where ext_user_id = v_submit_user_id;',
'    select name into v_submit_ext_org_name from MPF_SHARE_DEPT_V where ext_org_id = v_submit_ext_org_id;',
'    for item in (',
'        select REGEXP_SUBSTR(v_image_urls, ''[^,]+'', 1, level) as IMAGE_URL',
'        from dual',
'        connect by level <= (REGEXP_COUNT(v_image_urls, ''\,'') + 1)',
'        )',
'        loop',
'            v_img_clob := v_img_clob || ''<img src="'' || item.IMAGE_URL ||',
'                          ''"class="rounded" width="200px" height="200px" alt="">'';',
'        end loop;',
'    v_clob :=',
'                ''<body>',
'                    <div class="view">',
'                        <div class="row gap">',
'                            <div class="col cell">',
'                                <div class="cell-value">',
unistr('                                    <label class="cell-title" for="">\63D0\4EA4\4EBA</label>'),
'                                    <div class="cell-content">',
'                                        <div class="person">',
'                                            <p class="name">'' || v_submit_user_name || ''</p>',
'                                            <span class="dept">'' || v_submit_ext_org_name || ''</span>',
'                                        </div>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                        <div class="row gap">',
'                            <div class="col cell">',
'                                <div class="cell-value">',
unistr('                                    <label class="cell-title" for="">\53CD\9988\5185\5BB9:</label>'),
'                                    <div>',
'                                        <span class="cell-span"> '' || v_content || '' </span>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                        <div class="row gap">',
'                            <div class="col cell">',
'                                <div class="cell-value">',
unistr('                                    <label class="cell-title" for="">\53CD\9988\9875\9762:</label>'),
'                                    <div>',
'                                        <span class="cell-span">'' || v_current_page_name || ''</span>',
'                                        <span class="cell-span">'' || v_current_page_url || ''</span>',
'                                    </div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                        <div class="row gap">',
'                            <div class="col cell">',
'                                <div class="cell-value">',
unistr('                                    <label class="cell-title" for="">\53CD\9988\56FE\7247:</label>'),
'                                    <div>'';',
'    if v_img_clob != null then',
'        v_clob := v_clob || v_img_clob;',
'    end if;',
'    v_clob := v_clob ||',
'                                    ''</div>',
'                                </div>',
'                            </div>',
'                        </div>',
'                    <div/>',
'                <body/>'';',
'    htp.prn(v_clob);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>40509284147218593
);
wwv_flow_imp.component_end;
end;
/
