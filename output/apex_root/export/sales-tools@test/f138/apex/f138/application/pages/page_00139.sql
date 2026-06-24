prompt --application/pages/page_00139
begin
--   Manifest
--     PAGE: 00139
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
 p_id=>139
,p_name=>unistr('\6587\4EF6\5939\53CA\6587\4EF6\6743\9650\8BBE\7F6E')
,p_alias=>unistr('\6587\4EF6\5939\53CA\6587\4EF6\6743\9650\8BBE\7F6E')
,p_step_title=>unistr('\6587\4EF6\5939\53CA\6587\4EF6\6743\9650\8BBE\7F6E')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4232693165284257529)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/dingtalk-3.0.25.js',
'#WORKSPACE_FILES#static/js/dingConfig.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js',
'#WORKSPACE_FILES#static/js/pxmu.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P139_USER_IDS'', result.users.map(i => i.emplId).join('',''))',
'    $s(''P139_DEPT_IDS'', result.departments.map(i => +i.id).join('',''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'    $(''#add_user'').click()',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P139_FILE_NAME''))',
'',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK();',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
' $(''#chooseUser'').click()',
'});',
'',
'',
'$(''#chooseInput'').val($v(''P139_COMBINED_NAMES''))'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#add_user,#chooseUser, #save {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3783940659623618537)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249620856755239725)
,p_plug_display_sequence=>260
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10249505214628239653)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(10249683292328239770)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6098600876063184366)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(10249608473618239721)
,p_plug_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6098600955040184367)
,p_plug_name=>unistr('\6210\5458\53CA\6743\9650')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(10249608473618239721)
,p_plug_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5437595725070920776)
,p_plug_name=>unistr('\9009\62E9\53EF\89C1\4EBA\5458')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(6098600955040184367)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(10249618299648239724)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex;justify-content: flex-start;align-items: center;margin-bottom:20px">',
unistr('    <input readonly  id="chooseInput" style="margin-right:20px"><button type=''button'' id="chooseBtn">\9009\62E9\4EBA\5458</button>'),
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5887995091068544472)
,p_plug_name=>unistr('\6210\5458\6743\9650')
,p_region_name=>'table'
,p_parent_plug_id=>wwv_flow_imp.id(6098600955040184367)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249598671653239718)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.SCOPE_ID,',
'       A.ROLE_ID,',
'       A.USER_ID,',
unistr('       DECODE(A.RANGE_TYPE,''USER'',D.NAME,''DEPT'',E.NAME ||''(\90E8\95E8)'') USER_NAME,'),
unistr('       (DECODE(B.IS_PERMISSION_CHANGES, 0, ''\7EE7\627F\7236\7EA7\6743\9650'','),
unistr('              (''\7531\300C'' || C.NAME || ''-'' || C.JOB_NUMBER || ''\300D\6DFB\52A0''))) V_SOURCE_USER_ID,'),
'       A.PERMISSIONS_TYPE,',
'       A.RANGE_TYPE,',
'       A.RANGE_ID,',
'       A.REFERENCE_ID,',
'       B.IS_PERMISSION_CHANGES',
'FROM STS_SCOPE A ',
'         LEFT JOIN STS_FILE B ON A.REFERENCE_TYPE = ''FILE'' AND A.REFERENCE_ID =B.FILE_ID',
'         LEFT JOIN BASIC_JA_DING_USER C',
'              ON A.SOURCE_USER_ID =C.USER_ID',
'         left join BASIC_JA_DING_USER D ',
'              ON A.RANGE_TYPE =''USER'' and A.RANGE_ID =D.USER_ID',
'         left join BASIC_JA_DING_DEPT E',
'              ON A.RANGE_TYPE =''DEPT'' and A.RANGE_ID =TO_CHAR(E.DEPT_ID)',
'WHERE A.REFERENCE_TYPE = ''FILE''',
'  AND A.REFERENCE_ID = :P139_FILE_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P139_FILE_ID'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\6210\5458\6743\9650')
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
 p_id=>wwv_flow_imp.id(3799074091530213235)
,p_name=>'IS_PERMISSION_CHANGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_PERMISSION_CHANGES'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4268036093481918531)
,p_name=>'REFERENCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERENCE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5439489674048105491)
,p_name=>'RANGE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RANGE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5439489829341105492)
,p_name=>'RANGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RANGE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5647961264002517519)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7528\6237')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5887995283013544474)
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
 p_id=>wwv_flow_imp.id(5887995346333544475)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5887995475132544476)
