prompt --application/pages/page_00294
begin
--   Manifest
--     PAGE: 00294
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
 p_id=>294
,p_name=>unistr('\53D8\66F4\70B9\914D\7F6E')
,p_alias=>unistr('\53D8\66F4\70B9\914D\7F6E')
,p_step_title=>unistr('\53D8\66F4\70B9\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(221917483227404467)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function btn_operate(CONFIG_ID) {',
unistr('    //\628A\70B9\51FB\7684CONFIG_ID\4F20\9012\5230\4FEE\6539\8BE6\60C5\9875\9762'),
'    $s(''P294_CONFIG_ID'', CONFIG_ID);',
unistr('    // \70B9\51FB\4FEE\6539'),
'    $(''#update_btn'').click();',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(488764177200608258)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2156802003035093160)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2286748345485554784)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(488764861645608259)
,p_plug_name=>unistr('\53D8\66F4\70B9\914D\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CC.CONFIG_ID,',
'       CC.NAME,',
'       CC.IS_SUPPORT_IMAGE,',
'       CC.CREATED_BY,',
'       CC.CREATION_DATE,',
'       CC.UPDATED_BY,',
'       CC.UPDATED_DATE,',
'       CC.BASE_DEPT_ID,',
'       COUNT(CI.ITEM_ID) CONFIG_COUNT,',
'       ''''                OPERATION',
'FROM CHECK_CHANGE_CONFIG CC',
'         LEFT JOIN CHECK_CHANGE_CONFIG_ITEM CI',
'                   ON CC.CONFIG_ID = CI.CONFIG_ID',
'                       AND CI.DEL_FLAG = 0',
'                       AND CI.TENANT_ID = :USERTENANT',
'                       AND CI.BASE_DEPT_ID = :BASE_DEPT_ID',
'                       AND CI.IS_SAVE = 1',
'WHERE CC.TENANT_ID = :USERTENANT',
'  AND CC.DEL_FLAG = 0',
'  AND CC.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND CC.IS_SAVE = 1',
'GROUP BY CC.CONFIG_ID,',
'         CC.NAME,',
'         CC.IS_SUPPORT_IMAGE,',
'         CC.CREATED_BY,',
'         CC.CREATION_DATE,',
'         CC.UPDATED_BY,',
'         CC.UPDATED_DATE,',
'         CC.BASE_DEPT_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\53D8\66F4\70B9\914D\7F6E')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(466212593114174961)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(466212702114174962)
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
 p_id=>wwv_flow_imp.id(466213035016174965)
,p_name=>'CONFIG_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIG_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>unistr('\53D8\66F4\70B9\6570\91CF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:297:&SESSION.::&DEBUG.:297:P297_CONFIG_ID:&CONFIG_ID.'
,p_link_text=>'&CONFIG_COUNT.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(466213096891174966)
,p_name=>'OPERATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:295:&SESSION.::&DEBUG.:295:P295_CONFIG_ID:&CONFIG_ID.'
,p_link_text=>unistr('\4FEE\6539')
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(488766187178608264)
,p_name=>'CONFIG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(488767169003608270)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\53D8\66F4\70B9\7C7B\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(488768092619608271)
,p_name=>'IS_SUPPORT_IMAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_SUPPORT_IMAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\56FE\7247\4E0A\4F20')
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(221627055922627542)
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(488769167346608272)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(488770148019608273)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(488771121575608273)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(488772150681608274)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(488773183019608275)
,p_name=>'BASE_DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BASE_DEPT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(488765368263608259)
,p_internal_uid=>342520271310447173
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        tooltip: {',
'            // when the tooltip is integrated with the grid view the content callback',
'            // gets some extra helpful parameters',
'            content: function(callback, model, recordMeta, colMeta, columnDef ) {',
'                var text = null;',
'',
'                // if in/over the row header display a tooltip based on ',
'                // the record edit state metadata',
'                if (recordMeta && $(this).hasClass( "a-GV-rowHeader" ) ) {',
'                    if ( recordMeta.deleted ) {',
'                        text = "This record has been deleted";',
'                    } else if ( recordMeta.inserted ) {',
'                        text = "This record has been added";',
'                    } else if ( recordMeta.updated ) {',
'                        text = "This record has been changed";',
'                    }',
'                } else {',
'                    if ( columnDef && recordMeta) {',
'                        // if in/over the DEFAULT_VALUE column put the DEFAULT_VALUE in a tooltip so more of the DEFAULT_VALUE can be seen',
'                        // if in/over the name column show the hire date',
'                        if ( columnDef.property === "NAME" ) {',
'                            text = model.getValue( recordMeta.record, "NAME" );',
'                        } ',
'                        if ( columnDef.property === "REMARK" ) {',
'                            text = model.getValue( recordMeta.record, "REMARK" );',
'                        } ',
'                    }',
'                    // if in/over any other column display a tooltip based on ',
'                    // the changed state metadata',
'                    if ( colMeta && colMeta.changed ) {',
'                        if ( text !== null) {',
'                            text += "<br>";',
'                        } else {',
'                            text = "";',
'                        }',
'                        text += "This cell has been changed";',
'                    }',
'                }',
'                return text;',
'            }',
'        }',
'    };',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(488765713525608261)
,p_interactive_grid_id=>wwv_flow_imp.id(488765368263608259)
,p_static_id=>'1918079'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(488765947655608262)
,p_report_id=>wwv_flow_imp.id(488765713525608261)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488766535052608265)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(488766187178608264)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488767530983608271)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(488767169003608270)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488768579469608271)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(488768092619608271)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488769515862608272)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(488769167346608272)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488770576844608273)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(488770148019608273)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488771565062608274)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(488771121575608273)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488772589580608274)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(488772150681608274)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488773565414608275)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(488773183019608275)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488775065061610723)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(466212593114174961)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488787371306902013)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(466213035016174965)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488788227602902016)
,p_view_id=>wwv_flow_imp.id(488765947655608262)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(466213096891174966)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(221625115235627533)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(488764861645608259)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2286747086875554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:295:&SESSION.::&DEBUG.:295::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211565862885173401)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(488764861645608259)
,p_button_name=>unistr('\6279\91CF\652F\6301')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2286747086875554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\652F\6301')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(221947210110034797)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(488764861645608259)
,p_button_name=>unistr('\6279\91CF\4E0D\652F\6301')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2286747086875554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\4E0D\652F\6301')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211565902005173402)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(488764861645608259)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2286747086875554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211566062606173403)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(488764861645608259)
,p_button_name=>unistr('\4FEE\6539')
,p_button_static_id=>'update_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(211566195212173404)
,p_branch_name=>unistr('\4FEE\6539-\8F6C\5230295\9875')
,p_branch_action=>'f?p=&APP_ID.:295:&SESSION.::&DEBUG.:295:P295_CONFIG_ID:&P294_CONFIG_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(211566062606173403)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221946721393034792)
,p_name=>'P294_CONFIG_IDS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(488764861645608259)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(221946937969034794)
,p_name=>'P294_ROW_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(488764861645608259)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(466220187817174986)
,p_name=>'P294_CONFIG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(488764861645608259)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(221946249527034787)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(488764861645608259)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221946357356034788)
,p_event_id=>wwv_flow_imp.id(221946249527034787)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P294_CONFIG_IDS'', ''CONFIG_ID'');',
'utils.set(this.data, map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(221946592142034790)
,p_name=>unistr('\6279\91CF\652F\6301')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(211565862885173401)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221946634508034791)
,p_event_id=>wwv_flow_imp.id(221946592142034790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P294_CONFIG_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\6279\91CF\652F\6301\56FE\7247\4E0A\4F20\7684\6570\636E\FF01'');'),
'    return false;',
'} else {',
unistr('    if (confirm(''\786E\5B9A\6279\91CF\652F\6301\56FE\7247\4E0A\4F20\9009\4E2D\7684\6570\636E\5417\FF1F'')) {'),
'        return true;',
'    } else {',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221946802785034793)
,p_event_id=>wwv_flow_imp.id(221946592142034790)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG VARCHAR2(1000);',
'    V_ROW_COUNT NUMBER(10);',
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE: 2024/8/15 10:56',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIPTION:P294 \6279\91CF\652F\6301'),
'     */',
'BEGIN',
unistr('    -- \6279\91CF\64CD\4F5C'),
'    UPDATE CHECK_CHANGE_CONFIG',
'    SET UPDATED_BY   = :USER_ID,',
'        UPDATED_DATE = SYSDATE,',
unistr('        IS_SUPPORT_IMAGE    = 1 --''\72B6\6001\FF1A1\652F\6301\FF0C0\4E0D\652F\6301'''),
'    WHERE CONFIG_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P294_CONFIG_IDS, '',''));',
'',
'    V_ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P294_ROW_COUNT'', V_ROW_COUNT);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\6279\91CF\652F\6301'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P294_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P294_CONFIG_IDS'
,p_attribute_03=>'P294_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221947038617034795)
,p_event_id=>wwv_flow_imp.id(221946592142034790)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P294_ROW_COUNT'') > 0){',
unistr('    // alert(''\6279\91CF\652F\6301\6210\529F'');'),
'}else{',
unistr('    alert(''\6279\91CF\652F\6301\5931\8D25'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221947128957034796)
,p_event_id=>wwv_flow_imp.id(221946592142034790)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(488764861645608259)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(221947959581034804)
,p_name=>unistr('\6279\91CF\4E0D\652F\6301')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(221947210110034797)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221947473637034799)
,p_event_id=>wwv_flow_imp.id(221947959581034804)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P294_CONFIG_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\6279\91CF\4E0D\652F\6301\56FE\7247\4E0A\4F20\7684\6570\636E\FF01'');'),
'    return false;',
'} else {',
unistr('    if (confirm(''\786E\5B9A\6279\91CF\4E0D\652F\6301\56FE\7247\4E0A\4F20\9009\4E2D\7684\6570\636E\5417\FF1F'')) {'),
'        return true;',
'    } else {',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221947511301034800)
,p_event_id=>wwv_flow_imp.id(221947959581034804)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG VARCHAR2(1000);',
'    V_ROW_COUNT NUMBER(10);',
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE: 2024/8/15 11:06',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIPTION:P294 \6279\91CF\652F\6301'),
'     */',
'BEGIN',
unistr('    -- \6279\91CF\64CD\4F5C'),
'    UPDATE CHECK_CHANGE_CONFIG',
'    SET UPDATED_BY   = :USER_ID,',
'        UPDATED_DATE = SYSDATE,',
unistr('        IS_SUPPORT_IMAGE    = 0--''\72B6\6001\FF1A1\652F\6301\FF0C0\4E0D\652F\6301'''),
'    WHERE CONFIG_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P294_CONFIG_IDS, '',''));',
'',
'    V_ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P294_ROW_COUNT'', V_ROW_COUNT);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\6279\91CF\4E0D\652F\6301'', ''ERROR'', V_ERR_MSG,  :USER_ID, :USERTENANT,'),
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P294_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P294_CONFIG_IDS'
,p_attribute_03=>'P294_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221947629820034801)
,p_event_id=>wwv_flow_imp.id(221947959581034804)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P294_ROW_COUNT'') > 0){',
unistr('    // alert(''\6279\91CF\4E0D\652F\6301\6210\529F'');'),
'}else{',
unistr('    alert(''\6279\91CF\4E0D\652F\6301\5931\8D25'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221947728679034802)
,p_event_id=>wwv_flow_imp.id(221947959581034804)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(488764861645608259)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(221948196752034806)
,p_name=>unistr('\6279\91CF\5220\9664')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(211565902005173402)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221948251657034807)
,p_event_id=>wwv_flow_imp.id(221948196752034806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P294_CONFIG_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E\FF01'');'),
'    return false;',
'} else {',
unistr('    if (confirm(''\5220\9664\5F53\524D\5185\5BB9\4F1A\5B58\5728\6570\636E\4E22\5931\FF0C\662F\5426\786E\5B9A\5220\9664\FF1F'')) {'),
'        return true;',
'    } else {',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221948477333034809)
,p_event_id=>wwv_flow_imp.id(221948196752034806)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG VARCHAR2(1000);',
'    V_ROW_COUNT NUMBER(10);',
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE: 2024/8/15 11:15',
'     * MODIFY BY:',
'     * MODIFY DATE:',
'     * DESCRIPTION:',
'     */',
'BEGIN',
unistr('    -- \5220\9664\64CD\4F5C'),
'    UPDATE CHECK_CHANGE_LIBRARY_DEVICE',
'    SET UPDATED_BY   = :USER_ID,',
'        UPDATED_DATE = SYSDATE,',
unistr('           DEL_FLAG  = 1 --''\72B6\6001\FF1A1\5DF2\5220\9664\FF0C 0\6B63\5E38'''),
'    WHERE LIBRARY_ID IN (select LIBRARY_ID from CHECK_CHANGE_LIBRARY where CONFIG_ID in (SELECT DATA_VAL FROM UTILS_PKG.SPLIT_STR(:P294_CONFIG_IDS, '','')));',
'--     DELETE',
'--     FROM CHECK_CHANGE_LIBRARY_DEVICE',
'--     WHERE LIBRARY_ID IN (select LIBRARY_ID from CHECK_CHANGE_LIBRARY where CONFIG_ID in (SELECT DATA_VAL FROM UTILS_PKG.SPLIT_STR(:P294_CONFIG_IDS, '','')));',
'',
'        UPDATE CHECK_CHANGE_LIBRARY',
'    SET UPDATED_BY   = :USER_ID,',
'        UPDATED_DATE = SYSDATE,',
unistr('           DEL_FLAG  = 1 --''\72B6\6001\FF1A1\5DF2\5220\9664\FF0C 0\6B63\5E38'''),
'    WHERE CONFIG_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P294_CONFIG_IDS, '',''));',
'',
'     UPDATE CHECK_CHANGE_CONFIG_ITEM',
'    SET UPDATED_BY   = :USER_ID,',
'        UPDATED_DATE = SYSDATE,',
unistr('        DEL_FLAG     = 1 --''\72B6\6001\FF1A1\5DF2\5220\9664\FF0C 0\6B63\5E38'''),
'    WHERE CONFIG_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P294_CONFIG_IDS, '',''));',
'',
'',
'    UPDATE CHECK_CHANGE_CONFIG',
'    SET UPDATED_BY   = :USER_ID,',
'        UPDATED_DATE = SYSDATE,',
unistr('        DEL_FLAG     = 1 --''\72B6\6001\FF1A1\5DF2\5220\9664\FF0C 0\6B63\5E38'''),
'    WHERE CONFIG_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P294_CONFIG_IDS, '',''));',
'',
'    V_ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P294_ROW_COUNT'', V_ROW_COUNT);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\6279\91CF\5220\9664\53D8\66F4\70B9\914D\7F6E'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P294_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P294_CONFIG_IDS'
,p_attribute_03=>'P294_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221948551524034810)
,p_event_id=>wwv_flow_imp.id(221948196752034806)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P294_ROW_COUNT'') > 0){',
unistr('    alert(''\5220\9664\6210\529F'');'),
'}else{',
unistr('    alert(''\5220\9664\5931\8D25'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(221948689151034811)
,p_event_id=>wwv_flow_imp.id(221948196752034806)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(488764861645608259)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(221625913869627535)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(488764861645608259)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\53D8\66F4\70B9\914D\7F6E - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>75380816916466449
);
wwv_flow_imp.component_end;
end;
/
