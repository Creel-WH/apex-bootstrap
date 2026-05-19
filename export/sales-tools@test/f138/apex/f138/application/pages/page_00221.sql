prompt --application/pages/page_00221
begin
--   Manifest
--     PAGE: 00221
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>221
,p_name=>unistr('\6743\9650\7BA1\7406')
,p_alias=>unistr('\6743\9650\7BA1\7406')
,p_step_title=>unistr('\6743\9650\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9793758151903284732)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- #WORKSPACE_FILES#static/js/mkUtils.v1.min.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\7528\6237\7BA1\7406\3001\4FEE\6539'),
'function btnClick(name, objId, is_permission_range,role_name) {',
'    console.log("P221_SEL_ROLE_ID: " + objId);',
'    $s(''P221_SEL_ROLE_ID'', objId);',
'    $s(''P221_ROLE_NAME'', role_name);',
'    $s(''P221_OPERATION_TYPE'', name);',
'    if (name == ''user_manager'') {',
'        if (is_permission_range == ''0'') {',
unistr('            alert(''\8BF7\914D\7F6E \201C\529F\80FD\6743\9650\201D \540E\518D\8FDB\5165 \201C\7528\6237\7BA1\7406\201D \9875\9762\FF01'');'),
'            return false;',
'        }',
'    }',
'    $(''#btn_'' + name).click();',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$("div#myDialog").remove();',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* \60AC\6D6E\6837\5F0F */'),
'.longlinedots{',
unistr('    max-width: 900px;	/*\8BBE\7F6E\5BB9\5668\6700\5927\5BBD\5EA6*/'),
unistr('    white-space: nowrap;	/* \8BBE\7F6E\6BB5\843D\6587\672C\4E0D\6362\884C(\4E0D\6362\884C\624D\6709\53EF\80FD\884C\6EA2\51FA)*/'),
unistr('    overflow: hidden;		/* \5173\95ED\6EDA\52A8\6761\FF0C\8D85\51FA\90E8\5206\9690\85CF*/'),
unistr('    text-overflow: ellipsis;	/* \8D85\51FA\90E8\5206\6DFB\52A0\7701\7565\53F7*/'),
'}',
unistr('/*\7ED9\8BE5\9009\62E9\5668\6DFB\52A0\60AC\6D6E\4E8B\4EF6\FF0C\5B9E\73B0\60AC\6D6E\663E\793A\5168\90E8\5185\5BB9*/'),
'.longlinedots:hover {',
'    overflow: visible;',
'    white-space: inherit;',
'}',
'',
unistr('/* \76F4\63A5\663E\793A\4E3A\6362\884C */'),
'.a-GV-table td  {',
'    word-wrap: break-word;',
'	overflow-wrap: break-word;',
'    overflow: initial;',
'    white-space: initial;',
'    text-overflow: initial;',
'}',
'',
'.is_modify_0  {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10832234338635829846)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9793439067225686436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9793617144925686553)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10832234860900829849)
,p_plug_name=>unistr('\89D2\8272\6743\9650\7BA1\7406')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.ROLE_ID,',
'       B. ROLE_NAME,',
'       B.ROLE_LEVEL,',
'       B.REMARK,',
'       B.IS_ENABLE,',
'       B.DEL_FLAG,',
'       B.TENANT_ID,',
'       B.CREATED_BY,',
'       B.CREATION_DATE,',
'       (SELECT LISTAGG(PERMISSION_NAME, '','') WITHIN GROUP (ORDER BY PERMISSION_ID ASC) AS PERMISSION_NAME',
'        FROM STS_PERMISSION',
'        WHERE PERMISSION_ID IN (SELECT *',
'                        FROM TABLE ( SPLITSTR((SELECT LISTAGG(PERMISSION_ID, '','') WITHIN GROUP (ORDER BY PERMISSION_ID) AS PERMISSION_ID',
'                                               FROM STS_ROLE_PERMISSION RP',
unistr('                                               WHERE RP.ROLE_ID = B.ROLE_ID AND B.DEL_FLAG = 0 AND RP.DEL_FLAG = 0), '','') ))) PERMISSION_RANGE, -- \529F\80FD\6743\9650'),
'        (CASE WHEN (SELECT LISTAGG(PERMISSION_NAME, '','') WITHIN GROUP (ORDER BY PERMISSION_ID ASC) AS PERMISSION_NAME',
'        FROM STS_PERMISSION',
'        WHERE PERMISSION_ID IN (SELECT *',
'                        FROM TABLE ( SPLITSTR((SELECT LISTAGG(PERMISSION_ID, '','') WITHIN GROUP (ORDER BY PERMISSION_ID) AS PERMISSION_ID',
'                                               FROM STS_ROLE_PERMISSION RP',
'                                               WHERE RP.ROLE_ID = B.ROLE_ID AND B.DEL_FLAG = 0 AND RP.DEL_FLAG = 0), '','') ))) IS NOT NULL THEN ''1'' ELSE ''0'' END) IS_PERMISSION_RANGE,',
'       NVL((SELECT COUNT(*) FROM STS_USER_ROLE A',
'            WHERE A.ROLE_ID = B.ROLE_ID',
'            AND A.TENANT_ID = :USER_TENANT),0) UPDATED_BY,',
'       UPDATE_DATE,',
'             (SELECT DISTINCT COUNT(USER_ID)',
'       FROM STS_USER_ROLE C',
'       WHERE C.ROLE_ID = B.ROLE_ID',
'         AND C.DEL_FLAG = 0',
'         AND C.TENANT_ID = B.TENANT_ID',
'           ) USER_COUNT,',
'           DECODE(ROLE_TYPE,''VIEW_REPORT'',0,1) IS_HIDE',
'FROM STS_ROLE B',
'WHERE B.DEL_FLAG = 0',
'  AND B.TENANT_ID = :USER_TENANT',
'--   AND B.IS_ENABLE = 1'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\89D2\8272\6743\9650\7BA1\7406')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3337869969121353989)
,p_name=>'IS_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_HIDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3775794338940430340)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3775794455900430341)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10822076306565026062)
,p_name=>'USER_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\6210\5458\6570\91CF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(10830639002927594541)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10830639136852594542)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_display_condition_type=>'NOT_EXISTS'
,p_display_condition=>'select 1 from STS_ROLE where DEL_FLAG=0 and TENANT_ID=:USER_TENANT and DEFAULT_ROLE=1 and ROLE_ID=:ROLE_ID;'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10832238732950829855)
,p_name=>'ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10832249725522829862)
,p_name=>'PERMISSION_RANGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERMISSION_RANGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\529F\80FD\6743\9650')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(10832260402880956838)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\63CF\8FF0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(10832260512928956839)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10832260562359956840)
,p_name=>'DEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL_FLAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(10832260685805956841)
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
 p_id=>wwv_flow_imp.id(10832260752951956842)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(10832260998270956844)
