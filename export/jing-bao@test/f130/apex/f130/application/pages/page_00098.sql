prompt --application/pages/page_00098
begin
--   Manifest
--     PAGE: 00098
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
 p_id=>98
,p_name=>unistr('\6676\8C79\4E8B\4EF6\8BE6\60C5')
,p_alias=>unistr('\6676\8C79\4E8B\4EF6\8BE6\60C5')
,p_step_title=>unistr('\6676\8C79\4E8B\4EF6\8BE6\60C5')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'p {',
'            margin: 0;',
'            padding: 0;',
'',
'        }',
'',
'        ol {',
'            margin: 0;',
'            padding: 0;',
'        }',
'',
'        li {',
'            list-style: none;',
'        }',
'',
'        .view {',
'            padding-bottom: 10px;',
'        }',
'',
'        .my-title {',
'            font-size: 16px;',
'            font-weight: 500;',
'        }',
'',
'        .row {',
'            margin: 0;',
'            border-bottom: 1px solid #ccc;',
'        }',
'    ',
'',
'        .gap {',
'            margin-left: 18px;',
'        }',
'',
'        .cell {',
'            min-height: 30px;',
'            padding: 15px 0px;',
'        }',
'',
'        .cell-title {',
'            margin: 0;',
'            font-size: 15px;',
'            font-weight: 400;',
'            margin-right: 25px;',
'        }',
'',
'        .cell-value {',
'            display: flex;',
'            align-items: center;',
'        }',
'',
'        .avarter {',
'            width: 50px;',
'            height: 50px;',
'            margin-right: 10px;',
'            border-radius: 50%;',
'        }',
'',
'        .cell-content {',
'            display: flex;',
'            align-items: center;',
'        }',
'',
'        .dept {',
'            font-size: 14px;',
'            color: #666666;',
'        }',
'',
'        .cell-span {',
'            font-size: 12px;',
'            color: #666666;',
'        }',
'',
'        .brg {',
'            font-size: 13px;',
'            padding-left: 18px;',
'            line-height: 40px;',
'            height: 40px;',
'            background: #f6f6f6;',
'            color: rgba(25, 31, 37, 0.4);',
'        }',
'',
'        .nav {',
'            height: 30px;',
'        }',
'',
'        .nav ol {',
'            display: flex;',
'            align-items: center;',
'        }',
'',
'        .nav .item {',
'            height: 30px;',
'            line-height: 30px;',
'            margin-right: 15px;',
'            font-size: 14px;',
'        }',
'',
'        .nav .item.active {',
'            border-bottom: 2px solid #409EFF;',
'            color: #409EFF;',
'        }',
'',
'        .log-list {',
'            text-align: center;',
'            color: #2c3e50;',
'            font-size: 15px;',
'            box-sizing: border-box;',
'            margin-left: 24px;',
'        }',
'',
'        .log-info {',
'            text-align: left;',
'            color: #2c3e50;',
'            box-sizing: border-box;',
'            padding: 5px;',
'            border-bottom: 0.01rem solid #ebebeb;',
'            display: flex;',
'            justify-content: space-between;',
'            align-items: center;',
'        }',
'',
'        .log-one-side {',
'            flex-grow: 1;',
'        }',
'',
'        .log-left {',
'            white-space: nowrap;',
'            color: #999999;',
'        }',
'',
'        .dept-name {',
'            color: #303133;',
'            cursor: pointer;',
'            border-bottom: 1px solid #EBEEF5;',
'            font-size: 13px;',
'            font-weight: 500;',
'            margin-left: 18px;',
'            line-height: 30px;',
'        }',
'',
'        .user-item {',
'            height: 65px;',
'            padding-left: 20px;',
'             display: flex;',
'            justify-content: space-between;',
'            align-items: center;',
'        }',
'',
'        .user-item::after,.user-item::before {',
'           display: none;',
'        }',
'',
'        .user-info {',
'            display: flex;',
'            align-items: center;',
'        }',
'',
'        .tag {',
'            text-align: center;',
'            display: inline-block;',
'            font-size: 12px;',
'            border-width: 1px;',
'            border-style: solid;',
'            border-radius: 4px;',
'            box-sizing: border-box;',
'            white-space: nowrap;',
'            height: 20px;',
'            padding: 0 5px;',
'            line-height: 19px;',
'            background-color: #fff;',
'            border-color: #fbc4c4;',
'            color: #f56c6c;',
'            margin-left: 10px;',
'        }',
'',
'        .wait_resolve {',
'            color: #0099ff;',
'        }'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2172214280314563919)
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
 p_id=>wwv_flow_imp.id(2259807819040994339)
