prompt --application/pages/page_00288
begin
--   Manifest
--     PAGE: 00288
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
 p_id=>288
,p_name=>unistr('\4EBA\5458\914D\7F6E')
,p_alias=>unistr('\4EBA\5458\914D\7F6E')
,p_step_title=>unistr('\4EBA\5458\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(873796270038482485)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2359751901918135266)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(873796906198482486)
,p_plug_name=>unistr('\7B2C\4E8C\6B65\FF1A\89D2\8272\914D\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select C.CONFIG_ID,',
'       EXT_USER_ID,',
'       FAB_ID,',
'       EXT_ORG_ID,',
'       MAP_AREA_X_ID,',
'       MAP_AREA_Y_ID,',
'       (select listagg(FORM_ID, '':'')',
'        from CHECK_RULE_FORM_ASSO F',
'        where exists(select 1 from dual where F.CONFIG_ID = C.CONFIG_ID)) FOEM,',
'       (select listagg(RULE_ID, '':'')',
'        from CHECK_RULE_USER_ASSO U',
'        where exists(select 1 from dual where U.CONFIG_ID = C.CONFIG_ID)) RULE,',
'       C.CREATION_DATE,',
unistr('       ''\4FEE\6539''                                                               OPERATION'),
'from CHECK_PUSH_USER_CONFIG C',
'where TENANT_ID =:USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
'and DEL_FLAG=0',
'and IS_ENABLE =1;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\7B2C\4E8C\6B65\FF1A\89D2\8272\914D\7F6E')
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
 p_id=>wwv_flow_imp.id(873658244334971867)
,p_name=>'FOEM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOEM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\8868\5355')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT CF.NAME, F.FORM_ID',
'FROM CHECK_OBJECT O',
'         LEFT JOIN CHECK_OBJECT_FORM_ASSO F ON O.OBJECT_ID = F.OBJECT_ID',
'         LEFT JOIN CHECK_FORM CF ON F.FORM_ID = CF.FORM_ID',
'WHERE O.TENANT_ID = :USERTENANT',
'  AND O.DEL_FLAG = 0'))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(873658390731971868)
,p_name=>'RULE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RULE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\63A8\9001\89C4\5219')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
,p_max_length=>4000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select RULE_NAME,RULE_ID from CHECK_PUSH_RULE where TENANT_ID=:USERTENANT and DEL_FLAG=0 and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(873658404898971869)
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
,p_link_target=>'f?p=&APP_ID.:282:&SESSION.::&DEBUG.:282:P282_CONFIG_ID:&CONFIG_ID.'
,p_link_text=>'&OPERATION.'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(873658500035971870)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(873658647559971871)
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
 p_id=>wwv_flow_imp.id(873798206190482487)
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
 p_id=>wwv_flow_imp.id(873799206393482487)
,p_name=>'EXT_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\4EBA\5458')
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
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT JOB_NUMBER || ''-'' || NAME, EXT_USER_ID',
'FROM MPF_SHARE_USER_V',
'WHERE TENANT_ID = :USERTENANT',
'  AND IS_LEAVE = 0',
'and BASE_DEPT_ID = :BASE_DEPT_ID;'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(873800229640482488)
,p_name=>'FAB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5382\533A')
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT F.NAME, D.FAB_ID',
'FROM CODE_DEVICE D',
'         LEFT JOIN FND_FAB F ON D.FAB_ID = F.FAB_ID',
'WHERE D.TENANT_ID = :USERTENANT',
'  AND D.DEL_FLAG = 0;'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(873801249286482488)
,p_name=>'EXT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\90E8\95E8')
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT V.NAME, D.EXT_ORG_ID',
'FROM CHECK_OBJECT D',
'         LEFT JOIN MPF_SHARE_DEPT_V V ON D.EXT_ORG_ID = V.EXT_ORG_ID',
'WHERE D.TENANT_ID = :USERTENANT',
' and D.BASE_DEPT_ID =:BASE_DEPT_ID',
'  AND D.DEL_FLAG = 0',
'  AND V.DEL_FLAG=0;'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(873802255814482489)
,p_name=>'MAP_AREA_X_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_X_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5DE5\6BB5')
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT A.NAME, D.AREA_ID',
'FROM CHECK_OBJECT O',
'         JOIN CHECK_OBJECT_DEVICE_ASSO OA ON O.OBJECT_ID = OA.OBJECT_ID',
'         JOIN CODE_DEVICE D ON OA.DEVICE_ID = D.DEVICE_ID',
'         JOIN FND_AREAS A ON D.AREA_ID = A.AREA_ID AND A.TYPE = 1',
'WHERE O.TENANT_ID = :USERTENANT',
'  AND O.BASE_DEPT_ID =:BASE_DEPT_ID',
'  AND O.DEL_FLAG = 0',
'  AND O.EXT_ORG_ID = :EXT_ORG_ID;',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'EXT_ORG_ID'
,p_ajax_items_to_submit=>'EXT_ORG_ID'
,p_ajax_optimize_refresh=>true
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(873803262591482489)
,p_name=>'MAP_AREA_Y_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_Y_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(873809283566482492)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(873797458219482486)
,p_internal_uid=>276335589701700971
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
'                        if ( columnDef.property === "MAP_AREA_X_ID" ) {',
'                            text = model.getValue( recordMeta.record, "MAP_AREA_X_ID" ).d;',
'                        } else if ( columnDef.property === "RULE" ) {',
'                            text = model.getValue( recordMeta.record, "RULE" ).d;',
'                        } else if ( columnDef.property === "FOEM" ) {',
'                            text = model.getValue( recordMeta.record, "FOEM" ).d;',
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
 p_id=>wwv_flow_imp.id(873797834047482486)