,p_name=>'SCOPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5887995580103544477)
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
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5887995687997544478)
,p_name=>'V_SOURCE_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_SOURCE_USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\6765\6E90')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(5887995791672544479)
,p_name=>'PERMISSIONS_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERMISSIONS_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\6743\9650')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4234092514588412878)
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
,p_readonly_condition_type=>'FUNCTION_BODY'
,p_readonly_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    if :PERMISSIONS_TYPE= ''MANAGE'' AND :IS_PERMISSION_CHANGES=0 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;',
'-- begin',
'--     if :PERMISSIONS_TYPE = ''MANAGE'' OR :IS_PERMISSION_CHANGES = 1 then',
unistr('--         return false;  -- \6EE1\8DB3\4EFB\610F\4E00\4E2A\6761\4EF6\5C31\8FD4\56DE false \53EF\7F16\8F91'),
'--     else',
unistr('--         return true;   -- \4E24\4E2A\6761\4EF6\90FD\4E0D\6EE1\8DB3\65F6\8FD4\56DE true \53EA\8BFB'),
'--     end if;',
'-- end;'))
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
,p_help_text=>unistr('<p style="color: red;">\6B64\8BBE\7F6E\7EE7\627F\81EA\4E0A\7EA7\76EE\5F55\FF0C\82E5\4FEE\6539\FF0C\5219\4EE5\540E\4E0A\7EA7\76EE\5F55\4EFB\4F55\65B0\7684\6743\9650\53D8\66F4\FF0C\90FD\4E0D\518D\81EA\52A8\540C\6B65\5230\5F53\524D\6587\6863</p>')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(6099737058705276930)
,p_name=>'ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5887995153199544473)
,p_internal_uid=>3029402466018418664
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'',
'    var i, toolbarData = apex.jQuery.apex.interactiveGrid.copyDefaultToolbar();',
'    var toolbarGroup = toolbarData.toolbarFind("actions3");',
'    var toolbarGroup2 = toolbarData.toolbarFind("actions2");',
'',
'    toolbarGroup.controls.push({',
'        type: "BUTTON",',
unistr('        label: "\4FDD\5B58",'),
'        action: "my_action",',
'        hot: true',
'    });',
'config.initActions = function (actions) {',
'        actions.add({',
'            name: "my_action",',
'            action: function () {',
unistr('                // \81EA\5B9A\4E49\51FD\6570'),
'                $(''#save'').click();',
'            }',
'        });',
'    };',
'',
'    config.toolbarData = toolbarData;',
'    return config;',
'}',
''))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(6099742987941278592)
,p_interactive_grid_id=>wwv_flow_imp.id(5887995153199544473)
,p_static_id=>'4545154'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(6099743136532278593)
,p_report_id=>wwv_flow_imp.id(6099742987941278592)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3799599035409445348)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3799074091530213235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4268078735889457671)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4268036093481918531)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5648589556773156756)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5647961264002517519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5655378706467534705)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(5439489674048105491)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5655379640787534711)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(5439489829341105492)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6099744015076278596)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5887995346333544475)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6099744941660278599)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5887995475132544476)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6099745798017278601)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5887995580103544477)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6099746640475278603)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5887995687997544478)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6099747549060278606)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(5887995791672544479)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(6099748502671278608)
,p_view_id=>wwv_flow_imp.id(6099743136532278593)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(6099737058705276930)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3328793439183366839)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6098600955040184367)
,p_button_name=>unistr('\6DFB\52A0\7528\6237')
,p_button_static_id=>'add_user'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0\7528\6237')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3328793839551366840)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6098600955040184367)
,p_button_name=>unistr('\79FB\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\79FB\9664')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3329579640007895132)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6098600955040184367)
,p_button_name=>unistr('\9009\62E9\4EBA\5458')
,p_button_static_id=>'chooseUser'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\9009\62E9\4EBA\5458')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3799073982227213234)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(6098600955040184367)
,p_button_name=>unistr('\4FDD\5B58\4EBA\5458')
,p_button_static_id=>'save'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\4FDD\5B58\4EBA\5458')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3328792327606366837)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(6098600876063184366)
,p_button_name=>unistr('\4FDD\5B58\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58\4FEE\6539')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3783940768783618538)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3783940659623618537)
,p_button_name=>unistr('\8FD4\56DE\4E0A\7EA7')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('<  \8FD4\56DE\4E0A\7EA7')
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:133:P133_FILE_ID,P133_ROOT_FOLDER_ID,P133_PARENT_FOLDER_ID:&P139_FILE_ID.,&P139_ROOT_FOLDER_ID.,&P139_PARENT_FOLDER_ID.'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3577565343102415899)
,p_name=>'P139_PROMPT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3783940659623618537)
,p_item_display_point=>'SMART_FILTERS'
,p_prompt=>unistr('\63D0\793A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PERMISSION_CHANGES NUMBER(1);',
'BEGIN',
'    SELECT IS_PERMISSION_CHANGES INTO V_PERMISSION_CHANGES FROM STS_FILE WHERE FILE_ID = :P139_FILE_ID;',
'',
'    IF V_PERMISSION_CHANGES = 0 THEN',
'        RETURN FALSE;',
'    ELSE',
'        RETURN TRUE;',
'    END IF;',
'END;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(10249678845011239762)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>unistr('<span style="color: #ff0000;">\5DF2\9650\5236\6743\9650\FF0C\4E0A\7EA7\6587\4EF6\6743\9650\4E0D\518D\4F5C\7528\4E8E\672C\6587\4EF6</span>')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3783940850042618539)
,p_name=>'P139_PARENT_FOLDER_ID'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3799070521586213200)
,p_name=>'P139_ROOT_FOLDER_ID'
,p_item_sequence=>170
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3799072771077213222)
,p_name=>'P139_SCOPE_ID'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3799072893029213223)
,p_name=>'P139_RANGE_ID'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3799072984995213224)
,p_name=>'P139_REFERENCE_ID'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3799073051515213225)
,p_name=>'P139_PERMISSIONS_TYPE'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3799073206065213226)
,p_name=>'P139_RANGE_TYPE'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3799073288801213227)
,p_name=>'P139_MAX_LENGTH'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4267711471413120011)
,p_name=>'P139_FILE_NAME'
,p_item_sequence=>160
,p_item_default=>'select FILE_NAME from STS_FILE where  FILE_ID  = :P139_FILE_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4268045639702918585)
,p_name=>'P139_SCOPE_IDS'
,p_item_sequence=>180
,p_item_default=>'select FILE_NAME from STS_FILE where  FILE_ID  = :P139_FILE_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5193255619860612863)
,p_name=>'P139_SCOPE_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(6098600876063184366)
,p_item_default=>'select SCOPE_TYPE from STS_FILE where  FILE_ID  = :P139_FILE_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\662F\5426\516C\5F00')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC2:\96C6\56E2\5185\53EF\67E5\770B\548C\4E0B\8F7D;VIEW_DOWN,\96C6\56E2\5185\53EF\67E5\770B;VIEW,\4EC5\6210\5458\53EF\89C1;USER')
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(10249679185703239764)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('<!-- <span style="color: #ff0000;">\5F53\8BBE\4E3A\96C6\56E2\5185\4E0D\516C\5F00\65F6\FF0C\4EC5\4E0B\65B9\6743\9650\5217\8868\4E2D\6210\5458\53EF\6839\636E\6743\9650\8BBF\95EE\8BE5\6587\4EF6</span> -->')
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
 p_id=>wwv_flow_imp.id(5193280485192613122)