,p_plug_name=>unistr('\4E8B\4EF6\8BE6\60C5')
,p_region_name=>'html_content'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2259807867694994340)
,p_plug_name=>unistr('\67E5\8BE2')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2260248888018712267)
,p_plug_name=>unistr('\6676\8C79\4E8B\4EF6\8BE6\60C5')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.EVENT_ID,',
'B.ext_org_name,',
'B.NAME,',
'(CASE ',
unistr('  WHEN A.AFFECTED_RANGE = ''CURRENT_SEAT'' THEN ''\5F53\524D\5C97\4F4D'''),
unistr('    WHEN A.AFFECTED_RANGE = ''CURRENT_LINE'' THEN ''\5F53\524D\7EBF\522B'''),
unistr('      WHEN A.AFFECTED_RANGE = ''ALL_SAME_SEAT'' THEN ''\8DE8\7EBF\540C\5C97'''),
unistr('        WHEN A.AFFECTED_RANGE = ''ALL_LINES'' THEN ''\6240\6709\4EA7\7EBF'''),
'          end) AFFECTED_RANGE,',
'          A.DESCRIPTION,',
'(CASE ',
unistr('  WHEN A.WORK_TYPE=''DAY_SHIFT'' THEN ''\767D\73ED'''),
unistr('     WHEN A.WORK_TYPE = ''NIGHT_SHIFT'' THEN ''\665A\73ED'''),
'       END ) WORK_TYPE,',
' (CASE ',
unistr('    WHEN A.STATUS = ''RESOLVED'' THEN ''\5DF2\89E3\51B3'''),
unistr('      WHEN A.STATUS = ''CLOSED'' THEN ''\5DF2\5173\95ED'''),
unistr('        ELSE ''\5F85\89E3\51B3'' END)  STATUS,'),
'          C.NAME FIRST_CAREGORY,',
'          D.NAME SECOND_CAREGORY,',
'          E.NAME DETAIL_CAREGORY,',
'          A.START_FOLLOW_TIME,',
'          A.END_TIME ',
' from tenant_event A ',
'LEFT JOIN TENANT_EXT_USERS_ORG_ASSO_V B ON A.SUBMIT_USER_ID = b.ext_user_id',
'LEFT JOIN TENANT_EVENT_CATEGORY C ON A.FIRST_EVENT_CODE = C.CODE ',
'LEFT JOIN TENANT_EVENT_CATEGORY D ON A.SECOND_EVENT_CODE = D.CODE',
'LEFT JOIN TENANT_EVENT_PHENOMENON E ON A.PHENOMENON_CODE = E.CODE',
'WHERE A.tenant_id = :USERTENANT',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\6676\8C79\4E8B\4EF6\8BE6\60C5')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2166726447822354542)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(2260251157858712276)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\4E8B\4EF6\7F16\53F7')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>20
,p_value_alignment=>'RIGHT'
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
,p_is_primary_key=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2260252169094712277)
,p_name=>'EXT_ORG_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\90E8\95E8')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(2260254202774712278)
,p_name=>'AFFECTED_RANGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AFFECTED_RANGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5F71\54CD\8303\56F4')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2260255167982712278)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\95EE\9898\63CF\8FF0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>600
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
 p_id=>wwv_flow_imp.id(2260256148336712279)
,p_name=>'WORK_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\73ED\522B')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>6
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
 p_id=>wwv_flow_imp.id(2260257210767712280)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E8B\4EF6\72B6\6001')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>9
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
 p_id=>wwv_flow_imp.id(2260258187060712280)
