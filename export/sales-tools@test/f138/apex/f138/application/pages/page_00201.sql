prompt --application/pages/page_00201
begin
--   Manifest
--     PAGE: 00201
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>201
,p_name=>unistr('\53CD\9988\7BA1\7406')
,p_alias=>unistr('\53CD\9988\7BA1\7406')
,p_step_title=>unistr('\53CD\9988\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4232693456746259465)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P201_FOLDER_DISPLAY''))',
unistr('//\5220\9664\3001\7BA1\7406'),
'function btnClick(name, objId,fileType) {',
'    $s(''P201_FILE_ID'', objId);',
'    $(''#btn_'' + name).click();',
'}',
'',
unistr('// \6DFB\52A0\7981\7528\94FE\63A5\FF1A\6587\4EF6/\6587\4EF6\5E93\88AB\5220\9664\6216\8005\6587\4EF6\5F52\6863  BY:wxx 2025-06-12  \5E76\672A\751F\6548'),
'$(document).ready(function() {',
unistr('    // \83B7\53D6\6240\6709\64CD\4F5C\5355\5143\683C'),
'    $("td[headers=''OPERATION'']").each(function() {',
'        var notes = $(this).closest("tr").find("td[headers=''NOTES'']").text().trim();',
'        ',
unistr('        // \5982\679CNOTES\5217\6709\503C\FF08\8868\793A\5E94\8BE5\7981\7528\FF09'),
'        if (notes !== "") {',
'            var link = $(this).find("a");',
'            if (link.length) {',
unistr('                // \7981\7528\94FE\63A5'),
'                link.css("pointer-events", "none")',
'                   .css("opacity", "0.5")',
unistr('                   .attr("title", "\64CD\4F5C\5DF2\7981\7528: " + notes);'),
'            }',
'        }',
'    });',
'});'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.feedback_date_over{',
'  color: red;',
'  text-align: center;',
'} ',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.is_modify_0 , .hide_btn ,.is_permissions_0 {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4230671257593616461)
,p_plug_name=>unistr('\95EE\9898\53CD\9988')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249620856755239725)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    SF.FEEDBACK_ID,',
'    NVL(SF.FEEDBACK_CONTENT, SF.REMARK) AS FEEDBACK_CONTENT,',
'    SF.FILE_ID,',
'    FO.FILE_NAME || ''(ID:'' || SF.FILE_ID || '')'' ||',
'    CASE',
unistr('        WHEN FO.DEL_FLAG = 1 THEN ''\FF08\6587\4EF6\5DF2\5220\9664\FF09'''),
'        ELSE ''''',
'    END AS FOLDER_DISPLAY,',
'    SF.USER_ID,',
'    SF.DING_USER_ID,',
'    SF.STATUS,',
'    SF.FEEDBACK_TYPE,',
'    CASE',
'        WHEN SF.FEEDBACK_DATE < SYSDATE - 7 AND SF.STATUS = 0 THEN',
'            ''<span style="color:red;">'' || TO_CHAR(SF.FEEDBACK_DATE, ''YYYY-MM-DD HH24:MI:SS'') || ''</span>''',
'        ELSE',
'            TO_CHAR(SF.FEEDBACK_DATE, ''YYYY-MM-DD HH24:MI:SS'')',
'    END AS FEEDBACK_DATE,',
'    TO_CHAR(SF.FEEDBACK_DATE, ''YYYY-MM-DD HH24:MI:SS'') AS INITIAL_FEEDBACK_DATE,',
'    NVL(TO_CHAR(SF.PROCESS_DATE, ''YYYY-MM-DD HH24:MI:SS''), ''-'') AS PROCESS_DATE,',
'    NVL(TO_CHAR(SF.PROCESS_USER_ID), ''-'') AS PROCESS_USER_ID,',
'    CASE',
'        WHEN FO.FILE_STATUS = ''ARCHIVE'' OR FO.DEL_FLAG <> 0',
'             OR (FO.ROOT_FOLDER_ID IS NOT NULL AND EXISTS (SELECT 1 FROM STS_FILE RF WHERE RF.FILE_ID = FO.ROOT_FOLDER_ID AND RF.DEL_FLAG <> 0))',
'             OR (FO.PARENT_FOLDER_ID IS NOT NULL AND EXISTS (SELECT 1 FROM STS_FILE PF WHERE PF.FILE_ID = FO.PARENT_FOLDER_ID AND PF.DEL_FLAG <> 0))',
'        THEN ''''',
unistr('        WHEN SF.STATUS = 0 THEN ''\5904\7406'''),
unistr('        ELSE ''\67E5\770B\5904\7406\610F\89C1'''),
'    END AS OPERATION,',
'    CASE',
unistr('        WHEN FO.FILE_STATUS = ''ARCHIVE'' THEN ''\6587\4EF6\5DF2\5F52\6863\FF0C\65E0\6CD5\5904\7406'''),
unistr('        WHEN FO.DEL_FLAG <> 0 THEN ''\6587\4EF6\5DF2\88AB\5220\9664\FF0C\65E0\6CD5\5904\7406'''),
unistr('        WHEN EXISTS (SELECT 1 FROM STS_FILE RF WHERE RF.FILE_ID = FO.ROOT_FOLDER_ID AND RF.DEL_FLAG <> 0) THEN ''\6839\6587\4EF6\5939\5DF2\88AB\5220\9664\FF0C\65E0\6CD5\5904\7406'''),
unistr('        WHEN EXISTS (SELECT 1 FROM STS_FILE PF WHERE PF.FILE_ID = FO.PARENT_FOLDER_ID AND PF.DEL_FLAG <> 0) THEN ''\7236\7EA7\6587\4EF6\5939\5DF2\88AB\5220\9664\FF0C\65E0\6CD5\5904\7406'''),
'        ELSE ''''',
'    END AS NOTES',
'FROM',
'    STS_FEEDBACK SF',
'    INNER JOIN STS_FILE FO ON SF.FILE_ID = FO.FILE_ID AND FO.DEL_FLAG = 0 AND FO.TENANT_ID = :USER_TENANT',
unistr('    LEFT JOIN BASIC_USER DU ON DU.USER_ID = SF.DING_USER_ID    --upup BY:wxx 2025-07-04  \65B0\589E\6761\4EF6\FF0C\4F7F\6587\4EF6\5E93\56DE\6536\7AD9\5B9E\73B0\6309\6743\9650\5C55\793A'),
'WHERE',
'    SF.DEL_FLAG = 0',
'    AND SF.TENANT_ID = :USER_TENANT',
'    AND (SF.STATUS = TO_NUMBER(NVL(:P201_STATUS, 99)) OR TO_NUMBER(NVL(:P201_STATUS, 99)) = 99)',
unistr('    AND (      --upup BY:wxx 2025-07-04  \65B0\589E\6761\4EF6\FF0C\4F7F\6587\4EF6\5E93\56DE\6536\7AD9\5B9E\73B0\6309\6743\9650\5C55\793A'),
'        :ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'')',
'        OR EXISTS(',
'            SELECT 1',
'            FROM STS_SCOPE SE',
'            LEFT JOIN BASIC_JA_DING_DEPT_USER F ON TO_CHAR(F.DEPT_ID) = SE.RANGE_ID AND SE.RANGE_TYPE = ''DEPT''',
'            WHERE SE.REFERENCE_TYPE = ''FILE''',
'              AND SE.PERMISSIONS_TYPE = ''MANAGE''',
'              AND SE.REFERENCE_ID = FO.FILE_ID',
'              AND (SE.RANGE_ID = :DIAN_USER_ID OR F.USER_ID = :DIAN_USER_ID)',
'        )',
'    );'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P201_STATUS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\95EE\9898\53CD\9988')
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
 p_id=>wwv_flow_imp.id(3794813409869875430)
