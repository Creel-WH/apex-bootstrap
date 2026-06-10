prompt --application/pages/page_00096
begin
--   Manifest
--     PAGE: 00096
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
 p_id=>96
,p_name=>unistr('\7CFB\7EDF\66F4\65B0\63D0\9192')
,p_alias=>unistr('\7CFB\7EDF\66F4\65B0\63D0\9192')
,p_step_title=>unistr('\7CFB\7EDF\66F4\65B0\63D0\9192')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_IMAGES#editorMd/editorMd/js/editormd.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/marked.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/prettify.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/raphael.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/underscore.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/sequence-diagram.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/flowchart.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/jquery.flowchart.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/codemirror/codemirror.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/js/editormd.js',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var testEditor;',
'$(function () {',
'    $("main").append('' <div id="test-editormd"><textarea id="content" style="display:none;" name="markdownContent"></textarea></div>'');',
'    init();',
'})',
'',
'function init() {',
'',
'    // #WORKSPACE_IMAGES#editorMd/editorMd/lib/',
'',
'    testEditor = editormd("test-editormd", {',
'        htmlDecode: "style,script,iframe,sub,sup|on*",',
'        width: "90%",',
'        height: "80%",',
'        emoji: true,',
unistr('        watch: true,//\662F\5426\5F00\542F\9884\89C8\7A97\53E3'),
'        syncScrolling: "single",',
'        // path: "/js/editorMd/lib/",',
'        // path: "#WORKSPACE_IMAGES#editorMd/editorMd/lib/",',
'        path: "#WORKSPACE_FILES#editorMd/editorMd/lib/",',
'        saveHTMLToTextarea: true,',
'        imageUpload: true,',
'        imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],',
'        imageUploadURL: "https://jingbao_test_api.ywjasolar.com/apex/oss/editor/upload",',
'    });',
'',
'}'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_IMAGES#editorMd/editorMd/css/style.css',
'#WORKSPACE_IMAGES#editorMd/editorMd/css/editormd.css',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/codemirror/codemirror.min.css'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2166514249328121553)
,p_plug_name=>unistr('MakeDown\683C\5F0F\8F6C\6362')
,p_region_name=>'p_mkd'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2172214389374563920)
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
 p_id=>wwv_flow_imp.id(2259115690587221403)
,p_plug_name=>unistr('\7CFB\7EDF\66F4\65B0\63D0\9192')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>'SELECT * FROM SYSTEM_UPDATE_LOG WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID = :BASE_DEPT_ID'
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\7CFB\7EDF\66F4\65B0\63D0\9192')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(558726976055120424)
,p_name=>'BASE_DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BASE_DEPT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Base Dept Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(2172217616439563952)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2259117945998221405)
,p_name=>'UPDATE_LOG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_LOG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2259118995313221405)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2259119980714221406)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2259120973435221406)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2259122016584221407)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2259122960213221407)
,p_name=>'VERSION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERSION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7248\672C')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(2259123947557221407)
,p_name=>'UPDATE_CONTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_CONTENT'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\66F4\65B0\5185\5BB9')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(2259124963627221408)
,p_name=>'PUBLISH_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PUBLISH_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\53D1\5E03\65E5\671F')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>50
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2259116175346221403)
,p_internal_uid=>95830247523050492
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
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2259116566058221403)
,p_interactive_grid_id=>wwv_flow_imp.id(2259116175346221403)
,p_static_id=>'958307'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2259116790733221403)
,p_report_id=>wwv_flow_imp.id(2259116566058221403)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(569886960975156338)
,p_view_id=>wwv_flow_imp.id(2259116790733221403)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(558726976055120424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2173608286678988133)
,p_view_id=>wwv_flow_imp.id(2259116790733221403)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2172217616439563952)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2259118383035221405)
,p_view_id=>wwv_flow_imp.id(2259116790733221403)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2259117945998221405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2259119352242221405)
,p_view_id=>wwv_flow_imp.id(2259116790733221403)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2259118995313221405)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2259120412652221406)
,p_view_id=>wwv_flow_imp.id(2259116790733221403)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2259119980714221406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2259121361036221406)
,p_view_id=>wwv_flow_imp.id(2259116790733221403)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2259120973435221406)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2259122387759221407)
,p_view_id=>wwv_flow_imp.id(2259116790733221403)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2259122016584221407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2259123347999221407)
,p_view_id=>wwv_flow_imp.id(2259116790733221403)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2259122960213221407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2259124408432221408)
,p_view_id=>wwv_flow_imp.id(2259116790733221403)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2259123947557221407)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2259125422824221408)
,p_view_id=>wwv_flow_imp.id(2259116790733221403)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2259124963627221408)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2259133875334229852)
,p_plug_name=>unistr('\64CD\4F5C\533A ')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2259133950962229853)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2259133875334229852)
,p_button_name=>unistr('\65B0\589E\901A\77E5')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2302108173168836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E\901A\77E5')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:CR,97::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2259807277521994334)
,p_name=>'P96_VERSION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2259133875334229852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2259807415645994335)
,p_name=>'P96_UPDATEDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2259133875334229852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2259807487115994336)
,p_name=>'P96_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2259133875334229852)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2259806984793994331)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2259115690587221403)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2259807624242994337)
,p_event_id=>wwv_flow_imp.id(2259806984793994331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_UTIL.CLEAR_PAGE_CACHE(96);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2259807076587994332)
,p_event_id=>wwv_flow_imp.id(2259806984793994331)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, VERSION = "",UPDATE="",CONTENT="",',
'    model = this.data.model;',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {',
'    VERSION = model.getValue( this.data.selectedRecords[i], "VERSION");',
'    UPDATE = model.getValue( this.data.selectedRecords[i], "PUBLISH_DATE");',
'    CONTENT = model.getValue( this.data.selectedRecords[i], "UPDATE_CONTENT");',
'}',
'$s("P96_VERSION", VERSION);',
'$s("P96_UPDATEDATE", UPDATE);',
'$s("P96_CONTENT", CONTENT);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2259807220238994333)
,p_event_id=>wwv_flow_imp.id(2259806984793994331)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
' NULL;',
'END;'))
,p_attribute_02=>'P96_VERSION,P96_UPDATEDATE,P96_CONTENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2259807726174994338)
,p_event_id=>wwv_flow_imp.id(2259806984793994331)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'//apex.navigation.redirect ( "f?p=&APP_ID.:97:&APP_SESSION.::NO:RP:P97_VERSION,P97_UPDATEDATE,P97_CONTENT:&P96_VERSION.,&P96_UPDATEDATE.,&P96_CONTENT." );'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166265759677855846)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166265873050855847)
,p_event_id=>wwv_flow_imp.id(2166265759677855846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',96,''\7CFB\7EDF\66F4\65B0\63D0\9192'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