,p_name=>'FIRST_CAREGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_CAREGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\5927\7C7B')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(2260259140353712281)
,p_name=>'SECOND_CAREGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SECOND_CAREGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\5C0F\7C7B')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(2260260178228712281)
,p_name=>'DETAIL_CAREGORY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAIL_CAREGORY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\73B0\8C61')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(2260261145238712282)
,p_name=>'START_FOLLOW_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_FOLLOW_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>unistr('\4E8B\4EF6\8DDF\8FDB\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_max_length=>64
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(2260262168533712282)
,p_name=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_TIME'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER'
,p_heading=>unistr('\4E8B\4EF6\5173\95ED\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'button',
  'show_other_months', 'N')).to_clob
,p_is_required=>false
,p_max_length=>64
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(2260249359090712269)
,p_internal_uid=>96963431267541358
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
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
'    var paginationSettings = {',
'            showRange: true,',
'            showPageSelector: true,',
'            showPageLinks: false,',
'// uncomment to hide the first and last buttons',
'//            firstAndLastButtons: false',
'        };',
'',
'    config.defaultGridViewOptions = {',
'        rowHeader: "sequence",',
'        pagination: paginationSettings',
'    };',
'    config.defaultIconViewOptions = {',
'        collectionClasses: "t-Cards t-Cards--compact t-Cards--displayIcons u-colors t-Cards--desc-2ln",',
'        pagination: paginationSettings',
'    };',
'    config.defaultDetailViewOptions = {',
'        pagination: paginationSettings',
'    }',
'    return config; // don''t forget to return this!',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2260249778921712271)
,p_interactive_grid_id=>wwv_flow_imp.id(2260249359090712269)
,p_static_id=>'969639'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2260249931592712272)
,p_report_id=>wwv_flow_imp.id(2260249778921712271)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2166819755856760097)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2166726447822354542)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260251610662712276)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2260251157858712276)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260252610903712277)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2260252169094712277)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260254610119712278)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2260254202774712278)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260255574253712279)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2260255167982712278)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260256607569712279)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2260256148336712279)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260257538497712280)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2260257210767712280)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260258578525712280)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2260258187060712280)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260259603862712281)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2260259140353712281)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260260587835712281)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2260260178228712281)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260261551568712282)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2260261145238712282)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2260262610651712282)
,p_view_id=>wwv_flow_imp.id(2260249931592712272)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2260262168533712282)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2166511340564121524)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2259807867694994340)
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2259807972719994341)
,p_name=>'P98_BEGIN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2259807867694994340)
,p_prompt=>unistr('\5F00\59CB\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2259808064080994342)
,p_name=>'P98_END'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2259807867694994340)
,p_prompt=>unistr('\622A\6B62\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166265621969855844)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166265688299855845)
,p_event_id=>wwv_flow_imp.id(2166265621969855844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',98,''\6676\8C79\4E8B\4EF6\8BE6\60C5'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166511488978121525)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2260248888018712267)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166511608934121526)
,p_event_id=>wwv_flow_imp.id(2166511488978121525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, selectedIds = "",',
'    model = this.data.model;',
'for (i = 0; i < this.data.selectedRecords.length; i++) {',
'    selectedIds = model.getValue(this.data.selectedRecords[i], "EVENT_ID");',
'}',
'console.log("eventId: " + selectedIds);',
'apex.server.process(''EVENT_DETAIL'',',
'    { x01: selectedIds },  // Parameter to be passed to the server',
'    {',
'        success: function (pData) {             // Success',
'           ',
' apex.item(''html_content'').setValue(pData);',
'            ',
'',
'        },',
'        error: function (e) {',
'            console.log("Error: ", e);',
'            apex.item(''html_content'').setValue(e);',
'        },',
'        dataType: "text"                        // Response type',
'    }',
');'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2166511156689121522)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EVENT_DETAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    v_clob CLOB;',
'  ',
'    BEGIN',
'    --   apex_json.initialize_clob_output;',
'    --   apex_json.open_object;',
'      v_clob := APEX_EVENT_DETAIL_FUN(apex_application.g_x01);',
'  ',
'      htp.prn( v_clob);',
'',
'    --   apex_json.write(''HTML'' , v_clob);',
'    --   apex_json.write(''code'' , ''200'');',
'   ',
'    --   apex_json.close_all;',
'      ',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>40948016118336666
);
wwv_flow_imp.component_end;
end;
/
