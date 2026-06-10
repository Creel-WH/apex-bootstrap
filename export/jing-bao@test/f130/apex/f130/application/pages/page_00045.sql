prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_name=>unistr('\4E8B\4EF6\62A5\8868(\4E8B\4EF6\7EF4\5EA6)')
,p_alias=>unistr('\4E8B\4EF6\62A5\8868-\4E8B\4EF6\7EF4\5EA6')
,p_step_title=>unistr('\4E8B\4EF6\62A5\8868(\4E8B\4EF6\7EF4\5EA6)')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(518692661026917104)
,p_plug_name=>unistr('\4E8B\4EF6\62A5\8868\FF08\4E8B\4EF6\7EF4\5EA6\FF09')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330924417379485748)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.EVENT_ID,',
'       s.EVENT_SERIAL_NO,',
'       s.FAB_NAME,',
'       s.MAP_AREA_X_NAME,',
'       s.MAP_AREA_Y_NAME,',
'       s.FIRST_EVENT_NAME,',
'       s.SECOND_EVENT_NAME,',
'       s.PHENOMENON_NAME,',
'       s.DESCRIPTION,',
'       s.EVENT_CAUSE,',
'       s.CAUSE_NAME,',
'       s.EVENT_SOLUTION_SCHEME,',
'       s.IS_STOP_LINE,',
'       s.IS_STOP_LINE_STR,',
'       s.IS_KEY_PROCESS,',
'       s.IS_KEY_PROCESS_STR,',
'       s.SERIOUS_LEVEL,',
'       s.EVENT_STATUS,',
'       s.EVENT_STATUS_STR,',
'       nvl(s.SUBMIT_USER_NAME,s.SUBMIT_SOURCE) SUBMIT_USER_ID,',
'       s.SUBMIT_EXT_ORG_NAME SUBMIT_EXT_ORG_ID,',
'       s.OBLIGATION_DEPT,',
'       s.EXT_ORG_NAME,',
'       s.USER_IDENTITY_STR,',
'       s.USER_IDENTITY,',
'       s.NAME,',
'       s.JOB_NUMBER,',
'       to_char(s.BEGIN_TIME, ''yyyy-mm-dd hh24:mi:ss'')          BEGIN_TIME,',
'       to_char(s.END_TIME, ''yyyy-mm-dd hh24:mi:ss'')            END_TIME,',
'       s.DURATION_MINUTE,',
'       to_char(s.EVENT_CREATION_DATE, ''yyyy-mm-dd hh24:mi:ss'') EVENT_CREATION_DATE,',
unistr('       decode(e.SUBMIT_SOURCE, ''DING_H5'', ''\4EBA\5DE5'', ''\81EA\52A8\4E0A\62A5'')        SUBMIT_SOURCE,'),
'       listagg(v.NAME || ''-'' || v.EXT_ORG_NAME, '','')           FOLLOWER_USER,',
'       listagg(distinct case',
unistr('                            when v.OBLIGATION_DEPT = ''\6B21\8D23'' and v.USER_IDENTITY in (''SECONDARY'', ''MAIN'') then'),
'                                v.EXT_ORG_NAME',
'                            else null end, '','')                secondary_dept',
'from TENANT_EVENT e',
unistr('         inner join TENANT_EVENT_USER_CONVERGE s on e.EVENT_ID = s.EVENT_ID and s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'    and s.USER_IDENTITY = ''MAIN'' and s.BEGIN_TIME >= to_date(:P45_BEGIN, ''yyyy-mm-dd'') and',
'                                                   s.BEGIN_TIME <= to_date(:P45_END, ''yyyy-mm-dd'') and',
'                                                   s.TENANT_ID = :USERTENANT and s.BASE_DEPT_ID = :ORG_ID',
'         inner join TENANT_EVENT_USER_CONVERGE v on e.EVENT_ID = v.EVENT_ID',
'    and v.USER_IDENTITY in (''SECONDARY'', ''MAIN'') and v.BEGIN_TIME >= to_date(:P45_BEGIN, ''yyyy-mm-dd'') and',
'                                                   v.BEGIN_TIME <= to_date(:P45_END, ''yyyy-mm-dd'') and',
'                                                   v.TENANT_ID = :USERTENANT and v.BASE_DEPT_ID = :ORG_ID',
'where e.DEL_FLAG = 0',
'  and e.FAB_ID = nvl(:P45_FAB, e.FAB_ID)',
'  and e.MAP_AREA_X_ID = nvl(:P45_X_NAME, e.MAP_AREA_X_ID)',
'  and e.MAP_AREA_Y_ID = nvl(:P45_Y_NAME, e.MAP_AREA_Y_ID)',
'  and e.SUBMIT_EXT_ORG_ID = nvl(:P45_ORG, e.SUBMIT_EXT_ORG_ID)',
'  and e.FIRST_EVENT_CODE = nvl(:P45_FIRST_EVENT_CATEGORY_NAME, e.FIRST_EVENT_CODE)',
'  and e.SECOND_EVENT_CODE = nvl(:P45_SECOND_EVENT_CATEGORY_NAME, e.SECOND_EVENT_CODE)',
'  and e.PHENOMENON_CODE = nvl(:P45_EVENT_PHENOMENON_NAME, e.PHENOMENON_CODE)',
'  and e.STATUS = decode(:P45_STATUS, ''ALL'', e.STATUS, :P45_STATUS)',
'  and e.BEGIN_TIME >= to_date(:P45_BEGIN, ''yyyy-mm-dd'')',
'  and e.BEGIN_TIME <= to_date(:P45_END, ''yyyy-mm-dd'')',
'  and e.TENANT_ID = :USERTENANT',
'  and e.BASE_DEPT_ID = :ORG_ID',
'group by s.EVENT_ID, s.EVENT_SERIAL_NO, s.FAB_NAME, s.MAP_AREA_X_NAME, s.MAP_AREA_Y_NAME, s.FIRST_EVENT_NAME,',
'         s.SECOND_EVENT_NAME, s.PHENOMENON_NAME, s.DESCRIPTION, s.EVENT_CAUSE,s.CAUSE_NAME, s.EVENT_SOLUTION_SCHEME, s.IS_STOP_LINE,',
'         s.IS_STOP_LINE_STR, s.IS_KEY_PROCESS, s.IS_KEY_PROCESS_STR, s.SERIOUS_LEVEL, s.EVENT_STATUS,',
'         s.EVENT_STATUS_STR, nvl(s.SUBMIT_USER_NAME,s.SUBMIT_SOURCE), s.SUBMIT_EXT_ORG_NAME, s.OBLIGATION_DEPT, s.EXT_ORG_NAME,',
'         s.USER_IDENTITY_STR, s.USER_IDENTITY, s.NAME, s.JOB_NUMBER, to_char(s.BEGIN_TIME, ''yyyy-mm-dd hh24:mi:ss''),',
'         to_char(s.END_TIME, ''yyyy-mm-dd hh24:mi:ss''), s.DURATION_MINUTE,',
unistr('         to_char(s.EVENT_CREATION_DATE, ''yyyy-mm-dd hh24:mi:ss''), decode(e.SUBMIT_SOURCE, ''DING_H5'', ''\4EBA\5DE5'', ''\81EA\52A8\4E0A\62A5'');'),
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P45_BEGIN,P45_END,P45_FAB,P45_X_NAME,P45_Y_NAME,P45_ORG,P45_FIRST_EVENT_CATEGORY_NAME,P45_SECOND_EVENT_CATEGORY_NAME,P45_EVENT_PHENOMENON_NAME,P45_STATUS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\4E8B\4EF6\62A5\8868\FF08\4E8B\4EF6\7EF4\5EA6\FF09')
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
 p_id=>wwv_flow_imp.id(19967839440447460)
,p_name=>'CAUSE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAUSE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E8B\4EF6\5206\7C7B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>350
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(518692854049917106)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(518692961619917107)
,p_name=>'EVENT_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_SERIAL_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\4E8B\4EF6ID')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(518693083719917108)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(518693210475917109)
,p_name=>'MAP_AREA_X_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_X_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5DE5\6BB5')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(518693334559917110)
,p_name=>'MAP_AREA_Y_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_Y_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7EBF\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(518693367215917111)
,p_name=>'FIRST_EVENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_EVENT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E8B\4EF6\5927\7C7B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(518693510524917112)
,p_name=>'SECOND_EVENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SECOND_EVENT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E8B\4EF6\5C0F\7C7B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(518693622311917113)
,p_name=>'PHENOMENON_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHENOMENON_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\73B0\8C61')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>300
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
 p_id=>wwv_flow_imp.id(518693646314917114)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\63CF\8FF0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(518693799307917115)
