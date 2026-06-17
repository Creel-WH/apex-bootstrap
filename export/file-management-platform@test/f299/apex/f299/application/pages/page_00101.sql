prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>101
,p_name=>unistr('\5206\7C7B\7BA1\7406')
,p_alias=>unistr('\5206\7C7B\7BA1\7406')
,p_step_title=>unistr('\5206\7C7B\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3743170670646282059)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664\3001\7BA1\7406'),
'function btnClick(name, objId) {',
'    console.log("P101_FOLDER_CLASS_ID: " + objId);',
'    $s(''P101_FOLDER_CLASS_ID'', objId);',
'    $(''#btn_'' + name).click();',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// my_test \7F51\683C\9759\6001ID'),
'var gridView = apex.region("my_test").call("getViews").grid;',
'if($v(''P101_ROLE_CODE'') ==''VIEW_REPORT''){',
unistr('// EDITION_TYPE_NAME\662F\60F3\8981\9690\85CF\7684\5217'),
'gridView.view$.grid("hideColumn", "OPERATION");',
'}else{',
'gridView.view$.grid("showColumn", "OPERATION");',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* .is_modify_1 {',
'  color: red;',
'  text-align: center;',
'} */',
'',
'.hide_btn {',
'    display: none;',
'}',
'.is_modify_0  {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3742341536413008122)
,p_plug_name=>unistr('\81EA\5B9A\4E49\5206\7C7B\7BA1\7406')
,p_region_name=>'my_test'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FOLDER_CLASS_ID,',
'       A.FOLDER_CLASS_NAME,',
'       A.FOLDER_CLASS_LEVEL,',
'       A.DEL_FLAG,',
'       A.TENANT_ID,',
'       A.CREATED_BY,',
'       A.CREATION_DATE,',
'       A.UPDATED_BY,',
'       A.UPDATE_DATE,',
'       A.SCOPE_TYPE,',
'       A.SORT,',
'       DECODE(:ROLE_CODE, ''VIEW_REPORT'', 0, ''SYSTEM_ADMIN'', 1, ''SUPER_ADMIN'', 1, (select COUNT(1)',
'                                                                                  from (select RANGE_TYPE, RANGE_ID',
'                                                                                        from STS_SCOPE B',
'                                                                                        where REFERENCE_TYPE = ''FOLDER_CLASS''',
'                                                                                          and PERMISSIONS_TYPE = ''MANAGE''',
'                                                                                          AND A.FOLDER_CLASS_ID = B.REFERENCE_ID) C',
'                                                                                           left join BASIC_JA_DING_DEPT_USER D',
'                                                                                                     on TO_CHAR(D.DEPT_ID) = C.RANGE_ID AND C.RANGE_TYPE = ''DEPT''',
unistr('                                                                                  where (c.RANGE_ID = :DIAN_USER_ID OR D.USER_ID = :DIAN_USER_ID))) IS_HIDE --\5982\679C\662F\67E5\770B\7EC4VIEW_REPORT\FF0C\9690\85CF\5220\9664\6309\94AE\FF0C\5426\5219\5C55\793A'),
'FROM STS_FOLDER_CLASS A',
'WHERE A.DEL_FLAG = 0',
'  AND A.TENANT_ID = :USER_TENANT',
'  AND A.FOLDER_CLASS_LEVEL <> 0',
'  AND (:ROLE_CODE = ''SYSTEM_ADMIN'' OR :ROLE_CODE = ''SUPER_ADMIN'' OR :ROLE_CODE = ''VIEW_REPORT'' OR SCOPE_TYPE = ''ALL'' OR',
'       EXISTS (SELECT 1',
'               FROM STS_SCOPE SB',
'               WHERE SB.REFERENCE_TYPE = ''SYSTEM''',
'                 AND TO_CHAR(SB.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                 AND SB.PERMISSIONS_TYPE = ''MANAGE''',
'                 AND ((SB.RANGE_TYPE = ''USER'' AND SB.RANGE_ID = :DIAN_USER_ID)',
'                   OR (SB.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                              FROM BASIC_JA_DING_DEPT_USER BD',
'                                                              WHERE TO_CHAR(BD.DEPT_ID) = SB.RANGE_ID',
'                                                                AND TO_CHAR(BD.USER_ID) = TO_CHAR(:DIAN_USER_ID))))) OR',
'       EXISTS(SELECT 1',
'              FROM (select RANGE_TYPE, RANGE_ID',
'                    from STS_SCOPE SE',
'                    where REFERENCE_TYPE = ''FOLDER_CLASS''',
'                      AND A.FOLDER_CLASS_ID = SE.REFERENCE_ID) E',
'                       left join BASIC_JA_DING_DEPT_USER F',
'                                 on TO_CHAR(F.DEPT_ID) = E.RANGE_ID AND E.RANGE_TYPE = ''DEPT''',
'              where (E.RANGE_ID = :DIAN_USER_ID OR F.USER_ID = :DIAN_USER_ID)));'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\81EA\5B9A\4E49\5206\7C7B\7BA1\7406')
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
,p_plug_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\67E5\770B\6743\9650\4EBA\5458\7C7B\578B 1.\8D85\7EA7\7BA1\7406\5458\3001\7CFB\7EDF\7BA1\7406\5458\3001\67E5\770B\7EC4\5168\90E8\6570\636E\5747\53EF\67E5\770B'),
unistr('2\3001\5206\7C7B\7BA1\7406\5458\4EC5\80FD\67E5\770B\62E5\6709\5BF9\5E94\7BA1\7406\5458\6743\9650\5206\7C7B\7684\6570\636E'),
unistr('3\3001\5168\90E8\5206\7C7B\540E\53F0\4E0D\5C55\793A\FF0C\524D\7AEF\5C55\793A')))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3293658660829335032)
,p_name=>'SORT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\6392\5E8F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3741148654817640990)
,p_name=>'IS_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_HIDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(3742341706067008124)
,p_name=>'FOLDER_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3742341939278008126)
,p_name=>'FOLDER_CLASS_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_CLASS_LEVEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(3742341998109008127)
,p_name=>'DEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL_FLAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(3742342177260008128)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(3742342231408008129)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3742342380189008130)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3742342450866008131)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3742342557169008132)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3742342678089008133)
,p_name=>'SCOPE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_TYPE'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3744298988577001886)
,p_name=>'FOLDER_CLASS_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_CLASS_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5206\7C7B\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>56
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
 p_id=>wwv_flow_imp.id(3744299236862001889)