,p_name=>'DING_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DING_USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\53CD\9988\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
,p_max_length=>512
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME || ''-'' || JOB_NUMBER ,USER_ID',
'from BASIC_JA_DING_USER',
'where IS_LEAVE = 0',
';'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3797923155760388329)
,p_name=>'FILE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(3798633291502621624)
,p_name=>'INITIAL_FEEDBACK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INITIAL_FEEDBACK_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\521D\59CB\53CD\9988\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(3798633392634621625)
,p_name=>'NOTES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NOTES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\8BF4\660E')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(4230671426309616463)
,p_name=>'FEEDBACK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(4230671574252616464)
,p_name=>'FEEDBACK_CONTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK_CONTENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7559\8A00')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4230671824921616467)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\53CD\9988\4EBA')
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
,p_lov_id=>wwv_flow_imp.id(4234016931990057488)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_required_patch=>wwv_flow_imp.id(10249504556709239649)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4230671978335616468)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\72B6\6001')
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
,p_lov_id=>wwv_flow_imp.id(4234952930870070236)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4230672074867616469)
,p_name=>'FEEDBACK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK_TYPE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(4230672086025616470)
,p_name=>'FEEDBACK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FEEDBACK_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\53CD\9988\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<span >&FEEDBACK_DATE.</span>')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4230672276561616471)
,p_name=>'PROCESS_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\5904\7406\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(4230672360929616472)
,p_name=>'PROCESS_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROCESS_USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5904\7406\4EBA')
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4234016931990057488)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4230672660107616475)
,p_name=>'FOLDER_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_DISPLAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\53CD\9988\6587\4EF6')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#"  onclick="btnClick(''preview'',''&FILE_ID.'')" style="text-dcoration:none;">',
    '		&FOLDER_DISPLAY.',
    '	</a>',
    '</span>',
    '',
    '<!-- <span>',
    '	<a href="#"  onclick="btnClick(''preview'',''&FILE_ID.'',''&FILE_TYPE.'')" style="text-dcoration:none;">',
    '		&FOLDER_DISPLAY.',
    '	</a>',
    '</span> -->')))).to_clob