,p_name=>'EVENT_CAUSE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_CAUSE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\539F\56E0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1500
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
 p_id=>wwv_flow_imp.id(518693936732917116)
,p_name=>'EVENT_SOLUTION_SCHEME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_SOLUTION_SCHEME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\89E3\51B3\65B9\6848')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1500
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
 p_id=>wwv_flow_imp.id(518694014847917117)
,p_name=>'IS_STOP_LINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_STOP_LINE'
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
 p_id=>wwv_flow_imp.id(518694127829917118)
,p_name=>'IS_STOP_LINE_STR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_STOP_LINE_STR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\505C\7EBF\6807\8BC6')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(518694154273917119)
,p_name=>'IS_KEY_PROCESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_KEY_PROCESS'
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
 p_id=>wwv_flow_imp.id(518694341604917120)
,p_name=>'IS_KEY_PROCESS_STR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_KEY_PROCESS_STR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(518694426330917121)
,p_name=>'SERIOUS_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SERIOUS_LEVEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(518694502398917122)
,p_name=>'EVENT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(518694551807917123)
,p_name=>'EVENT_STATUS_STR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_STATUS_STR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E8B\4EF6\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>18
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
 p_id=>wwv_flow_imp.id(518694655564917124)
,p_name=>'SUBMIT_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\4E0A\62A5\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(518694759235917125)
,p_name=>'SUBMIT_EXT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_EXT_ORG_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\4E0A\62A5\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(518694871453917126)
,p_name=>'OBLIGATION_DEPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBLIGATION_DEPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(518695008721917127)
,p_name=>'EXT_ORG_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E3B\8D23\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(518695092384917128)
,p_name=>'USER_IDENTITY_STR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_IDENTITY_STR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(518695213015917129)
,p_name=>'USER_IDENTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_IDENTITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
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
 p_id=>wwv_flow_imp.id(518695283170917130)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E3B\8D23\8D1F\8D23\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(518695390483917131)
