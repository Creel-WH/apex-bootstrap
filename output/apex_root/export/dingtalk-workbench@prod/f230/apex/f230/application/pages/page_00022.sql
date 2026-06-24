prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_page.create_page(
 p_id=>22
,p_name=>unistr('\90E8\95E8\7BA1\7406')
,p_alias=>unistr('\90E8\95E8\7BA1\7406')
,p_step_title=>unistr('\90E8\95E8\7BA1\7406')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4422044825108172097)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* \8BBE\7F6E\9009\4E2D\90E8\95E8\5BBD\5EA6 */ '),
'document.getElementById(''P22_DEPT_ID'').style.width = ''200px'';',
'',
'',
''))
,p_javascript_code_onload=>'$("#refresh-btn").hide()'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* \8BBE\7F6E\9009\4E2D\90E8\95E8\5BBD\5EA6 */ '),
'.t-Body-side{width:22rem!important;}',
'',
' /* element.style {',
'    width: 200px;',
'} */',
'',
' /* #P22_DEPT_ID {',
'    width: 200px !important;',
'}  */',
'',
'/* #P22_DEPT_ID {',
'    min-width: 200px;',
'} */',
'',
'#dept_area {',
'    width: 300px; ',
unistr('     /* \8BBE\7F6E\5BBD\5EA6\4E3A300\50CF\7D20 */'),
'    height: 200px; ',
unistr('    /* \8BBE\7F6E\9AD8\5EA6\4E3A200\50CF\7D20 */'),
'}',
'',
'',
'',
'/* ',
'.dept_area {',
'    width: 100%;',
'    height: 200px;',
'}',
'',
'@media (min-width: 768px) {',
'    .dept_area {',
'        width: 50%;',
'        height: 300px;',
'    }',
'} */'))
,p_step_template=>wwv_flow_imp.id(4421755169914171835)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2793273322138942047)
,p_plug_name=>unistr('\65B0\5EFA')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421788139356171854)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2793273417849942048)
,p_plug_name=>unistr('\65B0\5EFA')
,p_parent_plug_id=>wwv_flow_imp.id(2793273322138942047)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421788139356171854)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5085619469831837031)
,p_plug_name=>unistr('\90E8\95E8\6210\5458')
,p_parent_plug_id=>wwv_flow_imp.id(2793273322138942047)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>wwv_flow_imp.id(4421854746448171880)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select u.USER_ID,',
'       TITLE,',
'       NAME,',
'       JOB_NUMBER,',
'       MANAGER_USER_ID',
'from MPF_BASIC_JA_DING_DEPT_USER_V du',
'left join MPF_BASIC_JA_DING_USER_V u on du.USER_ID = u.USER_ID',
'where DEPT_ID = :P22_DEPT_ID and u.IS_LEAVE = 0 and TENANT_ID = :JW_USER_TENANT'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P22_DEPT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\90E8\95E8\6210\5458')
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
 p_id=>wwv_flow_imp.id(3117812768589822956)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3117812880338822957)
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
 p_id=>wwv_flow_imp.id(5085624772904837038)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\59D3\540D')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>64
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
 p_id=>wwv_flow_imp.id(5086430539795990084)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5086430623334990085)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\804C\4F4D')
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
 p_id=>wwv_flow_imp.id(5086430787801990086)