,p_link_target=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:137:P137_FILE_ID:&FILE_ID.'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4230673887563616488)
,p_name=>'OPERATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.:202:P202_FEEDBACK_ID,P202_FILE_ID,P202_DING_USER_ID,P202_STATUS:&FEEDBACK_ID.,&FILE_ID.,&DING_USER_ID.,&STATUS.'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4230671302963616462)
,p_internal_uid=>450219617553957508
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
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
 p_id=>wwv_flow_imp.id(4234926867100711995)
,p_interactive_grid_id=>wwv_flow_imp.id(4230671302963616462)
,p_static_id=>'4544752'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4234927063694711996)
,p_report_id=>wwv_flow_imp.id(4234926867100711995)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3328672528783015626)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3798633291502621624)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>98
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3328672718282004265)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3794813409869875430)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>176
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3798540923736820316)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3797923155760388329)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3800879440475442528)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3798633392634621625)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>200
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4234927579903712000)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4230671426309616463)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4234928418497712005)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4230671574252616464)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>169
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4234931161533712013)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4230671824921616467)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>155.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4234931998527712015)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4230671978335616468)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4234932921486712017)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4230672074867616469)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4234933807518712020)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4230672086025616470)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>173
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4234934746843712022)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4230672276561616471)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4234935635761712024)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4230672360929616472)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4234943471777882823)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4230672660107616475)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>266
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4234959500869063519)
,p_view_id=>wwv_flow_imp.id(4234927063694711996)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4230673887563616488)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6041133297386266182)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249620856755239725)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10249505214628239653)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(10249683292328239770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3797923226085388330)
,p_button_sequence=>130
,p_button_name=>unistr('\6587\4EF6\9884\89C8')
,p_button_static_id=>'btn_preview'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\6587\4EF6\9884\89C8')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3797923885871388336)
,p_branch_name=>unistr('\6587\4EF6\9884\89C8-\8F6C\5230\9875 137')
,p_branch_action=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:137:P137_FILE_ID:&P201_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P201_PAGE'
,p_branch_condition_text=>'137'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3783216812435392209)
,p_name=>'P201_URL'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797923527720388333)
,p_name=>'P201_FILE_ID'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797923707153388334)
,p_name=>'P201_PAGE'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3798632090325621612)
,p_name=>'P201_FOLDER_DISPLAY'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4230672510943616474)
,p_name=>'P201_STATUS'
,p_item_sequence=>100
,p_item_default=>'99'
,p_prompt=>unistr('\72B6\6001')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:\5168\90E8;99,\5F85\5904\7406;0,\5DF2\5904\7406;1')
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(10249679004617239764)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4230672783312616476)
,p_name=>unistr('\66F4\6539\72B6\6001\4F1A\5237\65B0\4EA4\4E92\5F0F\7F51\683C')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P201_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4230672866124616477)
,p_event_id=>wwv_flow_imp.id(4230672783312616476)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4230671257593616461)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4234996362411151658)
,p_name=>unistr('\5173\95ED\5BF9\8BDD\6846\540E\5237\65B0\6570\636E')
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4234996456360151659)
,p_event_id=>wwv_flow_imp.id(4234996362411151658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4230671257593616461)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797923417416388331)
,p_name=>unistr('\8BBE\7F6E\503C')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3797923226085388330)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797923466679388332)
,p_event_id=>wwv_flow_imp.id(3797923417416388331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P201_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'137'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797923737978388335)
,p_event_id=>wwv_flow_imp.id(3797923417416388331)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3798631892392621610)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4230671257593616461)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3798631966750621611)
,p_event_id=>wwv_flow_imp.id(3798631892392621610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'',
'map.set(''P201_FILE_ID'', ''FILE_ID'');',
'// map.set(''P201_PAGE'', ''173'');',
'utils.set(this.data, map);',
'',
unistr('// console.log(''\884C\9009\4E2D\FF1A'' + $v(''P133_FILE_IDS''));')))
);
wwv_flow_imp.component_end;
end;
/