,p_name=>'JOB_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
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
 p_id=>wwv_flow_imp.id(518695516840917132)
,p_name=>'BEGIN_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BEGIN_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\5F00\59CB\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(518695555793917133)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\7ED3\675F\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(518695651315917134)
,p_name=>'DURATION_MINUTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DURATION_MINUTE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\4E8B\4EF6\7528\65F6(\5206\949F)')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>290
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(518695811601917135)
,p_name=>'SUBMIT_SOURCE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_SOURCE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E8B\4EF6\6765\6E90')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>300
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>12
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
 p_id=>wwv_flow_imp.id(518695954934917137)
,p_name=>'FOLLOWER_USER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLLOWER_USER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\8DDF\8FDB\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>320
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(518696092616917138)
,p_name=>'SECONDARY_DEPT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SECONDARY_DEPT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\6B21\8D23\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>330
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(518696497200917142)
,p_name=>'EVENT_CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_CREATION_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\4E0A\62A5\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>340
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(518692843588917105)
,p_internal_uid=>255083380774244482
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
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
 p_id=>wwv_flow_imp.id(518698256774927481)
,p_interactive_grid_id=>wwv_flow_imp.id(518692843588917105)
,p_static_id=>'1418143'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(518698533331927482)
,p_report_id=>wwv_flow_imp.id(518698256774927481)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(48568965471469219)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(19967839440447460)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77.01599999999996
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518699031883927487)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(518692854049917106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518699920106927490)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(518692961619917107)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80.4219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518700766563927492)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(518693083719917108)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59.4219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518701647770927495)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(518693210475917109)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518702609518927498)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(518693334559917110)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>58
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518703529009927500)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(518693367215917111)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518704361950927503)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(518693510524917112)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89.422
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518705307665927505)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(518693622311917113)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.4688
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518706164345927508)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(518693646314917114)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>179.4219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518707077781927511)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(518693799307917115)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80.4219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518708033029927513)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(518693936732917116)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518708829849927516)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(518694014847917117)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518709691603927519)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(518694127829917118)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110.4219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518710576584927521)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(518694154273917119)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518711527490927524)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(518694341604917120)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518712441202927527)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(518694426330917121)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518713259090927529)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(518694502398917122)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518714182076927532)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(518694551807917123)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518715065422927535)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(518694655564917124)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81.4219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518716014321927537)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(518694759235917125)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95.4219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518716896170927540)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(518694871453917126)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518717842266927543)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(518695008721917127)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518718721316927545)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(518695092384917128)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518719607354927548)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(518695213015917129)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518720538946927551)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(518695283170917130)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87.54700000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518721367123927553)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(518695390483917131)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518722250869927556)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(518695516840917132)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518723216098927558)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(518695555793917133)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518724125543927561)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(518695651315917134)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518724960174927564)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(518695811601917135)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>102
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518726788775927569)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(518695954934917137)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518727673707927572)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(518696092616917138)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(518753070829160221)
,p_view_id=>wwv_flow_imp.id(518698533331927482)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(518696497200917142)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1980518104849482565)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2201043820420024154)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2330990162870485778)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1985406475224616784)
,p_plug_name=>unistr('\7B5B\9009')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(320278826017868447)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1976446601562499997)
,p_name=>'P45_FAB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select to_nchar(''\5168\90E8'') NAME, null FAB_ID'),
'from dual',
'union all',
'SELECT NAME, FAB_ID',
'FROM FND_FAB',
'WHERE DEL_FLAG = 0',
'  and TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID = :ORG_ID'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1976446689316499998)
,p_name=>'P45_X_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_prompt=>unistr('\5DE5\6BB5')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT NAME,AREA_ID FROM FND_AREAS WHERE TENANT_ID = :USERTENANT ',
'AND TYPE = 1 AND FAB_ID = :P45_FAB  and BASE_DEPT_ID = :ORG_ID ORDER BY AREA_ID  '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P45_FAB'
,p_ajax_items_to_submit=>'P45_FAB'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1976446770304499999)
,p_name=>'P45_Y_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_prompt=>unistr('\4EA7\7EBF')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'SELECT DISTINCT NAME,AREA_ID FROM FND_AREAS WHERE TENANT_ID = :USERTENANT AND TYPE = 2 ',
'AND FAB_ID = :P45_FAB and BASE_DEPT_ID = :ORG_ID and DEL_FLAG=0 ORDER BY AREA_ID  '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P45_FAB'
,p_ajax_items_to_submit=>'P45_FAB'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1976446845108500000)
,p_name=>'P45_ORG'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_prompt=>unistr('\4E0A\62A5\90E8\95E8')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select to_nchar(''\5168\90E8''),null'),
'from dual',
'union all',
'',
'SELECT NAME K,EXT_ORG_ID V FROM MPF_SHARE_DEPT_V WHERE TENANT_ID = :USERTENANT and BASE_DEPT_ID = :ORG_ID '))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1976446959310500001)
,p_name=>'P45_STATUS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_item_default=>'ALL'
,p_prompt=>unistr('\4E8B\4EF6\72B6\6001')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:\5168\90E8;ALL,\5DF2\89E3\51B3;RESOLVED,\5DF2\53D6\6D88;CLOSED,\7B49\5F85\89E3\51B3;WAIT_RESOLVE,\7B49\5F85\63A5\6536;WAIT_RECEIVE,\7B49\5F85\5206\914D;WAIT_ASSIGNED')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1985422375551616820)
,p_name=>'P45_BEGIN'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_item_default=>'sysdate - 7'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\5F00\59CB\65E5\671F')
,p_format_mask=>'yyyy-MM-dd'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1985422444182616821)
,p_name=>'P45_END'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\7ED3\675F\65E5\671F')
,p_format_mask=>'yyyy-MM-dd'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'ITEM',
  'min_item', 'P45_BEGIN',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2160548112384594832)
