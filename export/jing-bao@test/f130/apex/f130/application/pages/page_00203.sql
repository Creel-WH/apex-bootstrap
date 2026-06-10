prompt --application/pages/page_00203
begin
--   Manifest
--     PAGE: 00203
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
 p_id=>203
,p_name=>unistr('\590D\76D8\89C4\5219\914D\7F6E')
,p_alias=>unistr('\590D\76D8\89C4\5219\914D\7F6E')
,p_step_title=>unistr('\590D\76D8\89C4\5219\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2167259643519264555)
,p_plug_name=>unistr('\9762\5305\5C51')
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
 p_id=>wwv_flow_imp.id(2285228552978954335)
,p_plug_name=>unistr('\590D\76D8\89C4\5219\914D\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM TENANT_EVENT_REVIEW_RULE_CONFIG WHERE DEL_FLAG = 0 ',
'AND TENANT_ID = :USERTENANT ',
'AND BASE_DEPT_ID =:BASE_DEPT_ID',
'and  EXT_ORG_ID IN (SELECT DISTINCT DECODE(:USERAUTH,0,EXT_ORG_ID,:USERDEPT) FROM MPF_SHARE_DEPT_V WHERE TENANT_ID = :USERTENANT )'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\590D\76D8\89C4\5219\914D\7F6E')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(569790515998977530)
,p_name=>'BASE_DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BASE_DEPT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Base Dept Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>36
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
 p_id=>wwv_flow_imp.id(2282773513950877398)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2282773642015877399)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285229821907954339)
,p_name=>'EVENT_REVIEW_RULE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_REVIEW_RULE_ID'
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
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285230832488954341)
,p_name=>'RULE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RULE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\89C4\5219\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>256
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
 p_id=>wwv_flow_imp.id(2285231870602954341)
,p_name=>'EXT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\90E8\95E8\540D\79F0')
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
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select name, ext_org_id from MPF_SHARE_DEPT_V WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285232862286954342)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\662F\5426\542F\7528')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2258358363445047301)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285233818913954342)
,p_name=>'IS_STOP_LINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_STOP_LINE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\662F\5426\505C\7EBF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2168085981189418954)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285234791788954343)
,p_name=>'IS_KEY_PROCESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_KEY_PROCESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\662F\5426\74F6\9888\5DE5\5E8F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2168085981189418954)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285235864694954343)
,p_name=>'EVENT_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TIME'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\4E8B\4EF6\6301\7EED\65F6\95F4\FF08\5206\949F\FF09')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285236870296954344)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285237839557954344)
,p_name=>'CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285238863475954345)
,p_name=>'CREATE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATE_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285239804314954345)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285240786817954346)
,p_name=>'UPDATE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2285241877799954346)
,p_name=>'DEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL_FLAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2285229007849954335)
,p_internal_uid=>121943080026783424
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(2174749908187918676)
,p_update_authorization_scheme=>wwv_flow_imp.id(2174750133261918676)
,p_delete_authorization_scheme=>wwv_flow_imp.id(2174750521730918677)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
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
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2285229466688954336)
,p_interactive_grid_id=>wwv_flow_imp.id(2285229007849954335)
,p_static_id=>'1121889'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2285229661773954337)
,p_report_id=>wwv_flow_imp.id(2285229466688954336)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(569918471929029052)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(569790515998977530)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285230278500954340)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2285229821907954339)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285231186770954341)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2285230832488954341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285232247489954341)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2285231870602954341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285233275524954342)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2285232862286954342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285234208989954342)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2285233818913954342)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285235247581954343)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2285234791788954343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285236221118954343)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2285235864694954343)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285237272219954344)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2285236870296954344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285238249017954344)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2285237839557954344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285239257603954345)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2285238863475954345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285240232525954345)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2285239804314954345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285241208869954346)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2285240786817954346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285242198734954346)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2285241877799954346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2285255542230070525)
,p_view_id=>wwv_flow_imp.id(2285229661773954337)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(2282773513950877398)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2147139264253129859)
,p_tabular_form_region_id=>wwv_flow_imp.id(2285228552978954335)
,p_validation_name=>unistr('\65B0\5EFA')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number(10) := 0;',
'',
'begin',
'',
'    if :EVENT_REVIEW_RULE_ID is null then',
'        select count(1)',
'        into v_count',
'        from TENANT_EVENT_REVIEW_RULE_CONFIG',
'        where EXT_ORG_ID = :EXT_ORG_ID',
'          and IS_STOP_LINE = :IS_STOP_LINE',
'          and IS_KEY_PROCESS = :IS_KEY_PROCESS',
'          and TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and DEL_FLAG = 0;',
'        if v_count = 0 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'',
'    else',
'        select count(1)',
'        into v_count',
'        from TENANT_EVENT_REVIEW_RULE_CONFIG',
'        where EXT_ORG_ID = :EXT_ORG_ID',
'          and IS_STOP_LINE = :IS_STOP_LINE',
'          and IS_KEY_PROCESS = :IS_KEY_PROCESS',
'          and TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_RULE_ID != :EVENT_REVIEW_RULE_ID',
'          and DEL_FLAG = 0;',
'',
'        if v_count = 0 then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    end if;',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\90E8\95E8\89C4\5219\91CD\590D')
,p_associated_column=>'EXT_ORG_ID'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2168293514153068338)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2285228552978954335)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\590D\76D8\89C4\5219\914D\7F6E - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''C'' THEN INSERT INTO TENANT_EVENT_REVIEW_RULE_CONFIG (RULE_NAME, EXT_ORG_ID,',
'                                                                   IS_ENABLE,',
'                                                                   IS_STOP_LINE,',
'                                                                   IS_KEY_PROCESS,',
'                                                                   EVENT_TIME,',
'                                                                   TENANT_ID,',
'                                                                   BASE_DEPT_ID,',
'                                                                   CREATE_BY,',
'                                                                   UPDATE_BY)',
'                      VALUES (:RULE_NAME, :EXT_ORG_ID, :IS_ENABLE, :IS_STOP_LINE, :IS_KEY_PROCESS, :EVENT_TIME,',
'                              :USERTENANT,:BASE_DEPT_ID, :USER_ID, :USER_ID)',
'                   RETURNING EVENT_REVIEW_RULE_ID INTO :EVENT_REVIEW_RULE_ID;',
'        WHEN ''U'' THEN UPDATE TENANT_EVENT_REVIEW_RULE_CONFIG',
'                         SET RULE_NAME      = :RULE_NAME,',
'                             EXT_ORG_ID     = :EXT_ORG_ID,',
'                             IS_ENABLE      = :IS_ENABLE,',
'                             IS_STOP_LINE   = :IS_STOP_LINE,',
'                             IS_KEY_PROCESS = :IS_KEY_PROCESS,',
'                             EVENT_TIME     = :EVENT_TIME,',
'                             UPDATE_BY      = :USER_ID,',
'                             UPDATED_DATE   = SYSDATE',
'                       WHERE EVENT_REVIEW_RULE_ID = :EVENT_REVIEW_RULE_ID;',
'        WHEN ''D'' THEN UPDATE TENANT_EVENT_REVIEW_RULE_CONFIG',
'                         SET UPDATE_BY    = :USER_ID,',
'                             UPDATED_DATE = SYSDATE,',
'                             DEL_FLAG     = 1',
'                       WHERE EVENT_REVIEW_RULE_ID = :EVENT_REVIEW_RULE_ID;',
'        END CASE;',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>42730373582283482
);
wwv_flow_imp.component_end;
end;
/