,p_interactive_grid_id=>wwv_flow_imp.id(873797458219482486)
,p_static_id=>'851613'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(873798017424482486)
,p_report_id=>wwv_flow_imp.id(873797834047482486)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(873798677139482487)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(873798206190482487)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(873799610066482487)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(873799206393482487)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(873800674096482488)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(873800229640482488)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(873801666657482488)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(873801249286482488)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(873802632947482489)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(873802255814482489)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(873803647216482489)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(873803262591482489)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(873809651173482492)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(873809283566482492)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(874838022214104821)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(873658244334971867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(874838980075104827)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(873658390731971868)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(874839893730104831)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(873658404898971869)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(874840744525104833)
,p_view_id=>wwv_flow_imp.id(873798017424482486)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(873658500035971870)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(633190590480905677)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(873796906198482486)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:280:&SESSION.::&DEBUG.:280::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(633190969019905676)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(873796906198482486)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(874880809983675714)
,p_name=>'P288_CONFIG_IDS'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(874881504430675721)
,p_name=>'P288_COUNT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633193171756905671)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(873796906198482486)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633193743745905669)
,p_event_id=>wwv_flow_imp.id(633193171756905671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'map.set(''P288_CONFIG_IDS'',''CONFIG_ID'');',
'utils.set(this.data,map);',
'ids=$v(''P288_CONFIG_IDS'')'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633194113130905669)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(873796906198482486)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633194614638905669)
,p_event_id=>wwv_flow_imp.id(633194113130905669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(873796906198482486)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633195045207905669)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(633190969019905676)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P288_CONFIG_IDS''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633195503359905668)
,p_event_id=>wwv_flow_imp.id(633195045207905669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if (confirm(''\662F\5426\786E\5B9A\5220\9664?'')) {'),
'		return true;',
'	} else {',
'		return false;',
'	}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633196062311905666)
,p_event_id=>wwv_flow_imp.id(633195045207905669)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633196505519905666)
,p_event_id=>wwv_flow_imp.id(633195045207905669)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'BEGIN',
unistr('	--\5220\9664\63A8\9001\4EBA\5458\914D\7F6E\8868'),
'    UPDATE CHECK_PUSH_USER_CONFIG',
'    SET DEL_FLAG=1,',
'        UPDATED_BY =:USER_ID,',
'        UPDATED_DATE =SYSDATE',
'    WHERE CONFIG_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P288_CONFIG_IDS, '',''));',
'',
unistr('	--\5220\9664\89C4\5219\4E0E\8868\5355\4E2D\95F4\8868'),
'    DELETE CHECK_RULE_FORM_ASSO WHERE CONFIG_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P288_CONFIG_IDS, '',''));',
unistr('	--\5220\9664\89C4\5219\4E0E\4EBA\5458\914D\7F6E\4E2D\95F4\8868'),
'    DELETE CHECK_RULE_USER_ASSO WHERE CONFIG_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P288_CONFIG_IDS, '',''));',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P288_COUNT'', 1);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P288_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P288_CONFIG_IDS'
,p_attribute_03=>'P288_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633196985663905666)
,p_event_id=>wwv_flow_imp.id(633195045207905669)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P288_COUNT'')>0){',
unistr('	alert(''\5220\9664\6210\529F'');'),
'	return true;',
'}else{',
unistr('	alert(''\5220\9664\5931\8D25'');'),
'	return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633197509402905666)
,p_event_id=>wwv_flow_imp.id(633195045207905669)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(873796906198482486)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(633191478630905675)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(873796906198482486)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\4EBA\5458\914D\7F6E - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>35729610113124160
);
wwv_flow_imp.component_end;
end;
/