,p_name=>'P45_FIRST_EVENT_CATEGORY_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_prompt=>unistr('\5927\7C7B')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME, CODE',
'from TENANT_EVENT_CATEGORY',
'where TENANT_ID = :USERTENANT and BASE_DEPT_ID = :ORG_ID',
'  and DEL_FLAG = 0',
'  and NODE_LEVEL = 1;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
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
 p_id=>wwv_flow_imp.id(2160548216362594833)
,p_name=>'P45_EVENT_PHENOMENON_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_prompt=>unistr('\73B0\8C61')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME, CODE',
'from TENANT_EVENT_PHENOMENON',
'where TENANT_ID = :USERTENANT and BASE_DEPT_ID = :ORG_ID',
'  and DEL_FLAG = 0;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
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
 p_id=>wwv_flow_imp.id(2160548277479594834)
,p_name=>'P45_MAIN_USER_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2160548376835594835)
,p_name=>'P45_SECOND_EVENT_CATEGORY_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_prompt=>unistr('\5C0F\7C7B')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NAME, CODE',
'         from TENANT_EVENT_CATEGORY',
'         where TENANT_ID = :USERTENANT and BASE_DEPT_ID = :ORG_ID',
'           and DEL_FLAG = 0',
'           and NODE_LEVEL = 2',
'        --    and decode(nvl(:P45_FIRST_EVENT_CATEGORY_NAME, 0), 0, 0, 1) = 1',
'           and PARENT_CODE =  :P45_FIRST_EVENT_CATEGORY_NAME',
' '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P45_FIRST_EVENT_CATEGORY_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
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
 p_id=>wwv_flow_imp.id(2160548849551594840)
,p_name=>'P45_SECOND_EVENT_CATEGORY_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1985406475224616784)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320283607587868454)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320284079030868455)
,p_event_id=>wwv_flow_imp.id(320283607587868454)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',45,''\4E8B\4EF6\62A5\8868'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320284532899868455)
,p_name=>unistr('\5237\65B0\6570\636E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(320278826017868447)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320285047569868455)
,p_event_id=>wwv_flow_imp.id(320284532899868455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(518692661026917104)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