,p_name=>'JOB_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5DE5\53F7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(5086430883827990087)
,p_name=>'MANAGER_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MANAGER_USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\76F4\5C5E\4E0A\7EA7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4427960968475866582)
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5085619983970837032)
,p_internal_uid=>3941264480211191612
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5085620390478837032)
,p_interactive_grid_id=>wwv_flow_imp.id(5085619983970837032)
,p_static_id=>'2020243'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5085620506603837032)
,p_report_id=>wwv_flow_imp.id(5085620390478837032)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3118002983535292371)
,p_view_id=>wwv_flow_imp.id(5085620506603837032)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3117812768589822956)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5085625114244837038)
,p_view_id=>wwv_flow_imp.id(5085620506603837032)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5085624772904837038)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5087629511342478472)
,p_view_id=>wwv_flow_imp.id(5085620506603837032)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5086430539795990084)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5087630411026478479)
,p_view_id=>wwv_flow_imp.id(5085620506603837032)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5086430623334990085)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5087631316427478482)
,p_view_id=>wwv_flow_imp.id(5085620506603837032)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5086430787801990086)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5087632258115478485)
,p_view_id=>wwv_flow_imp.id(5085620506603837032)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5086430883827990087)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5085618801980837028)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421867146447171885)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4421751410350171815)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4421929517555171922)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5086430177116990080)
,p_plug_name=>unistr('\7EC4\7EC7\67B6\6784')
,p_region_name=>'dept_area'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(4421788139356171854)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select distinct (o.DEPT_ID)      as id,          --\6570\636Eid'),
unistr('                o.PARENT_DEPT_ID as PARENT_ID,   --\7236id'),
unistr('                o.NAME           as title,       --\663E\793A\7684\6807\9898'),
unistr('                o.DEPT_ID        as VALUE,       --\6807\9898\5BF9\5E94\7684\503C'),
'                -- case',
'                --     when o.PARENT_ID is null then',
'                --         0',
'                --     else',
'                --         1',
unistr('                --     end           as TYPE,        --\4F7F\7528\9009\62E9\529F\80FD\65F6\9700\8981 - \662F\914D\7F6E json \4E2D typeSettings \7684\6620\5C04\503C'),
'                1                as TYPE,',
'                case',
'                    when DEPT_ID = 1 then',
'                        1',
'                    else',
'                        0',
unistr('                    end          as SELECTED,    --\8BBE\7F6E\52A0\8F7D\65F6\9009\4E2D 0(null): \4E0D\9009\4E2D 1:\9009\4E2D'),
unistr('                1                as EXPANDED,    --\662F\5426\5C55\5F00\672A\9009\4E2D\9879 0(null): \4E0D\5C55\5F00 1:\5C55\5F00'),
unistr('               1               as CHECKBOX,    --\662F\5426\542F\7528\590D\9009\6846 0(null): \7981\7528 1:\542F\7528'),
unistr('                0                as UNSELECTABLE --\8BBE\7F6E\4E0D\53EF\9009\4E2D 0(null): \53EF\4EE5 1: \4E0D\53EF\4EE5'),
'from MPF_BASIC_JA_DING_DEPT_V o',
'start with o.PARENT_DEPT_ID is null',
'connect by prior o.DEPT_ID = o.PARENT_DEPT_ID',
'order by o.DEPT_ID;'))
,p_plug_source_type=>'PLUGIN_APEX.FANCYTREE.SELECT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '  "animationDuration": 200,',
    '  "autoExpand2Level": 0,',
    '  "checkbox": "fa-square-o",',
    '  "checkboxSelected": "fa-check-square",',
    '  "checkboxUnknown": "fa-square",',
    '  "enableCheckBox": true,',
    '  "forceSelectionSet": true,',
    '  "forceRefreshEventOnStart": false,',
    '  "markNodesWithChildren": false,',
    '  "markerModifier": "fam-plus fam-is-info",',
    '  "openParentOfActiveNode": true,',
    '  "openParentOfSelected": true,',
    '  "refresh": 0,',
    '  "search": {',
    '    "autoExpand": true,',
    '    "leavesOnly": false,',
    '    "highlight": true,',
    '    "counter": true,',
    '    "hideUnmatched": true,',
    '    "debounce": {',
    '      "enabled": true,',
    '      "time": 400',
    '    }',
    '  },',
    '  "selectMode": 1,',
    '  "setActiveNode": true,',
    '  "setItemsOnInit": false,',
    '  "typeSettings": [',
    '    {',
    '      "id": 1 ,',
    '      "storeItem": "P22_DEPT_ID",',
    '      "icon": "fa-folder-o"',
    '    }',
    '  ]',
    '}')),
  'attribute_03', 'Error occured! Please check browser console for more information.',
  'attribute_05', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1475603922723664989)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5085619469831837031)
,p_button_name=>unistr('\65B0\5EFA')
,p_button_static_id=>'refresh-btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\65B0\5EFA')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5086437200752990120)
,p_name=>'P22_DEPT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2793273417849942048)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>unistr('DEPT_NAME\FF08\542B\7236\7EA7\7EC4\7EC7\FF09')
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'       (SELECT V1.NAME',
'        FROM MPF_BASIC_JA_DING_DEPT_V V1',
'        WHERE V1.DEPT_ID = V.PARENT_DEPT_ID) || ''-'' || V.NAME AS PARENT_DEPT_NAME,',
'       V.DEPT_ID',
'FROM MPF_BASIC_JA_DING_DEPT_V V;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(4421925440658171917)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1475606007756664991)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_DEPT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1475606542561664991)
,p_event_id=>wwv_flow_imp.id(1475606007756664991)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5085619469831837031)
,p_attribute_01=>'N'
,p_build_option_id=>wwv_flow_imp.id(4421750870193171812)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1475607036469664992)
,p_event_id=>wwv_flow_imp.id(1475606007756664991)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P22_DEPT_ID'')){',
'    $(''#refresh-btn'').click()',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1475607487162664992)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1475603922723664989)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1475607984593664992)
,p_event_id=>wwv_flow_imp.id(1475607487162664992)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5085619469831837031)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1475604459691664990)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5085619469831837031)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\90E8\95E8\6210\5458 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>331248955932019570
);
wwv_flow_imp.component_end;
end;
/