,p_name=>'P139_FILE_ID'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5437649353409921304)
,p_name=>'P139_USER_IDS_RAW'
,p_item_sequence=>110
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select XMLAGG(XMLELEMENT(e, RANGE_ID, '','').extract(''//text()''))',
'           .getClobVal() as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FILE''',
'  AND REFERENCE_ID = :P139_FILE_ID',
'  AND RANGE_TYPE = ''USER'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5437649434447921305)
,p_name=>'P139_DEPT_IDS'
,p_item_sequence=>120
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(RANGE_ID, '','') as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FILE''',
'  AND REFERENCE_ID = :P139_FILE_ID',
'  AND RANGE_TYPE = ''DEPT'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5437649561150921306)
,p_name=>'P139_DEPT_IDS_RAW'
,p_item_sequence=>130
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(RANGE_ID, '','') as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FILE''',
'  AND REFERENCE_ID = :P139_FILE_ID',
'  AND RANGE_TYPE = ''DEPT'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5437649596744921307)
,p_name=>'P139_COMBINED_NAMES'
,p_item_sequence=>140
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT XMLAGG(XMLELEMENT(e, NAME, '','').extract(''//text()''))',
'           .getClobVal()',
'FROM (',
unistr('         -- \67E5\8BE2USER\7684\540D\5B57'),
'         SELECT u.NAME',
'         FROM SHARE_BASIC_JA_DING_USER_V@MPF_prod_DBLINK u',
'         WHERE u.USER_ID IN (SELECT s.RANGE_ID',
'                             FROM STS_SCOPE s',
'                             WHERE REFERENCE_TYPE = ''FILE''',
'                               AND REFERENCE_ID = :P139_FILE_ID',
'                               AND RANGE_TYPE = ''USER'')',
'',
'         UNION',
unistr('         -- \4F7F\7528 UNION \53BB\91CD'),
unistr('         -- \67E5\8BE2DEPT\7684\540D\5B57'),
'         SELECT d.NAME',
'         FROM SHARE_BASIC_JA_DING_DEPT_V@MPF_prod_DBLINK d',
'         WHERE d.DEPT_ID IN (SELECT s.RANGE_ID',
'                             FROM STS_SCOPE s',
'                             WHERE REFERENCE_TYPE = ''FILE''',
'                               AND REFERENCE_ID = :P139_FILE_ID',
'                               AND RANGE_TYPE = ''DEPT''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6098653932696184888)
,p_name=>'P139_ROW_COUNT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6099790696423277458)
,p_name=>'P139_USER_IDS'
,p_item_sequence=>100
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select XMLAGG(XMLELEMENT(e, RANGE_ID, '','').extract(''//text()''))',
'           .getClobVal() as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FILE''',
'  AND REFERENCE_ID = :P139_FILE_ID',
'  AND RANGE_TYPE = ''USER'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3328804039740366893)
,p_name=>unistr('\76D1\542C\5BF9\8BDD\6846\5173\95ED')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328804501388366894)
,p_event_id=>wwv_flow_imp.id(3328804039740366893)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P139_FOLDER_LIB_NAME''))'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3328804894900366894)
,p_name=>unistr('\4FEE\6539\64CD\4F5C')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3328792327606366837)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328805470901366894)
,p_event_id=>wwv_flow_imp.id(3328804894900366894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\6B64\8BBE\7F6E\7EE7\627F\81EA\4E0A\7EA7\76EE\5F55\FF0C\82E5\4FEE\6539\FF0C\5219\4EE5\540E\4E0A\7EA7\76EE\5F55\4EFB\4F55\65B0\7684\6743\9650\53D8\66F4\FF0C\90FD\4E0D\518D\81EA\52A8\540C\6B65\5230\5F53\524D\6587\6863')
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PERMISSION_CHANGES NUMBER(1);',
'BEGIN',
'    SELECT IS_PERMISSION_CHANGES INTO V_PERMISSION_CHANGES FROM STS_FILE WHERE FILE_ID = :P139_FILE_ID;',
'',
'    IF V_PERMISSION_CHANGES = 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328805913383366894)
,p_event_id=>wwv_flow_imp.id(3328804894900366894)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    V_COUNT   NUMBER(10);',
'BEGIN',
unistr('    --\4FEE\6539\6570\636E'),
'    UPDATE STS_FILE',
'    SET SCOPE_TYPE=:P139_SCOPE_TYPE,',
'        IS_PERMISSION_CHANGES =1',
'    WHERE FILE_ID = :P139_FILE_ID;',
unistr('     --\540C\6B65\4E0B\7EA7\6743\9650'),
'    FOR i in (SELECT FILE_ID',
'              FROM STS_FILE',
'              WHERE (ROOT_FOLDER_ID = :P139_ROOT_FOLDER_ID OR FILE_ID = :P139_ROOT_FOLDER_ID)',
'                AND TENANT_ID = :USER_TENANT',
'                AND DEL_FLAG  <> 1',
'              START WITH FILE_ID = :P139_FILE_ID',
'              CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'                     AND DEL_FLAG <> 1',
'                     and PRIOR DEL_FLAG <> 1',
'                     AND IS_PERMISSION_CHANGES = 0)',
'        loop',
'            if I.FILE_ID <> :P139_FILE_ID then',
'                UPDATE STS_FILE',
'                SET SCOPE_TYPE=:P139_SCOPE_TYPE',
'                WHERE FILE_ID = i.FILE_ID;',
'            end if ;',
'        end loop;',
'',
'',
'    COMMIT;',
'    APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', V_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P139_SCOPE_TYPE,P139_FILE_ID,P139_ROOT_FOLDER_ID'
,p_attribute_03=>'P139_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328806482666366894)
,p_event_id=>wwv_flow_imp.id(3328804894900366894)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P139_ROW_COUNT'') == 0) {',
unistr('    alert(''\4FEE\6539\6210\529F\FF01'');'),
'    return true;',
'}else {',
unistr('    alert(''\4FEE\6539\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3577565455776415900)
,p_event_id=>wwv_flow_imp.id(3328804894900366894)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'location.reload()'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3328806825973366894)
,p_name=>unistr('\6DFB\52A0\7528\6237')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3328793439183366839)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328807300511366895)
,p_event_id=>wwv_flow_imp.id(3328806825973366894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7-1')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG NVARCHAR2(2000);',
'cursor addUserCursor is select COLUMN_VALUE',
'                        FROM TABLE (SPLITSTR(:P139_USER_IDS, '',''))',
'                        MINUS',
'                        SELECT COLUMN_VALUE',
'                        FROM TABLE (SPLITSTR(:P139_USER_IDS_RAW, '',''));',
'cursor addDeptCursor is select COLUMN_VALUE',
'                        FROM TABLE (SPLITSTR(:P139_DEPT_IDS, '',''))',
'                        MINUS',
'                        SELECT COLUMN_VALUE',
'                        FROM TABLE (SPLITSTR(:P139_DEPT_IDS_RAW, '',''));',
'begin',
unistr('--\4FEE\6539\6570\636E'),
'UPDATE STS_FILE',
'SET IS_PERMISSION_CHANGES =1',
'WHERE FILE_ID = :P139_FILE_ID',
'AND IS_PERMISSION_CHANGES =0;',
unistr('--\5220\9664\5386\53F2\6570\636E'),
'delete STS_SCOPE',
'where REFERENCE_ID = :P139_FILE_ID',
'and REFERENCE_TYPE = ''FILE''',
'and RANGE_TYPE = ''USER''',
'and RANGE_ID in (select COLUMN_VALUE',
'           FROM TABLE (SPLITSTR(:P139_USER_IDS_RAW, '',''))',
'           MINUS',
'           SELECT COLUMN_VALUE',
'           FROM TABLE (SPLITSTR(:P139_USER_IDS, '','')));',
'',
'delete STS_SCOPE',
'where REFERENCE_ID = :P139_FILE_ID',
'and REFERENCE_TYPE = ''FILE''',
'and RANGE_TYPE = ''DEPT''',
'and RANGE_ID in (select COLUMN_VALUE',
'           FROM TABLE (SPLITSTR(:P139_DEPT_IDS_RAW, '',''))',
'           MINUS',
'           SELECT COLUMN_VALUE',
'           FROM TABLE (SPLITSTR(:P139_DEPT_IDS, '','')));',
'-- WRITE_LOG(''jw'', ''scope2'',111, null, 1);',
unistr('--\6DFB\52A0\6210\5458'),
'for cur in addUserCursor',
'loop',
'INSERT INTO STS_SCOPE (CREATED_BY,',
'                       UPDATED_BY,',
'                       RANGE_TYPE,',
'                       RANGE_ID,',
'                       REFERENCE_ID,',
'                       REFERENCE_TYPE,',
'                       PERMISSIONS_TYPE,',
'                       SOURCE_USER_ID)',
'VALUES (:MPF_USER_ID,',
'        :MPF_USER_ID,',
'        ''USER'',',
'        cur.COLUMN_VALUE,',
'        :P139_FILE_ID,',
'        ''FILE'',',
'        ''VIEW_DOWN'',',
'        :DIAN_USER_ID);',
'end loop;',
unistr('--\6DFB\52A0\90E8\95E8'),
'for cur in addDeptCursor',
'loop',
'INSERT INTO STS_SCOPE (CREATED_BY,',
'                       UPDATED_BY,',
'                       RANGE_TYPE,',
'                       RANGE_ID,',
'                       REFERENCE_ID,',
'                       REFERENCE_TYPE,',
'                       PERMISSIONS_TYPE,',
'                       SOURCE_USER_ID)',
'VALUES (:MPF_USER_ID,',
'        :MPF_USER_ID,',
'        ''DEPT'',',
'        cur.COLUMN_VALUE,',
'        :P139_FILE_ID,',
'        ''FILE'',',
'        ''VIEW_DOWN'',',
'        :DIAN_USER_ID);',
'end loop;',
unistr('--\540C\6B65\4E0B\7EA7\6743\9650'),
'FOR ITEM IN (SELECT FILE_ID',
'          FROM STS_FILE',
'          WHERE (ROOT_FOLDER_ID = :P139_ROOT_FOLDER_ID OR FILE_ID = :P139_ROOT_FOLDER_ID)',
'            AND TENANT_ID = :USER_TENANT',
'            AND DEL_FLAG <> 1',
'          START WITH FILE_ID = :P139_FILE_ID',
'          CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'                 AND DEL_FLAG <> 1',
'                 AND PRIOR DEL_FLAG <> 1',
'                 AND IS_PERMISSION_CHANGES = 0)LOOP',
'if ITEM.FILE_ID <>:P139_FILE_ID then',
'    ',
'delete STS_SCOPE where REFERENCE_TYPE =''FILE'' AND REFERENCE_ID =ITEM.FILE_ID;',
'',
'insert into STS_SCOPE (CREATED_BY,',
'                       UPDATED_BY,',
'                       RANGE_TYPE,',
'                       RANGE_ID,',
'                       REFERENCE_ID,',
'                       REFERENCE_TYPE,',
'                       PERMISSIONS_TYPE,',
'                       SOURCE_USER_ID)',
'select CREATED_BY,',
'       UPDATED_BY,',
'       RANGE_TYPE,',
'       RANGE_ID,',
'       ITEM.FILE_ID,',
'       REFERENCE_TYPE,',
'       PERMISSIONS_TYPE,',
'       SOURCE_USER_ID',
'from STS_SCOPE',
'    where REFERENCE_TYPE =''FILE'' AND REFERENCE_ID =:P139_FILE_ID;',
'end if;',
'end loop;',
'APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', 1);',
'commit;',
'EXCEPTION',
'WHEN OTHERS THEN',
'    ROLLBACK;',
'    V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('    WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT, :APP_NAME,'),
'              :APP_ID, :APP_CODE);',
'    APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P139_USER_IDS,P139_USER_IDS_RAW,P139_DEPT_IDS,P139_DEPT_IDS_RAW,P139_FILE_ID'
,p_attribute_03=>'P139_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328807835557366896)
,p_event_id=>wwv_flow_imp.id(3328806825973366894)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P139_ROW_COUNT'') > 0) {',
unistr('    alert(''\6DFB\52A0\6210\529F\FF01'');'),
'    $s("P139_USER_IDS_RAW", $v("P139_USER_IDS"))',
'    $s("P139_DEPT_IDS_RAW", $v("P139_DEPT_IDS"))',
'    return true;',
'} else {',
unistr('    alert(''\6DFB\52A0\5931\8D25\FF01'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328808345132366897)
,p_event_id=>wwv_flow_imp.id(3328806825973366894)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'location.reload()'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3328808724020366897)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(5887995091068544472)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328809200286366898)
,p_event_id=>wwv_flow_imp.id(3328808724020366897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'',
'map.set(''P139_SCOPE_IDS'',''SCOPE_ID'');',
'utils.set(this.data, map);',
'',
unistr('// console.log(''\884C\9009\4E2D ROLE_ID\FF1A'' + $v(''P139_SCOPE_IDS''));')))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3328809599967366898)
,p_name=>unistr('\79FB\9664')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3328793839551366840)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P139_SCOPE_IDS''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328810145144366898)
,p_event_id=>wwv_flow_imp.id(3328809599967366898)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\6B64\8BBE\7F6E\7EE7\627F\81EA\4E0A\7EA7\76EE\5F55\FF0C\82E5\4FEE\6539\FF0C\5219\4EE5\540E\4E0A\7EA7\76EE\5F55\4EFB\4F55\65B0\7684\6743\9650\53D8\66F4\FF0C\90FD\4E0D\518D\81EA\52A8\540C\6B65\5230\5F53\524D\6587\6863')
,p_build_option_id=>wwv_flow_imp.id(10249504556709239649)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328810622605366898)
,p_event_id=>wwv_flow_imp.id(3328809599967366898)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\8981\79FB\9664\7684\6570\636E\FF01'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328811174555366898)
,p_event_id=>wwv_flow_imp.id(3328809599967366898)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_RANGE_TYPE   VARCHAR2(100);',
'    V_RANGE_ID     VARCHAR2(256);',
'    V_REFERENCE_ID VARCHAR2(256);',
'    V_ERR_MSG      VARCHAR2(4000);',
'BEGIN',
unistr('    --\4FEE\6539\6570\636E'),
'    UPDATE STS_FILE',
'    SET IS_PERMISSION_CHANGES =1',
'    WHERE FILE_ID = :P139_FILE_ID',
'      AND IS_PERMISSION_CHANGES = 0;',
'',
'    FOR ITEM IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P139_SCOPE_IDS, '',''))',
'        LOOP',
'            SELECT RANGE_TYPE, RANGE_ID, REFERENCE_ID',
'            INTO V_RANGE_TYPE,V_RANGE_ID,V_REFERENCE_ID',
'            FROM STS_SCOPE',
'            WHERE SCOPE_ID = ITEM.DATA_VAL;',
unistr('            --\5220\9664\6587\4EF6\5E93'),
'            DELETE STS_SCOPE',
'            WHERE SCOPE_ID = ITEM.DATA_VAL;',
unistr('            --\4E0B\7EA7\6743\9650'),
'            DELETE STS_SCOPE',
'            WHERE REFERENCE_TYPE = ''FILE''',
'              AND RANGE_TYPE = V_RANGE_TYPE',
'              AND RANGE_ID = V_RANGE_ID',
'              AND REFERENCE_ID IN (SELECT FILE_ID',
'                                   FROM STS_FILE',
'                                   WHERE (ROOT_FOLDER_ID = :P139_ROOT_FOLDER_ID OR FILE_ID = :P139_ROOT_FOLDER_ID)',
'                                     AND TENANT_ID = :USER_TENANT',
'                                     AND DEL_FLAG <> 1',
'                                   START WITH FILE_ID = V_REFERENCE_ID',
'                                   CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'                                          AND DEL_FLAG <> 1',
'                                          AND PRIOR DEL_FLAG <> 1',
'                                          AND IS_PERMISSION_CHANGES = 0);',
'            STS_SYNCHRONIZE_ACCOUNTS_DELETE_PRO(V_RANGE_TYPE, V_RANGE_ID, :MPF_USER_ID, :USER_TENANT, ITEM.DATA_VAL);',
'        END LOOP;',
'    APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\79FB\9664\4EBA\5458'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P139_SCOPE_IDS,P139_FILE_ID,P139_ROOT_FOLDER_ID'
,p_attribute_03=>'P139_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(10249504556709239649)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1059852262153518020)
,p_event_id=>wwv_flow_imp.id(3328809599967366898)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\7BA1\7406\6743\9650\4E0D\53EF\5220\9664\5224\65AD')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_RANGE_TYPE       VARCHAR2(100);',
'    V_RANGE_ID         VARCHAR2(256);',
'    V_REFERENCE_ID     VARCHAR2(256);',
'    V_ERR_MSG          VARCHAR2(4000);',
'    L_UNREMOVABLE_CNT  NUMBER := 0;',
'BEGIN',
unistr('    -- \7B2C\4E00\6B65\FF1A\6821\9A8C\662F\5426\5305\542B\4E0D\53EF\79FB\9664\7528\6237'),
'    SELECT COUNT(*)',
'    INTO L_UNREMOVABLE_CNT',
'    FROM STS_SCOPE s',
'    WHERE s.SCOPE_ID IN (',
'        SELECT TRIM(DATA_VAL)',
'        FROM JA_UTILS_PKG.SPLIT_STR(:P139_SCOPE_IDS, '','')',
'    )',
'    AND s.PERMISSIONS_TYPE = ''MANAGE'';',
'--     AND s.IS_INHERIT_PERMISSION = 1;',
'',
'    IF L_UNREMOVABLE_CNT > 0 THEN',
unistr('        -- \5B58\5728\4E0D\53EF\79FB\9664\7528\6237\FF0C\8BBE\7F6E\7279\6B8A\72B6\6001\7801'),
unistr('        APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', ''-2''); -- -2 \8868\793A\201C\542B\4E0D\53EF\79FB\9664\7528\6237\201D'),
unistr('        RETURN; -- \4E0D\6267\884C\5220\9664'),
'    END IF;',
'',
unistr('    -- \7B2C\4E8C\6B65\FF1A\6B63\5E38\6267\884C\66F4\65B0\548C\5220\9664'),
'    UPDATE STS_FILE',
'    SET IS_PERMISSION_CHANGES = 1',
'    WHERE FILE_ID = :P139_FILE_ID',
'      AND IS_PERMISSION_CHANGES = 0;',
'',
'    FOR ITEM IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P139_SCOPE_IDS, '',''))',
'    LOOP',
'        BEGIN',
'            SELECT RANGE_TYPE, RANGE_ID, REFERENCE_ID',
'            INTO V_RANGE_TYPE, V_RANGE_ID, V_REFERENCE_ID',
'            FROM STS_SCOPE',
'            WHERE SCOPE_ID = ITEM.DATA_VAL;',
'',
'            DELETE STS_SCOPE WHERE SCOPE_ID = ITEM.DATA_VAL;',
'',
'            DELETE STS_SCOPE',
'            WHERE REFERENCE_TYPE = ''FILE''',
'              AND RANGE_TYPE = V_RANGE_TYPE',
'              AND RANGE_ID = V_RANGE_ID',
'              AND REFERENCE_ID IN (',
'                  SELECT FILE_ID',
'                  FROM STS_FILE',
'                  WHERE (ROOT_FOLDER_ID = :P139_ROOT_FOLDER_ID OR FILE_ID = :P139_ROOT_FOLDER_ID)',
'                    AND TENANT_ID = :USER_TENANT',
'                    AND DEL_FLAG <> 1',
'                  START WITH FILE_ID = V_REFERENCE_ID',
'                  CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'                     AND DEL_FLAG <> 1',
'                     AND PRIOR DEL_FLAG <> 1',
'                     AND IS_PERMISSION_CHANGES = 0',
'              );',
'',
'            STS_SYNCHRONIZE_ACCOUNTS_DELETE_PRO(V_RANGE_TYPE, V_RANGE_ID, :MPF_USER_ID, :USER_TENANT, ITEM.DATA_VAL);',
'        EXCEPTION',
'            WHEN NO_DATA_FOUND THEN',
unistr('                NULL; -- \53EF\9009\FF1A\5FFD\7565\5DF2\4E0D\5B58\5728\7684\8BB0\5F55'),
'        END;',
'    END LOOP;',
'',
unistr('    APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', ''1''); -- \6210\529F'),
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\79FB\9664\4EBA\5458'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', ''-1''); -- \666E\901A\9519\8BEF'),
'END;'))
,p_attribute_02=>'P139_SCOPE_IDS,P139_FILE_ID,P139_ROOT_FOLDER_ID'
,p_attribute_03=>'P139_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328811644222366898)
,p_event_id=>wwv_flow_imp.id(3328809599967366898)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// if($v(''P139_ROW_COUNT'')>0){',
unistr('//     alert(''\79FB\9664\6210\529F'');'),
'// }else{',
unistr('//     alert(''\79FB\9664\5931\8D25'');'),
'// }',
'',
'var rowCount =  $v(''P139_ROW_COUNT'');',
'',
'if (rowCount == ''1'') {',
unistr('    alert(''\79FB\9664\6210\529F\FF0C\6B64\8BBE\7F6E\7EE7\627F\81EA\4E0A\7EA7\76EE\5F55\FF0C\82E5\4FEE\6539\FF0C\5219\4EE5\540E\4E0A\7EA7\76EE\5F55\4EFB\4F55\65B0\7684\6743\9650\53D8\66F4\FF0C\90FD\4E0D\518D\81EA\52A8\540C\6B65\5230\5F53\524D\6587\6863'');'),
'} else if (rowCount == ''-2'') {',
unistr('    alert(''\9009\4E2D\7684\7528\6237\4E2D\542B\6709\4E0D\53EF\79FB\9664\7528\6237'');'),
'} else {',
unistr('    alert(''\79FB\9664\5931\8D25'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328812092786366899)
,p_event_id=>wwv_flow_imp.id(3328809599967366898)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'location.reload()'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3329579464542895131)
,p_name=>unistr('\9009\62E9\4EBA\5458')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3329579640007895132)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328991693994439510)
,p_event_id=>wwv_flow_imp.id(3329579464542895131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\6B64\8BBE\7F6E\7EE7\627F\81EA\4E0A\7EA7\76EE\5F55\FF0C\82E5\4FEE\6539\FF0C\5219\4EE5\540E\4E0A\7EA7\76EE\5F55\4EFB\4F55\65B0\7684\6743\9650\53D8\66F4\FF0C\90FD\4E0D\518D\81EA\52A8\540C\6B65\5230\5F53\524D\6587\6863')
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PERMISSION_CHANGES NUMBER(1);',
'BEGIN',
'    SELECT IS_PERMISSION_CHANGES INTO V_PERMISSION_CHANGES FROM STS_FILE WHERE FILE_ID = :P139_FILE_ID;',
'',
'    IF V_PERMISSION_CHANGES = 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3328991791016439511)
,p_event_id=>wwv_flow_imp.id(3329579464542895131)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    let userList = $v(''P139_USER_IDS'').split(",");',
'    let deptList = $v(''P139_DEPT_IDS'').split(",");',
'    DingTalkAuth.chooseUsers(userList,deptList,visible_callback);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3799072024872213215)
,p_name=>unistr('\4FDD\5B58\6570\636E')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3799073982227213234)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3799072188338213216)
,p_event_id=>wwv_flow_imp.id(3799072024872213215)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\6B64\8BBE\7F6E\7EE7\627F\81EA\4E0A\7EA7\76EE\5F55\FF0C\82E5\4FEE\6539\FF0C\5219\4EE5\540E\4E0A\7EA7\76EE\5F55\4EFB\4F55\65B0\7684\6743\9650\53D8\66F4\FF0C\90FD\4E0D\518D\81EA\52A8\540C\6B65\5230\5F53\524D\6587\6863')
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_PERMISSION_CHANGES NUMBER(1);',
'BEGIN',
'    SELECT IS_PERMISSION_CHANGES INTO V_PERMISSION_CHANGES FROM STS_FILE WHERE FILE_ID = :P139_FILE_ID;',
'',
'    IF V_PERMISSION_CHANGES = 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3799072647080213221)
,p_event_id=>wwv_flow_imp.id(3799072024872213215)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\83B7\53D6\7F51\683C\6570\636E'),
'var datas = apex.region("table").widget().interactiveGrid("getViews", "grid").model;',
'var maxLength =datas._data.length;',
'',
unistr('// \4FDD\5B58SCOPE_ID\FF0CRANGE_TYPE\FF0CRANGE_ID\FF0CPERMISSIONS_TYPE\FF0CREFERENCE_ID\9879\503C'),
'var  scopeId=new Array();',
'var  rangeType=new Array();',
'var  rangeId=new Array();',
'var  permissionsType=new Array();',
'var  referenceId=new Array();',
'',
'var flag = true;',
'',
'',
'if (utils.checkNull(datas._data)) {',
unistr('    alert(''\6CA1\6709\7B26\5408\7684\6570\636E'');'),
'    return false;',
'} else {',
'    for (var i = 0; i < maxLength; i < i++) {',
'        // console.log(''text:''+2);',
'        var re = datas._data[i];',
'// console.log(''text:''+4);',
'        ',
'        scopeId[i] = datas.getValue(re, ''SCOPE_ID'');',
'        rangeType[i] = datas.getValue(re, ''RANGE_TYPE'');',
'        rangeId[i] = datas.getValue(re, ''RANGE_ID'');',
'        permissionsType[i] = datas.getValue(re, ''PERMISSIONS_TYPE'').v;',
'        referenceId[i] = datas.getValue(re, ''REFERENCE_ID'');',
'',
'',
'    }',
'',
'',
'    $s(''P139_SCOPE_ID'', scopeId);',
'    $s(''P139_RANGE_TYPE'', rangeType);',
'    $s(''P139_RANGE_ID'', rangeId);',
'    $s(''P139_PERMISSIONS_TYPE'', permissionsType);',
'    $s(''P139_REFERENCE_ID'', referenceId);',
'    $s(''P139_MAX_LENGTH'', maxLength);',
'    if (flag) {',
'        pxmu.loading({',
unistr('            msg: ''\6B63\5728\52A0\8F7D'', //loading\4FE1\606F \4E3A\7A7A\65F6\4E0D\663E\793A\6587\672C'),
'            time: 2000,',
unistr('            bg: ''rgba(105,105,105, 0.65)'', //\80CC\666F\8272'),
unistr('            color: ''#fff'', //\6587\5B57\989C\8272'),
unistr('            animation: ''fade'', //\52A8\753B\540D \8BE6\89C1\52A8\753B\6587\6863'),
unistr('            close: true, // \81EA\52A8\5173\95ED \4E3Afalse\65F6\53EF\5728\4E1A\52A1\5B8C\6210\540E\8C03\7528 pxmu.closeload();\624B\52A8\5173\95ED'),
unistr('            inscroll: true, //\6A21\6001 \4E0D\53EF\70B9\51FB\548C\6EDA\52A8'),
'        });',
'    }',
'',
'    return flag;',
'',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3799073362443213228)
,p_event_id=>wwv_flow_imp.id(3799072024872213215)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'LOOP_NUM           NUMBER(10);',
'V_SCOPE_ID         NUMBER(20);',
'-- V_RANGE_ID         NUMBER(20);',
unistr('V_RANGE_ID     VARCHAR2(512);--\6B63\5F0F\73AF\5883\9489id\4E3A\5B57\7B26'),
'V_REFERENCE_ID     NUMBER(20);',
'V_RANGE_TYPE       VARCHAR2(50);',
'V_PERMISSIONS_TYPE VARCHAR2(50);',
'V_PERMISSIONS_TYPE_OLB VARCHAR2(50);',
unistr('V_COUNT            NUMBER(20) := 0; --\8BB0\5F55\72B6\6001'),
unistr('V_ERR_MSG          NVARCHAR2(1000);--\8BB0\5F55\5F02\5E38'),
'BEGIN',
unistr('--\4FEE\6539\6570\636E'),
'UPDATE STS_FILE',
'SET IS_PERMISSION_CHANGES =1',
'WHERE FILE_ID = :P139_FILE_ID',
'  AND IS_PERMISSION_CHANGES = 0;',
unistr('--\5FAA\73AF\5F53\524D\4EA4\4E92\5F0F\7F51\683C\5185\6240\6709\6570\636E'),
'FOR I IN 1..NVL(:P139_MAX_LENGTH, 0)',
'LOOP',
'LOOP_NUM := I;',
unistr('--\5C06\6570\636E\5355\72EC\53D6\51FA'),
'SELECT JA_UTILS_PKG.SUBSTRING_INSTR2(:P139_SCOPE_ID, '','', LOOP_NUM - 1, LOOP_NUM)',
'INTO V_SCOPE_ID',
'FROM DUAL;',
'SELECT JA_UTILS_PKG.SUBSTRING_INSTR2(:P139_RANGE_TYPE, '','', LOOP_NUM - 1, LOOP_NUM)',
'INTO V_RANGE_TYPE',
'FROM DUAL;',
'SELECT JA_UTILS_PKG.SUBSTRING_INSTR2(:P139_RANGE_ID, '','', LOOP_NUM - 1, LOOP_NUM)',
'INTO V_RANGE_ID',
'FROM DUAL;',
'SELECT JA_UTILS_PKG.SUBSTRING_INSTR2(:P139_REFERENCE_ID, '','', LOOP_NUM - 1, LOOP_NUM)',
'INTO V_REFERENCE_ID',
'FROM DUAL;',
'SELECT JA_UTILS_PKG.SUBSTRING_INSTR2(:P139_PERMISSIONS_TYPE, '','', LOOP_NUM - 1, LOOP_NUM)',
'INTO V_PERMISSIONS_TYPE',
'FROM DUAL;',
'SELECT PERMISSIONS_TYPE INTO V_PERMISSIONS_TYPE_OLB  from STS_SCOPE where SCOPE_ID =V_SCOPE_ID;',
unistr('IF V_PERMISSIONS_TYPE = ''MANAGE'' AND V_PERMISSIONS_TYPE_OLB <>V_PERMISSIONS_TYPE THEN --\7BA1\7406\6743\9650'),
'STS_SYNCHRONIZE_ACCOUNTS_PRO(V_RANGE_TYPE, V_RANGE_ID, :MPF_USER_ID, :USER_TENANT);',
unistr('--\6587\4EF6\5E93'),
'UPDATE STS_SCOPE',
'SET PERMISSIONS_TYPE = V_PERMISSIONS_TYPE,',
'    UPDATED_BY       = :MPF_USER_ID,',
'    UPDATE_DATE      =SYSDATE',
'WHERE SCOPE_ID = V_SCOPE_ID;',
unistr('--\4E0B\7EA7\6743\9650'),
'UPDATE STS_SCOPE',
'SET PERMISSIONS_TYPE = V_PERMISSIONS_TYPE,',
'    UPDATED_BY       = :MPF_USER_ID,',
'    UPDATE_DATE      =SYSDATE',
'WHERE REFERENCE_TYPE = ''FILE''',
'AND RANGE_TYPE = V_RANGE_TYPE',
'AND RANGE_ID = V_RANGE_ID',
'AND REFERENCE_ID IN (SELECT FILE_ID',
'FROM STS_FILE',
'WHERE (ROOT_FOLDER_ID = :P139_ROOT_FOLDER_ID OR FILE_ID = :P139_ROOT_FOLDER_ID)',
'AND TENANT_ID = :USER_TENANT',
'AND DEL_FLAG <> 1',
'START WITH FILE_ID = V_REFERENCE_ID',
'CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'AND DEL_FLAG <> 1',
'AND PRIOR DEL_FLAG <> 1',
'AND IS_PERMISSION_CHANGES = 0);',
'ELSIF (V_PERMISSIONS_TYPE = ''VIEW'' OR V_PERMISSIONS_TYPE = ''VIEW_DOWN'') AND V_PERMISSIONS_TYPE_OLB <>V_PERMISSIONS_TYPE THEN',
unistr('--\6587\4EF6\5E93'),
'UPDATE STS_SCOPE',
'SET PERMISSIONS_TYPE = V_PERMISSIONS_TYPE,',
'    UPDATED_BY       = :MPF_USER_ID,',
'    UPDATE_DATE      =SYSDATE',
'WHERE SCOPE_ID = V_SCOPE_ID;',
unistr('UPDATE STS_SCOPE --\4E0B\7EA7\6743\9650'),
'SET PERMISSIONS_TYPE = V_PERMISSIONS_TYPE,',
'    UPDATED_BY       = :MPF_USER_ID,',
'    UPDATE_DATE      =SYSDATE',
'WHERE REFERENCE_TYPE = ''FILE''',
'AND RANGE_TYPE = V_RANGE_TYPE',
'AND RANGE_ID = V_RANGE_ID',
'AND REFERENCE_ID IN (SELECT FILE_ID',
'   FROM STS_FILE',
'   WHERE (ROOT_FOLDER_ID = :P139_ROOT_FOLDER_ID OR FILE_ID = :P139_ROOT_FOLDER_ID)',
'     AND TENANT_ID = :USER_TENANT',
'     AND DEL_FLAG <> 1',
'   START WITH FILE_ID = V_REFERENCE_ID',
'   CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'          AND DEL_FLAG <> 1',
'          AND PRIOR DEL_FLAG <> 1',
'          AND IS_PERMISSION_CHANGES = 0);',
'    END IF;    ',
'COMMIT;',
'',
'END LOOP;',
'COMMIT;',
'APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', 1);',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'V_COUNT := -1;',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE || CHR(13) || LOOP_NUM;',
'APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', V_COUNT);',
unistr('JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\8BBE\7F6E\6743\9650'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,'),
'         :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P139_SCOPE_ID,P139_RANGE_TYPE,P139_RANGE_ID,P139_REFERENCE_ID,P139_PERMISSIONS_TYPE,P139_MAX_LENGTH,P139_FILE_ID,P139_ROOT_FOLDER_ID'
,p_attribute_03=>'P139_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1059852072472518018)
,p_event_id=>wwv_flow_imp.id(3799072024872213215)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6267\884C\4EE3\78012.0')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'LOOP_NUM           NUMBER(10);',
'V_SCOPE_ID         NUMBER(20);',
'V_RANGE_ID         NUMBER(20);',
'V_REFERENCE_ID     NUMBER(20);',
'V_RANGE_TYPE       VARCHAR2(50);',
'V_PERMISSIONS_TYPE VARCHAR2(50);',
'V_PERMISSIONS_TYPE_OLB VARCHAR2(50);',
'V_COUNT            NUMBER(20) := 0;',
'V_ERR_MSG          NVARCHAR2(1000);',
'V_DEBUG_MSG        VARCHAR2(4000);',
'BEGIN',
unistr('V_DEBUG_MSG := ''\5F00\59CB\6267\884C\FF0C\53C2\6570\4FE1\606F:'' || CHR(10) ||'),
'''P139_MAX_LENGTH: '' || :P139_MAX_LENGTH || CHR(10) ||',
'''P139_SCOPE_ID: '' || SUBSTR(:P139_SCOPE_ID, 1, 200) || CHR(10) ||',
'''P139_RANGE_TYPE: '' || SUBSTR(:P139_RANGE_TYPE, 1, 200) || CHR(10) ||',
'''P139_RANGE_ID: '' || SUBSTR(:P139_RANGE_ID, 1, 200) || CHR(10) ||',
'''P139_REFERENCE_ID: '' || SUBSTR(:P139_REFERENCE_ID, 1, 200) || CHR(10) ||',
'''P139_PERMISSIONS_TYPE: '' || SUBSTR(:P139_PERMISSIONS_TYPE, 1, 200);',
'',
unistr('--\4FEE\6539\6570\636E'),
'UPDATE STS_FILE',
'SET IS_PERMISSION_CHANGES = 1',
'WHERE FILE_ID = :P139_FILE_ID',
'AND IS_PERMISSION_CHANGES = 0;',
'insert into t (T,B)values (''aaa''||V_REFERENCE_ID ,sysdate);commit;',
unistr('--\5FAA\73AF\5F53\524D\4EA4\4E92\5F0F\7F51\683C\5185\6240\6709\6570\636E'),
'FOR I IN 1..NVL(:P139_MAX_LENGTH, 0)',
'LOOP',
'LOOP_NUM := I;',
'insert into t (T,B)values (''bbb''||V_REFERENCE_ID ,sysdate);commit;',
unistr('-- \8BB0\5F55\5F53\524D\5FAA\73AF\4FE1\606F'),
unistr('JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\5FAA\73AF\5F00\59CB'', ''DEBUG'', '),
unistr('''\7B2C'' || LOOP_NUM || ''\6B21\5FAA\73AF'', '),
':USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('--\5C06\6570\636E\5355\72EC\53D6\51FA'),
'BEGIN',
'SELECT JA_UTILS_PKG.SUBSTRING_INSTR2(:P139_SCOPE_ID, '','', LOOP_NUM - 1, LOOP_NUM)',
'INTO V_SCOPE_ID FROM DUAL;',
'EXCEPTION',
'WHEN OTHERS THEN',
unistr('V_ERR_MSG := ''\63D0\53D6SCOPE_ID\5931\8D25: '' || SQLERRM;'),
unistr('JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\9519\8BEF'', ''ERROR'', '),
'V_ERR_MSG, :USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'RAISE;',
'END;',
'',
'BEGIN',
'SELECT JA_UTILS_PKG.SUBSTRING_INSTR2(:P139_RANGE_TYPE, '','', LOOP_NUM - 1, LOOP_NUM)',
'INTO V_RANGE_TYPE FROM DUAL;',
'',
unistr('JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\63D0\53D6RANGE_TYPE'', ''DEBUG'', '),
'''RANGE_TYPE='' || V_RANGE_TYPE, ',
':USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'EXCEPTION',
'WHEN OTHERS THEN',
unistr('V_ERR_MSG := ''\63D0\53D6RANGE_TYPE\5931\8D25: '' || SQLERRM;'),
'RAISE;',
'END;',
'',
'BEGIN',
unistr('-- \5148\8BB0\5F55\539F\59CB\53C2\6570'),
unistr('JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\51C6\5907\63D0\53D6RANGE_ID'', ''DEBUG'', '),
unistr('''\539F\59CB\53C2\6570: P139_RANGE_ID='' || :P139_RANGE_ID || '),
''', LOOP_NUM='' || LOOP_NUM || ',
''', start_pos='' || (LOOP_NUM-1) || ',
''', end_pos='' || LOOP_NUM, ',
':USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \63D0\53D6RANGE_ID'),
'SELECT JA_UTILS_PKG.SUBSTRING_INSTR2(:P139_RANGE_ID, '','', LOOP_NUM - 1, LOOP_NUM)',
'INTO V_RANGE_ID FROM DUAL;',
'',
unistr('-- \8BB0\5F55\63D0\53D6\7ED3\679C'),
unistr('JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\63D0\53D6RANGE_ID\7ED3\679C'', ''DEBUG'', '),
'''V_RANGE_ID='' || V_RANGE_ID || ',
unistr(''' (\662F\5426\4E3ANULL: '' || CASE WHEN V_RANGE_ID IS NULL THEN ''\662F'' ELSE ''\5426'' END || '')'', '),
':USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \5982\679CRANGE_ID\4E3A\7A7A\FF0C\5C1D\8BD5\7528\53E6\4E00\79CD\65B9\5F0F\63D0\53D6'),
'IF V_RANGE_ID IS NULL THEN',
'BEGIN',
'SELECT REGEXP_SUBSTR(:P139_RANGE_ID, ''[^,]+'', 1, LOOP_NUM)',
'INTO V_RANGE_ID FROM DUAL;',
'',
unistr('JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\5907\7528\63D0\53D6RANGE_ID'', ''DEBUG'', '),
unistr(' ''\5907\7528\63D0\53D6\7ED3\679C: V_RANGE_ID='' || V_RANGE_ID, '),
' :USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'EXCEPTION',
'WHEN OTHERS THEN',
unistr('JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\5907\7528\63D0\53D6\5931\8D25'', ''WARN'', '),
unistr('     ''\5907\7528\63D0\53D6\4E5F\5931\8D25: '' || SQLERRM, '),
'     :USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'END;',
'END IF;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
unistr('V_ERR_MSG := ''\63D0\53D6RANGE_ID\5931\8D25: '' || SQLERRM;'),
unistr('JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\9519\8BEF'', ''ERROR'', '),
'V_ERR_MSG, :USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'RAISE;',
'END;',
'END LOOP;',
'APEX_UTIL.SET_SESSION_STATE(''P139_ROW_COUNT'', 1);',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(10249504556709239649)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3799073664329213231)
,p_event_id=>wwv_flow_imp.id(3799072024872213215)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pxmu.closeload();',
'if ($v(''P139_ROW_COUNT'') > 0) {',
unistr('    alert(''\4FEE\6539\6210\529F'');'),
'} else {',
unistr('    alert(''\4FEE\6539\5931\8D25'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3799073595998213230)
,p_event_id=>wwv_flow_imp.id(3799072024872213215)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'location.reload()'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3328800591239366882)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5887995091068544472)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6210\5458\6743\9650 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROLE_ID NUMBER(20);',
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''U'' THEN -- IF :PERMISSIONS_TYPE = ''REMOVE'' THEN',
'--             DELETE STS_SCOPE',
'--             WHERE SCOPE_ID = :SCOPE_ID;',
'--             STS_SYNCHRONIZE_ACCOUNTS_DELETE_PRO(:RANGE_TYPE, :RANGE_ID, :MPF_USER_ID, :USER_TENANT,''FILE'',:SCOPE_ID);',
'',
unistr('            IF :PERMISSIONS_TYPE = ''MANAGE'' THEN --\7BA1\7406\6743\9650'),
'                STS_SYNCHRONIZE_ACCOUNTS_PRO(:RANGE_TYPE, :RANGE_ID, :MPF_USER_ID, :USER_TENANT);',
unistr('                --\6587\4EF6\5E93'),
'                UPDATE STS_SCOPE',
'                SET PERMISSIONS_TYPE = :PERMISSIONS_TYPE,',
'                    ROLE_ID=V_ROLE_ID,',
'                    UPDATED_BY       = :MPF_USER_ID,',
'                    UPDATE_DATE      =SYSDATE',
'                WHERE SCOPE_ID = :SCOPE_ID;',
unistr('                --\4E0B\7EA7\6743\9650'),
'                UPDATE STS_SCOPE',
'                SET PERMISSIONS_TYPE = :PERMISSIONS_TYPE,',
'                    ROLE_ID=V_ROLE_ID,',
'                    UPDATED_BY       = :MPF_USER_ID,',
'                    UPDATE_DATE      =SYSDATE',
'                WHERE  REFERENCE_TYPE =''FILE''',
'                    AND REFERENCE_ID IN (SELECT FILE_ID FROM STS_FILE WHERE ROOT_FOLDER_ID =:REFERENCE_ID);',
'            ELSE',
unistr('                --\6587\4EF6\5E93'),
'                UPDATE STS_SCOPE',
'                SET PERMISSIONS_TYPE = :PERMISSIONS_TYPE,',
'                    UPDATED_BY       = :MPF_USER_ID,',
'                    UPDATE_DATE      =SYSDATE',
'                WHERE SCOPE_ID = :SCOPE_ID;',
'                UPDATE STS_SCOPE',
unistr('                --\4E0B\7EA7\6743\9650'),
'                SET PERMISSIONS_TYPE = :PERMISSIONS_TYPE,',
'                    ROLE_ID=V_ROLE_ID,',
'                    UPDATED_BY       = :MPF_USER_ID,',
'                    UPDATE_DATE      =SYSDATE',
'                WHERE  REFERENCE_TYPE =''FILE''',
'                    AND REFERENCE_ID IN (SELECT FILE_ID FROM STS_FILE WHERE ROOT_FOLDER_ID =:REFERENCE_ID);',
'            END IF;',
'        END CASE;',
'END;',
''))
,p_attribute_05=>'N'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(10249504556709239649)
,p_internal_uid=>470207904058241073
);
wwv_flow_imp.component_end;
end;
/