,p_name=>'IS_PERMISSION_RANGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_PERMISSION_RANGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10832261123284956845)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
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
 p_id=>wwv_flow_imp.id(10832262523071956859)
,p_name=>'OPERATION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#"  class=''is_modify_&IS_HIDE.'' onclick="btnClick(''user_manager'',''&ROLE_ID.'',''&IS_PERMISSION_RANGE.'',''&ROLE_NAME.'')" style="text-dcoration:none;">',
    unistr('		\6210\5458\7BA1\7406'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" onclick="btnClick(''modify'',''&ROLE_ID.'')" style="text-dcoration:none;">',
    unistr('		\4FEE\6539'),
    '	</a>',
    '</span>')))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11123225029566889783)
,p_name=>'ROLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\89D2\8272\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(11123225140408889785)
,p_name=>'ROLE_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_LEVEL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10832235365338829850)
,p_internal_uid=>7507849827331724113
,p_is_editable=>true
,p_edit_operations=>'u'
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
'                        if ( columnDef.property === "PERMISSION_RANGE" ) {',
'                            text = model.getValue( recordMeta.record, "DETAILS" );',
'                        }',
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
 p_id=>wwv_flow_imp.id(10832235756868829850)
,p_interactive_grid_id=>wwv_flow_imp.id(10832235365338829850)
,p_static_id=>'23704'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10832235997133829851)
,p_report_id=>wwv_flow_imp.id(10832235756868829850)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3338342686980122143)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3337869969121353989)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3776646249974872747)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3775794338940430340)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3776647194235872752)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3775794455900430341)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10822592136126277670)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(10822076306565026062)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>161.04700000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10830660948948700207)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10830639002927594541)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832239045232829856)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10832238732950829855)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>121.56200000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832250132380829863)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10832249725522829862)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>490.844
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832269092140972793)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(11123225029566889783)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>269.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832270853544972800)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(11123225140408889785)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832273619274972809)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10832260402880956838)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>285.141
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832274529661972812)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10832260512928956839)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73.5625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832275360417972815)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(10832260562359956840)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832276277133972818)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(10832260685805956841)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832277140032972821)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(10832260752951956842)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832279008311972827)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(10832260998270956844)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832279898417972830)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(10832261123284956845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10832318159798123290)
,p_view_id=>wwv_flow_imp.id(10832235997133829851)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(10832262523071956859)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>141.26600000000002
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776538700891666509)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10832234860900829849)
,p_button_name=>unistr('\4FEE\6539')
,p_button_static_id=>'btn_modify'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793614843531686550)
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776539074003666510)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10832234860900829849)
,p_button_name=>unistr('\7528\6237\7BA1\7406')
,p_button_static_id=>'btn_user_manager'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793614843531686550)
,p_button_image_alt=>unistr('\7528\6237\7BA1\7406')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776539486551666510)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10832234860900829849)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'ja-bpoint-btn '
,p_security_scheme=>wwv_flow_imp.id(3778545709650814427)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776539898834666510)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10832234860900829849)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'ja-bpoint-btn'
,p_security_scheme=>wwv_flow_imp.id(3778545709650814427)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3776552960505666517)
,p_branch_name=>unistr('\65B0\589E-\8F6C\5230\9875 222')
,p_branch_action=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P221_OPERATION_TYPE'
,p_branch_condition_text=>'insert'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3776553425380666518)
,p_branch_name=>unistr('\4FEE\6539-\8F6C\5230\9875222')
,p_branch_action=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.::P222_ROLE_ID:&P221_SEL_ROLE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P221_OPERATION_TYPE'
,p_branch_condition_text=>'modify'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3776553741093666518)
,p_branch_name=>unistr('\7528\6237\7BA1\7406-\8F6C\5230\9875 223')
,p_branch_action=>'f?p=&APP_ID.:223:&SESSION.::&DEBUG.::P223_ROLE_ID:&P221_SEL_ROLE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>70
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P221_OPERATION_TYPE'
,p_branch_condition_text=>'user_manager'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10832295881935956912)
,p_name=>'P221_OPERATION_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10832234860900829849)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10832295990877956913)
,p_name=>'P221_ROW_COUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10832234860900829849)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10832296044800956914)
,p_name=>'P221_IS_PERMISSION_RANGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10832234860900829849)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10832296141484956915)
,p_name=>'P221_ROLE_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10832234860900829849)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11123259344279889846)
,p_name=>'P221_SEL_ROLE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10832234860900829849)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776543117063666513)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776543628679666514)
,p_event_id=>wwv_flow_imp.id(3776543117063666513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3776538700891666509)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776544082520666514)
,p_event_id=>wwv_flow_imp.id(3776543117063666513)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3776539074003666510)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776544450306666514)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(10832234860900829849)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776545022463666514)
,p_event_id=>wwv_flow_imp.id(3776544450306666514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'',
'map.set(''P221_SEL_ROLE_ID'',''ROLE_ID'');',
'utils.set(this.data, map);',
'',
unistr('console.log(''\884C\9009\4E2D ROLE_ID\FF1A'' + $v(''P221_SEL_ROLE_ID''));')))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776545416457666514)
,p_name=>unistr('\5237\65B0\7F51\683C\6570\636E')
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776545885002666515)
,p_event_id=>wwv_flow_imp.id(3776545416457666514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10832234860900829849)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776546253581666515)
,p_name=>unistr('\65B0\589E_\4F20\53C2')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776539486551666510)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776546777505666515)
,p_event_id=>wwv_flow_imp.id(3776546253581666515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN  ',
'    APEX_UTIL.SET_SESSION_STATE( ''P221_OPERATION_TYPE'' , ''insert'' );',
'END;'))
,p_attribute_03=>'P221_OPERATION_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776547243144666515)
,p_event_id=>wwv_flow_imp.id(3776546253581666515)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776547726820666515)
,p_name=>unistr('\6279\91CF\5220\9664')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776539898834666510)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776548210954666515)
,p_event_id=>wwv_flow_imp.id(3776547726820666515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P221_SEL_ROLE_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E\FF01'');'),
'    return false;',
'} else {',
unistr('    // if (confirm(''\786E\5B9A\8981\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F'')) {'),
'        return true;',
'    // } else {',
'    //     return false;',
'    // }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337458741963598926)
,p_event_id=>wwv_flow_imp.id(3776547726820666515)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\8981\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776548669707666516)
,p_event_id=>wwv_flow_imp.id(3776547726820666515)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ERR_MSG        NVARCHAR2(2000);--\5F02\5E38\4FE1\606F\63CF\8FF0'),
unistr('    V_DEFAULT_COUNT  NUMBER(20) := 0; -- \8FD4\56DE\8BB0\5F55\503C'),
unistr('    V_ROW_COUNT      NUMBER(20) := 0; -- \8FD4\56DE\8BB0\5F55\503C'),
unistr('    V_EXISTS_COUNT   NUMBER(20) := 0; -- \503C\662F\5426\5B58\5728'),
unistr('    V_ROLE_IDS       NVARCHAR2(500);--\9009\4E2D\7684\503C\96C6\5408'),
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE: 2024/7/23 18:17',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE:\7CFB\7EDF\8BBE\7F6E-\89D2\8272\6743\9650-\6279\91CF\5220\9664'),
'     */',
'BEGIN',
'',
'    V_ROLE_IDS := :P221_SEL_ROLE_ID;',
'',
'',
unistr('        -- \7CFB\7EDF\8BBE\7F6E-\89D2\8272\6743\9650-\6279\91CF\5220\9664\64CD\4F5C'),
'        FOR ITEM_ROLE_ID IN (SELECT COLUMN_VALUE FROM TABLE (SPLITSTR(V_ROLE_IDS, '','')))',
'            LOOP',
unistr('                -- \89D2\8272\4E0B\662F\5426\5B58\5728\7528\6237'),
'                SELECT COUNT(1)',
'                INTO V_EXISTS_COUNT',
'                FROM STS_USER_ROLE',
'                WHERE ROLE_ID = TO_NUMBER(ITEM_ROLE_ID.COLUMN_VALUE)',
'                  AND TENANT_ID = :USER_TENANT',
'                AND DEL_FLAG = 0;',
'',
unistr('                if V_EXISTS_COUNT > 0 then  --\89D2\8272\4E0B\5B58\5728\7528\6237\FF0C\6709\7528\6237\5219\5220\9664\7528\6237\89D2\8272\FF0C\5426\5219\5FFD\7565\7528\6237\89D2\8272'),
unistr('                     --\5220\9664 \7528\6237\89D2\8272'),
'                    UPDATE STS_USER_ROLE',
'                    SET DEL_FLAG     = 1,',
'                        UPDATED_BY   = :USER_ID,',
'                        UPDATE_DATE = SYSDATE',
'                    WHERE ROLE_ID = TO_NUMBER(ITEM_ROLE_ID.COLUMN_VALUE)',
'                      AND TENANT_ID = :USER_TENANT;',
'                end if;',
'                ',
unistr('                      --\5220\9664 \89D2\8272\6743\9650'),
'                    UPDATE STS_ROLE_PERMISSION',
'                    SET DEL_FLAG     = 1,',
'                        UPDATED_BY   = :USER_ID,',
'                        UPDATED_DATE  = SYSDATE',
'                    WHERE ROLE_ID = TO_NUMBER(ITEM_ROLE_ID.COLUMN_VALUE)',
'                      AND TENANT_ID = :USER_TENANT;',
'',
unistr('                    --\5220\9664 \89D2\8272'),
'                    UPDATE STS_ROLE',
'                    SET DEL_FLAG     = 1,',
'                        UPDATED_BY   = :USER_ID,',
'                        UPDATE_DATE = SYSDATE',
'                    WHERE ROLE_ID = TO_NUMBER(ITEM_ROLE_ID.COLUMN_VALUE)',
'                    AND TENANT_ID = :USER_TENANT;',
'',
'                    V_ROW_COUNT := SQL%ROWCOUNT;',
'',
'            END LOOP;',
'',
unistr('    APEX_UTIL.SET_SESSION_STATE(''P221_ROW_COUNT'', V_ROW_COUNT);-- \8FD4\56DE\7ED3\679C\503C'),
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\89D2\8272-\6279\91CF\5220\9664'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,'),
'                     :APP_NAME,:APP_ID,:APP_CODE);',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P221_ROW_COUNT'', -1);-- \8FD4\56DE\7ED3\679C\503C'),
'END;'))
,p_attribute_02=>'P221_SEL_ROLE_ID'
,p_attribute_03=>'P221_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776549216123666516)
,p_event_id=>wwv_flow_imp.id(3776547726820666515)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P221_ROW_COUNT'') > 0) {',
unistr('    alert(''\5220\9664\6210\529F\FF01'');'),
'}  else {',
unistr('    alert(''\5220\9664\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776549716576666516)
,p_event_id=>wwv_flow_imp.id(3776547726820666515)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10832234860900829849)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776550084048666516)
,p_name=>unistr('\4FEE\6539_\4F20\53C2')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776538700891666509)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776550564678666516)
,p_event_id=>wwv_flow_imp.id(3776550084048666516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN    ',
'    ',
'    APEX_UTIL.SET_SESSION_STATE( ''P221_OPERATION_TYPE'' , :P221_OPERATION_TYPE);',
'    ',
'END;',
''))
,p_attribute_02=>'P221_OPERATION_TYPE'
,p_attribute_03=>'P221_OPERATION_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776551065949666517)
,p_event_id=>wwv_flow_imp.id(3776550084048666516)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776551514205666517)
,p_name=>unistr('\7528\6237\7BA1\7406_\4F20\53C2')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776539074003666510)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776551949140666517)
,p_event_id=>wwv_flow_imp.id(3776551514205666517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P223_ROLE_ID'',:P221_SEL_ROLE_ID);    ',
'    apex_util.set_session_state(''P223_ROLE_NAME'',:P221_ROLE_NAME);    ',
'    apex_util.set_session_state(''P221_OPERATION_TYPE'', :P221_OPERATION_TYPE);',
'end;'))
,p_attribute_02=>'P221_SEL_ROLE_ID,P221_OPERATION_TYPE,P221_ROLE_NAME'
,p_attribute_03=>'P221_OPERATION_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776552518418666517)
,p_event_id=>wwv_flow_imp.id(3776551514205666517)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3776541858639666512)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10832234860900829849)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\89D2\8272\6743\9650\7BA1\7406 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>452156320632560775
);
wwv_flow_imp.component_end;
end;
/