,p_name=>'OPERATION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" class=''is_modify_&IS_HIDE.''  onclick="btnClick(''delete'',''&FOLDER_CLASS_ID.'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''manager'',''&FOLDER_CLASS_ID.'')" style="text-dcoration:none;">',
    unistr('		\7BA1\7406'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#"  onclick="btnClick(''sort'',''&FOLDER_CLASS_ID.'')" style="text-dcoration:none;">',
    unistr('		\6392\5E8F'),
    '	</a>',
    '</span>')))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3742341640958008123)
,p_internal_uid=>451412450186324639
,p_is_editable=>false
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
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3744284896349990445)
,p_interactive_grid_id=>wwv_flow_imp.id(3742341640958008123)
,p_static_id=>'4533558'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3744285158285990445)
,p_report_id=>wwv_flow_imp.id(3744284896349990445)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3293833027635994245)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3293658660829335032)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744285609904990446)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3742341706067008124)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744287394507990451)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3742341939278008126)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744288387628990453)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3742341998109008127)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744289094633990455)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3742342177260008128)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744289996912990457)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3742342231408008129)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744290950147990459)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3742342380189008130)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744291793256990461)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3742342450866008131)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744292726504990464)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3742342557169008132)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744293689692990466)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3742342678089008133)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744307589571004073)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3744298988577001886)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3744337390317077166)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3744299236862001889)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3745099084065287427)
,p_view_id=>wwv_flow_imp.id(3744285158285990445)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3741148654817640990)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4647331652949231465)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760098362117264255)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9759982719990264183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9760160797690264300)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3744299015614001887)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3742341536413008122)
,p_button_name=>unistr('\521B\5EFA\5206\7C7B')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\5206\7C7B')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:102::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER(10);',
'BEGIN',
'    IF :P101_ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'') THEN',
'        RETURN TRUE;',
'    END IF;',
'',
'    SELECT COUNT(1)',
'      INTO V_COUNT',
'      FROM STS_SCOPE A',
'     WHERE A.REFERENCE_TYPE = ''SYSTEM''',
'       AND TO_CHAR(A.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'       AND A.PERMISSIONS_TYPE = ''MANAGE''',
'       AND ((A.RANGE_TYPE = ''USER'' AND A.RANGE_ID = :DIAN_USER_ID)',
'         OR (A.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                  FROM BASIC_JA_DING_DEPT_USER B',
'                                                 WHERE TO_CHAR(B.DEPT_ID) = A.RANGE_ID',
'                                                   AND TO_CHAR(B.USER_ID) = TO_CHAR(:DIAN_USER_ID))));',
'',
'    RETURN V_COUNT > 0;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3744299328987001890)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3742341536413008122)
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'btn_delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760158496296264297)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3744299428275001891)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3742341536413008122)
,p_button_name=>unistr('\7BA1\7406')
,p_button_static_id=>'btn_manager'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760158496296264297)
,p_button_image_alt=>unistr('\7BA1\7406')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3085191499933923048)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3742341536413008122)
,p_button_name=>unistr('\6392\5E8F')
,p_button_static_id=>'btn_sort'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760158496296264297)
,p_button_image_alt=>unistr('\6392\5E8F')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3745438897353094488)
,p_branch_name=>unistr('\8F6C\5230\9875 103')
,p_branch_action=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:103:P103_FOLDER_CLASS_ID:&P101_FOLDER_CLASS_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3744299428275001891)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3085192760981923061)
,p_branch_name=>unistr('\8F6C\5230\9875 104')
,p_branch_action=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:104:P104_FOLDER_CLASS_ID:&P101_FOLDER_CLASS_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3085191499933923048)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3302228004478056275)
,p_name=>'P101_ROLE_CODE'
,p_item_sequence=>110
,p_use_cache_before_default=>'NO'
,p_item_default=>'ROLE_CODE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3744299096309001888)
,p_name=>'P101_FOLDER_CLASS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3742341536413008122)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3744300137314001898)
,p_name=>'P101_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3742341536413008122)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3744299547302001892)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3744299681603001893)
,p_event_id=>wwv_flow_imp.id(3744299547302001892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3744299328987001890)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3744299777748001894)
,p_event_id=>wwv_flow_imp.id(3744299547302001892)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3744299428275001891)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3085191554765923049)
,p_event_id=>wwv_flow_imp.id(3744299547302001892)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3085191499933923048)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3744299814515001895)
,p_name=>unistr('\5220\9664\64CD\4F5C')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3744299328987001890)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3304001804171176667)
,p_event_id=>wwv_flow_imp.id(3744299814515001895)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\8981\5220\9664\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3744299912546001896)
,p_event_id=>wwv_flow_imp.id(3744299814515001895)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if (confirm(''\786E\5B9A\8981\5220\9664\6570\636E\5417\FF1F'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
,p_build_option_id=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2989451498140361656)
,p_event_id=>wwv_flow_imp.id(3744299814515001895)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG                   NVARCHAR2(2000);',
'    V_FOLDER_LIB_COUNT          NUMBER(10) := 0;',
'    V_CURRENT_FOLDER_CLASS_NAME NVARCHAR2(100);',
'/**',
'* CREATE BY: DUL',
'* CREATE DATE: 2025/3/19 11:36',
'* MODIFY BY: WXX',
'* MODIFY DATE:2025/4/23 9:51',
unistr('* DESCRIPTION: \81EA\5B9A\4E49\5206\7C7B-\6279\91CF\5220\9664\64CD\4F5C  \65B0\589E\901A\7528\64CD\4F5C\65E5\5FD7'),
'*/',
'BEGIN',
'',
unistr('    -- \67E5\8BE2\5206\7C7B\4E0B\662F\5426\6709\6587\4EF6\5E93'),
'    select count(FOLDER_LIB_ID)',
'    into V_FOLDER_LIB_COUNT',
'    from STS_FOLDER_LIB',
'    where FOLDER_CLASS_ID = :P101_FOLDER_CLASS_ID',
'      and DEL_FLAG = 0',
'      and TENANT_ID = :USER_TENANT;',
'',
'    update STS_FOLDER_LIB',
'    set FOLDER_CLASS_ID = null,',
'        UPDATED_BY      = :MPF_USER_ID,',
'        UPDATE_DATE     = sysdate',
'    where FOLDER_CLASS_ID = :P101_FOLDER_CLASS_ID',
'      and DEL_FLAG = 0',
'      and TENANT_ID = :USER_TENANT;',
'',
unistr('-- \67E5\8BE2\5F53\524D\5206\7C7B\540D\79F0'),
'    select FOLDER_CLASS_NAME',
'    into V_CURRENT_FOLDER_CLASS_NAME',
'    from STS_FOLDER_CLASS',
'    where FOLDER_CLASS_ID = :P101_FOLDER_CLASS_ID',
'      and DEL_FLAG = 0',
'      and TENANT_ID = :USER_TENANT;',
'',
unistr('-- \5220\9664\81EA\5B9A\4E49\5206\7C7B\64CD\4F5C'),
'    update STS_FOLDER_CLASS',
'    set DEL_FLAG    = 1,',
'        UPDATED_BY  = :MPF_USER_ID,',
'        UPDATE_DATE = sysdate',
'    where FOLDER_CLASS_ID = :P101_FOLDER_CLASS_ID',
'      and DEL_FLAG = 0',
'      and TENANT_ID = :USER_TENANT;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P101_ROW_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P101_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P101_FOLDER_CLASS_ID'
,p_attribute_03=>'P101_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3305039545363407126)
,p_event_id=>wwv_flow_imp.id(3744299814515001895)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7-\6700\65B0')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG                   NVARCHAR2(2000);',
'    V_ROW_COUNT                 NUMBER(10) := 0;',
'    V_FOLDER_CLASS_ID           NUMBER(20) := 0;',
'    V_FOLDER_LIB_COUNT          NUMBER(10) := 0;',
'    V_CURRENT_FOLDER_CLASS_NAME NVARCHAR2(100);',
'    V_RESULT                    NVARCHAR2(4000);',
'    V_JSON                      CLOB ;',
'/**',
'* CREATE BY: DUL',
'* CREATE DATE: 2025/3/19 11:36',
unistr('* MODIFY BY: WXX  \65B0\589E\901A\7528\64CD\4F5C\65E5\5FD7'),
'* MODIFY DATE:2025/4/23 9:51',
unistr('* MODIFY BY: LCB    \5220\9664\5168\90E8\5206\7C7B\903B\8F91\53D8\66F4     WXX'),
'* MODIFY DATE:2025/4/27 16:51            2025/4/28 8:57',
unistr('* DESCRIPTION: \81EA\5B9A\4E49\5206\7C7B-\6279\91CF\5220\9664\64CD\4F5C'),
'*/',
'BEGIN',
unistr('    -- \67E5\8BE2\5206\7C7B\4E0B\662F\5426\6709\6587\4EF6\5E93'),
'    select count(FOLDER_LIB_ID)',
'    into V_FOLDER_LIB_COUNT',
'    from STS_FOLDER_LIB',
'    where FOLDER_CLASS_ID = :P101_FOLDER_CLASS_ID',
'      and DEL_FLAG = 0',
'      and TENANT_ID = :USER_TENANT;',
'',
unistr('-- \5206\7C7B\4E0B\6587\4EF6\5E93\5C06\81EA\52A8\4FEE\6539\4E3A\201C\5168\90E8\5206\7C7B\201D \903B\8F91\5904\7406'),
'    if V_FOLDER_LIB_COUNT > 0 then',
'        update STS_FOLDER_LIB',
'        set FOLDER_CLASS_ID = null,',
'            UPDATED_BY      = :MPF_USER_ID,',
'            UPDATE_DATE     = sysdate',
'        where FOLDER_CLASS_ID = :P101_FOLDER_CLASS_ID',
'          and DEL_FLAG = 0',
'          and TENANT_ID = :USER_TENANT;',
'    end if;',
'',
unistr('        -- \64CD\4F5C\65E5\5FD7\8BB0\5F55 \5220\9664\5206\7C7B\64CD\4F5C'),
unistr('-- \67E5\8BE2\5F53\524D\5206\7C7B\540D\79F0'),
'        select FOLDER_CLASS_NAME',
'        into V_CURRENT_FOLDER_CLASS_NAME',
'        from STS_FOLDER_CLASS',
'        where FOLDER_CLASS_ID = :P101_FOLDER_CLASS_ID',
'          and DEL_FLAG = 0',
'          and TENANT_ID = :USER_TENANT;',
'',
'        if V_CURRENT_FOLDER_CLASS_NAME is not null then',
'',
unistr('-- \5220\9664\81EA\5B9A\4E49\5206\7C7B\64CD\4F5C'),
'            update STS_FOLDER_CLASS',
'            set DEL_FLAG    = 1,',
'                UPDATED_BY  = :MPF_USER_ID,',
'                UPDATE_DATE = sysdate',
'            where FOLDER_CLASS_ID = :P101_FOLDER_CLASS_ID',
'              and DEL_FLAG = 0',
'              and TENANT_ID = :USER_TENANT;',
'            V_ROW_COUNT := SQL%ROWCOUNT;',
'',
unistr('            if V_ROW_COUNT > 0 then --\5220\9664\6210\529F\FF0C\5B58\5165\65E5\5FD7'),
'  V_JSON     := ''{',
'        "current_name": " '' || V_CURRENT_FOLDER_CLASS_NAME || '' ",',
'        "old_name": "",',
'        "new_name": "",',
'        "permission_type": "",',
'        "user_ids": "",',
'        "dept_ids": "",',
'        "range_content": ""',
'    }'';',
'                V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
'                        P_MODULE_CODE => ''FOLDER_CLASS'',',
'                        P_OPERATION_CODE => ''CLASSIFICATION'',',
'                        P_BEHAVIOR_CODE => ''DELETE'',',
'                        P_ENTITY_ID => :P101_FOLDER_CLASS_ID,',
'                        P_EXTRA_PARAMS => V_JSON,',
'                        P_APP_ID => :APP_ID,',
'                        P_TENANT_ID => :USER_TENANT,',
'                        P_SYS_USER_ID =>:MPF_USER_ID',
'                            );',
'            end if;',
'        end if;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P101_ROW_COUNT'', V_ROW_COUNT);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P101_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P101_FOLDER_CLASS_ID'
,p_attribute_03=>'P101_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3744300087973001897)
,p_event_id=>wwv_flow_imp.id(3744299814515001895)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P101_ROW_COUNT'') > 0) {',
unistr('    alert(''\5220\9664\6210\529F\FF01'');'),
'}  else {',
unistr('    alert(''\5220\9664\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3744300315711001900)
,p_event_id=>wwv_flow_imp.id(3744299814515001895)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3742341536413008122)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3744300489339001901)
,p_name=>unistr('\5237\65B0\7F51\683C\6570\636E')
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3744300514156001902)
,p_event_id=>wwv_flow_imp.id(3744300489339001901)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3742341536413008122)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
