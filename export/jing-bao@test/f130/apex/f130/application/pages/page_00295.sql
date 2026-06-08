prompt --application/pages/page_00295
begin
--   Manifest
--     PAGE: 00295
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
 p_id=>295
,p_name=>unistr('\53D8\66F4\70B9\914D\7F6E-\7F16\8F91')
,p_alias=>unistr('\53D8\66F4\70B9\914D\7F6E-\7F16\8F91')
,p_step_title=>unistr('\53D8\66F4\70B9\914D\7F6E-\7F16\8F91')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(295040031703985010)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js',
'#WORKSPACE_FILES#static/js/axios.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function fileDownload(url, name) {',
'  return new Promise((resolve, reject) => {',
'    var xhr = new XMLHttpRequest();',
unistr('    xhr.open("GET", url, true); // \4E5F\53EF\4EE5\4F7F\7528POST\65B9\5F0F\FF0C\6839\636E\63A5\53E3'),
unistr('    xhr.responseType = "blob"; // \8FD4\56DE\7C7B\578Bblob'),
unistr('    // \5B9A\4E49\8BF7\6C42\5B8C\6210\7684\5904\7406\51FD\6570\FF0C\8BF7\6C42\524D\4E5F\53EF\4EE5\589E\52A0\52A0\8F7D\6846/\7981\7528\4E0B\8F7D\6309\94AE\903B\8F91'),
'    xhr.onload = function () {',
unistr('      // \8BF7\6C42\5B8C\6210'),
'      if (this.status === 200) {',
unistr('        // \8FD4\56DE200'),
'        var blob = this.response;',
'        var reader = new FileReader();',
unistr('        reader.readAsDataURL(blob); // \8F6C\6362\4E3Abase64\FF0C\53EF\4EE5\76F4\63A5\653E\5165a\8868\60C5href'),
'        reader.onload = function (e) {',
unistr('          // \8F6C\6362\5B8C\6210\FF0C\521B\5EFA\4E00\4E2Aa\6807\7B7E\7528\4E8E\4E0B\8F7D'),
'          var a = document.createElement("a");',
'          a.download = name;',
'          a.href = e.target.result;',
unistr('          $("body").append(a); // \4FEE\590Dfirefox\4E2D\65E0\6CD5\89E6\53D1click'),
'          a.click();',
'          resolve(200)',
'          $(a).remove();',
'        };',
'      }',
'    };',
unistr('    // \53D1\9001ajax\8BF7\6C42'),
'    xhr.send();',
'  })',
'};'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295073188456615374)
,p_plug_name=>unistr('\6570\636E\6E90')
,p_region_name=>'P295_DATA_UPLOAD'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295073298191615375)
,p_plug_name=>unistr('\4E0A\8F7D\6587\4EF6')
,p_parent_plug_id=>wwv_flow_imp.id(295073188456615374)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P295_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295401890799748431)
,p_plug_name=>unistr('\5DF2\52A0\8F7D\6587\4EF6')
,p_parent_plug_id=>wwv_flow_imp.id(295073188456615374)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>20
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P295_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(295403654865748449)
,p_name=>unistr('\9884\89C8')
,p_template=>wwv_flow_imp.id(2359807030908135298)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.line_number,',
'       p.col001',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content           => f.blob_content,',
'                  p_file_name         => f.filename,',
'                  p_xlsx_sheet_name   => case when :P295_XLSX_WORKSHEET is not null then :P295_XLSX_WORKSHEET end,',
'                  p_file_profile      => apex_data_loading.get_file_profile( p_static_id => ''data_upload_test''),',
'                  p_max_rows          => 100 ) ) p',
' where f.name = :P295_FILE',
'',
'-- select p.line_number,',
'--        p.col001, p.col002, p.col003, p.col004, p.col005, p.col006, p.col007, p.col008, p.col009, p.col010',
'--        -- add more columns (col011 to col300) here.',
'--   from apex_application_temp_files f, ',
'--        table( apex_data_parser.parse(',
'--                   p_content           => f.blob_content,',
'--                   p_file_name         => f.filename,',
'--                   p_xlsx_sheet_name   => case when :P295_XLSX_WORKSHEET is not null then :P295_XLSX_WORKSHEET end,',
'--                   p_file_profile      => apex_data_loading.get_file_profile( p_static_id => ''data_upload_test''),',
'--                   p_max_rows          => 100 ) ) p',
'--  where f.name = :P295_FILE'))
,p_display_when_condition=>'P295_FILE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2359829749120135307)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(296970288881848831)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Line Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(296970416966848832)
,p_query_column_id=>2
,p_column_alias=>'COL001'
,p_column_display_sequence=>2
,p_column_heading=>'Col001'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(371101953556574260)
,p_plug_name=>unistr('\6309\94AE\680F')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(2359789034659135292)
,p_plug_display_sequence=>70
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P295_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(539347555162765695)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(539347665379765696)
,p_plug_name=>unistr('\5E38\89C4\53D8\66F4\70B9\914D\7F6E')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ITEM_ID,',
'       CONFIG_ID,',
'    --    NAME,',
unistr('       CASE WHEN IS_SAVE = 0 THEN NAME || ''\FF08'' ||''\672A\4FDD\5B58''||''\FF09'' ELSE NAME END AS NAME,'),
'       DEL_FLAG,',
'       REMARKS,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATED_DATE,',
'       BASE_DEPT_ID,',
'       '''' OPERATOR',
'FROM CHECK_CHANGE_CONFIG_ITEM',
'WHERE DEL_FLAG = 0',
'  AND TENANT_ID = :USERTENANT',
'  AND CONFIG_ID = :P295_CONFIG_ID',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P295_CONFIG_ID'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\5E38\89C4\53D8\66F4\70B9\914D\7F6E')
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
 p_id=>wwv_flow_imp.id(284691475057753975)
,p_name=>'OPERATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:296:&SESSION.::&DEBUG.:296:P296_CONFIG_ID,P296_ITEM_ID:&CONFIG_ID.,&ITEM_ID.'
,p_link_text=>unistr('\4FEE\6539')
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
 p_id=>wwv_flow_imp.id(296970760498848836)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(296970927060848837)
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
 p_id=>wwv_flow_imp.id(539348087464765700)
,p_name=>'ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_ID'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(539348215668765701)
,p_name=>'CONFIG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIG_ID'
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
 p_id=>wwv_flow_imp.id(539348254688765702)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\53D8\66F4\70B9\63CF\8FF0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(561934689385396154)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(561934818288396155)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
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
 p_id=>wwv_flow_imp.id(561934929055396156)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(561934981685396157)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(561935112215396158)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(561935198004396159)
,p_name=>'BASE_DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BASE_DEPT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(561935362426396161)
,p_name=>'DEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL_FLAG'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(539347993049765699)
,p_internal_uid=>319980347620024070
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
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
 p_id=>wwv_flow_imp.id(561940401338396367)
,p_interactive_grid_id=>wwv_flow_imp.id(539347993049765699)
,p_static_id=>'1918484'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(561940590652396368)
,p_report_id=>wwv_flow_imp.id(561940401338396367)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295060958065427454)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(284691475057753975)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297171358391554513)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(296970760498848836)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561941125023396373)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(539348087464765700)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561942015466396380)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(539348215668765701)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561942860904396384)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(539348254688765702)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561944684297396390)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(561934689385396154)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561945545835396393)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(561934818288396155)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561946481851396396)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(561934929055396156)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561947419530396399)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(561934981685396157)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561948300994396403)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(561935112215396158)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561949145344396406)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(561935198004396159)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(561956072906505217)
,p_view_id=>wwv_flow_imp.id(561940590652396368)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(561935362426396161)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(561928777957279767)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2229924551511673703)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(561935762369396165)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>130
,p_plug_grid_column_span=>4
,p_plug_display_column=>4
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295073122951615373)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(371101953556574260)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\6E05\9664')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(296971803099848846)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(561935762369396165)
,p_button_name=>unistr('\8FD4\56DE-2')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\8FD4\56DE-2')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295402514451748437)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(371101953556574260)
,p_button_name=>'LOAD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\52A0\8F7D\6570\636E')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(294759897352218245)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(561935762369396165)
,p_button_name=>unistr('\8FD4\56DE')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(294760737352218245)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(561935762369396165)
,p_button_name=>unistr('\4E0B\4E00\6B65')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\4E00\6B65')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(294760344279218245)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(561935762369396165)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284688880123753949)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(539347665379765696)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284687836184753938)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(539347665379765696)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284687494038753935)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(539347665379765696)
,p_button_name=>unistr('\6A21\677F\4E0B\8F7D')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6A21\677F\4E0B\8F7D')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(284687664399753937)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(539347665379765696)
,p_button_name=>unistr('\6279\91CF\5BFC\5165')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\5BFC\5165')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(284689695004753957)
,p_branch_name=>unistr('\65B0\589E-\8F6C\5230\9875296')
,p_branch_action=>'f?p=&APP_ID.:296:&SESSION.::&DEBUG.:296:P296_CONFIG_ID:&P295_CONFIG_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(284688880123753949)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(284690618928753966)
,p_name=>'P295_ITEM_ID'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295073433425615376)
,p_name=>'P295_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(295073298191615375)
,p_prompt=>unistr('\4E0A\8F7D\6587\4EF6')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_colspan=>10
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'dropzone_description', unistr('\652F\6301\7684\683C\5F0F XLSX'),
  'max_file_size', '5000',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295401781100748430)
,p_name=>'P295_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(295073298191615375)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295401998137748432)
,p_name=>'P295_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(295401890799748431)
,p_prompt=>unistr('\5DF2\52A0\8F7D\6587\4EF6')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295402234256748434)
,p_name=>'P295_XLSX_WORKSHEET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(295401890799748431)
,p_prompt=>unistr('XLSX \5DE5\4F5C\8868')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.sheet_display_name,',
'       p.sheet_file_name',
'  from apex_application_temp_files f,',
'       table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
' where f.name = :P295_FILE'))
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sheet_count number;',
'begin',
'    select count(*)',
'      into l_sheet_count',
'      from apex_application_temp_files f,',
'           table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
'     where f.name = :P295_FILE;',
'    ',
'     -- display if the XSLX file contains multiple worksheets',
'    return ( l_sheet_count > 1 );',
'exception',
'    when others then ',
'        return false;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295402772563748440)
,p_name=>'P295_FLAG'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295402955718748442)
,p_name=>'P295_ERROR'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295403131291748443)
,p_name=>'P295_FILENAME'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295403154543748444)
,p_name=>'P295_HIDDEN'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295405433050748466)
,p_name=>'P295_URL'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(296971252159848841)
,p_name=>'P295_ITEM_COUNT'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(539348689621765698)
,p_name=>'P295_CONFIG_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(539347555162765695)
,p_prompt=>unistr('\53D8\66F4\70B9\7C7B\522B\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(539348847042765699)
,p_name=>'P295_IS_SUPPORT_IMAGE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(539347555162765695)
,p_prompt=>unistr('\56FE\7247\4E0A\4F20\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'IS_SUPPORT_IMAGE'
,p_lov=>'.'||wwv_flow_imp.id(294749604399208085)||'.'
,p_cSize=>30
,p_colspan=>5
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
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
 p_id=>wwv_flow_imp.id(561944591909396168)
,p_name=>'P295_CONFIG_ID'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(561946134212396183)
,p_name=>'P295_COUNT'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(295402075057748433)
,p_computation_sequence=>10
,p_computation_item=>'P295_FILE_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename',
'  from apex_application_temp_files ',
' where name = :P295_FILE'))
,p_compute_when=>'P295_FILE'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(295073501863615377)
,p_validation_name=>'Is valid file type'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_data_parser.assert_file_type(',
'       p_file_name => :P295_FILE_NAME,',
'       p_file_type => apex_data_parser.c_file_type_xlsx )',
'then',
'    return true;',
'else',
'    :P295_FILE := null;',
'    return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\6587\4EF6\7C7B\578B\65E0\6548\3002\652F\6301\7684\6587\4EF6\5927\5C0F\4E3A XLSX\3002')
,p_associated_item=>wwv_flow_imp.id(295073433425615376)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294762530156218246)
,p_name=>unistr('\65B0\589E\65F6\521D\59CB\5316')
,p_event_sequence=>10
,p_condition_element=>'P295_CONFIG_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_required_patch=>wwv_flow_imp.id(2204005795769225463)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284690928142753969)
,p_event_id=>wwv_flow_imp.id(294762530156218246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\663E\793A\4E0B\4E00\6B65\6309\94AE')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(294760737352218245)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294763045133218247)
,p_event_id=>wwv_flow_imp.id(294762530156218246)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\4FDD\5B58\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(294760344279218245)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294763490234218248)
,p_event_id=>wwv_flow_imp.id(294762530156218246)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P295_CONFIG_NAME,P295_IS_SUPPORT_IMAGE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME,IS_SUPPORT_IMAGE FROM CHECK_CHANGE_CONFIG',
'WHERE CONFIG_ID = :P295_CONFIG_ID',
'  AND DEL_FLAG = 0',
'AND TENANT_ID = :USERTENANT;'))
,p_attribute_07=>'P295_CONFIG_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294764530469218248)
,p_event_id=>wwv_flow_imp.id(294762530156218246)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\56E0\6B64\4E0B\4E00\6B65\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(294760737352218245)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294764008049218248)
,p_event_id=>wwv_flow_imp.id(294762530156218246)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\53D8\66F4\70B9\914D\7F6E\533A\57DF')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(539347665379765696)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295198285403634730)
,p_event_id=>wwv_flow_imp.id(294762530156218246)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\663E\793A\4FDD\5B58\6309\94AE')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(294760344279218245)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284690981018753970)
,p_event_id=>wwv_flow_imp.id(294762530156218246)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\663E\793A\53D8\66F4\70B9\914D\7F6E\533A\57DF')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(539347665379765696)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(294764943896218248)
,p_name=>unistr('\6267\884C\4E0B\4E00\6B65')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(294760737352218245)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294765395233218248)
,p_event_id=>wwv_flow_imp.id(294764943896218248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P295_CONFIG_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\53D8\66F4\70B9\7C7B\522B'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P295_IS_SUPPORT_IMAGE''))) {',
unistr('    alert(''\8BF7\9009\62E9\662F\5426\652F\6301\56FE\7247\4E0A\4F20'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294765903467218249)
,p_event_id=>wwv_flow_imp.id(294764943896218248)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CONFIG_ID NUMBER(10);',
'    V_ERR_MSG   VARCHAR2(1000);',
unistr('    V_COUNT     NUMBER(10); --\6821\9A8C\662F\5426\6709\91CD\590D\53D8\66F4\7C7B\578B'),
'    /**',
' * CREATE BY: WXX',
' * CREATE DATE:2024/8/14   14:53',
' * MODIFY BY:WXX',
' * MODIFY DATE:2024/8/19 15:56',
unistr(' * DESCRIBE:P295 \4E0B\4E00\6B65  \6821\9A8C\662F\5426\6709\91CD\590D\53D8\66F4\7C7B\578B'),
' */',
'BEGIN',
unistr('    --     \6821\9A8C\662F\5426\6709\91CD\590D\53D8\66F4\7C7B\578B'),
'    SELECT COUNT(1)',
'    INTO V_COUNT',
'    FROM CHECK_CHANGE_CONFIG',
'    WHERE NAME = :P295_CONFIG_NAME',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID',
'      AND IS_SAVE = 1;',
'',
unistr('    IF V_COUNT = 0 THEN --\6CA1\6709\91CD\590D'),
unistr('    -- \65B0\589E'),
'        INSERT INTO CHECK_CHANGE_CONFIG(TENANT_ID,',
'                                        NAME,',
'                                        IS_SUPPORT_IMAGE,',
'                                        DEL_FLAG,',
'                                        CREATED_BY,',
'                                        CREATION_DATE,',
'                                        BASE_DEPT_ID,',
'                                        IS_SAVE)',
'        VALUES (:USERTENANT, :P295_CONFIG_NAME, :P295_IS_SUPPORT_IMAGE, 0, :USER_ID, SYSDATE, :BASE_DEPT_ID,0)',
'        RETURN CONFIG_ID INTO V_CONFIG_ID;',
'        APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', 1);',
'        APEX_UTIL.SET_SESSION_STATE(''P295_CONFIG_ID'', V_CONFIG_ID);',
'        COMMIT;',
unistr('    ELSE --\91CD\590D\4E86'),
'        APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', -2);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\65B0\589E\914D\7F6E'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                  :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'END;'))
,p_attribute_02=>'P295_CONFIG_NAME,P295_IS_SUPPORT_IMAGE'
,p_attribute_03=>'P295_COUNT,P295_CONFIG_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294766376209218249)
,p_event_id=>wwv_flow_imp.id(294764943896218248)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P295_COUNT'') == -1) {',
unistr('    alert(''\6570\636E\9519\8BEF'');'),
'    return false;',
'} ',
'if ($v(''P295_COUNT'') == -2) {',
unistr('    alert(''\5217\8868\5B58\5728\76F8\540C\53D8\66F4\70B9\7C7B\522B\540D\79F0\FF0C\8BF7\91CD\65B0\8C03\6574\540E\4FDD\5B58\FF01'');'),
'    return false;',
'} '))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294766932482218249)
,p_event_id=>wwv_flow_imp.id(294764943896218248)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(294760344279218245)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294767419551218249)
,p_event_id=>wwv_flow_imp.id(294764943896218248)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(539347665379765696)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(294767894274218250)
,p_event_id=>wwv_flow_imp.id(294764943896218248)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(294760737352218245)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284688158663753942)
,p_name=>unistr('\6267\884C\4FDD\5B58')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(294760344279218245)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284688296508753943)
,p_event_id=>wwv_flow_imp.id(284688158663753942)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P295_CONFIG_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\53D8\66F4\70B9\7C7B\522B'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P295_IS_SUPPORT_IMAGE''))) {',
unistr('    alert(''\8BF7\9009\62E9\662F\5426\652F\6301\56FE\7247\4E0A\4F20'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296971392217848842)
,p_event_id=>wwv_flow_imp.id(284688158663753942)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\67E5\770B\6709\65E0\53D8\66F4\70B9\914D\7F6E\9879')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_COUNT NUMBER(10);--\8BB0\5F55\914D\7F6E\9879\4E0B\6709\65E0\6570\636E'),
'BEGIN',
'',
'SELECT COUNT(ITEM_ID)',
'    INTO V_COUNT',
'FROM CHECK_CHANGE_CONFIG_ITEM',
'WHERE CONFIG_ID = :P295_CONFIG_ID',
'--   AND IS_SAVE = 1',
'  AND DEL_FLAG = 0',
'AND TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P295_ITEM_COUNT'', V_COUNT);',
'',
'END;',
''))
,p_attribute_02=>'P295_CONFIG_ID'
,p_attribute_03=>'P295_ITEM_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296971472738848843)
,p_event_id=>wwv_flow_imp.id(284688158663753942)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65E0\5B50\9879\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P295_ITEM_COUNT'')>0){',
'    return true;',
'}else{',
unistr('    alert(''\8BF7\914D\7F6E\597D\5E38\89C4\53D8\66F4\70B9\540E\4FDD\5B58\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284691729133753977)
,p_event_id=>wwv_flow_imp.id(284688158663753942)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG   VARCHAR2(1000);',
'    V_ROW_COUNT NUMBER(10);',
unistr('    V_COUNT     NUMBER(10);--\6821\9A8C\662F\5426\6709\91CD\590D\53D8\66F4\7C7B\578B'),
'    /**',
'* CREATE BY: WXX',
'* CREATE DATE:2024/8/15 10:15',
'* MODIFY BY:WXX',
'* MODIFY DATE:2024/8/19 16:05  ',
unistr('* DESCRIBE:P295 \4FDD\5B58  \6821\9A8C\662F\5426\6709\91CD\590D\53D8\66F4\7C7B\578B'),
'*/',
'BEGIN',
unistr('  --     \6821\9A8C\662F\5426\6709\91CD\590D\53D8\66F4\7C7B\578B'),
'    SELECT COUNT(1)',
'    INTO V_COUNT',
'    FROM CHECK_CHANGE_CONFIG',
'    WHERE NAME = :P295_CONFIG_NAME',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID',
'      AND IS_SAVE = 1',
'      AND CONFIG_ID <> :P295_CONFIG_ID;',
'',
unistr('    IF V_COUNT < 1 THEN --\6CA1\6709\91CD\590D'),
'        UPDATE CHECK_CHANGE_CONFIG',
'        SET NAME             = :P295_CONFIG_NAME,',
'            IS_SUPPORT_IMAGE = :P295_IS_SUPPORT_IMAGE,',
'            IS_SAVE          = 1,',
'            UPDATED_BY       = :USER_ID,',
'            UPDATED_DATE     = SYSDATE',
'        WHERE CONFIG_ID = :P295_CONFIG_ID;',
'',
'        UPDATE CHECK_CHANGE_CONFIG_ITEM',
'        SET IS_SAVE          = 1,',
'            UPDATED_BY       = :USER_ID,',
'            UPDATED_DATE     = SYSDATE',
'        WHERE CONFIG_ID = :P295_CONFIG_ID;',
'',
'        V_ROW_COUNT := SQL%ROWCOUNT;',
'        APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', V_ROW_COUNT);',
'        COMMIT;',
unistr('    ELSE --\91CD\590D\4E86'),
'        APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', -2);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\914D\7F6E'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                   :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'END',
';'))
,p_attribute_02=>'P295_CONFIG_ID,P295_CONFIG_NAME,P295_IS_SUPPORT_IMAGE'
,p_attribute_03=>'P295_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284691753393753978)
,p_event_id=>wwv_flow_imp.id(284688158663753942)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P295_COUNT'')>0){',
unistr('    alert(''\4FDD\5B58\6210\529F'');'),
'}else if ($v(''P295_COUNT'')== -1){',
unistr('    alert(''\4FDD\5B58\5931\8D25'');'),
'    return false;',
'}else if ($v(''P295_COUNT'')== -2){',
unistr('    alert(''\5217\8868\5B58\5728\76F8\540C\53D8\66F4\70B9\7C7B\522B\540D\79F0\FF0C\8BF7\91CD\65B0\8C03\6574\540E\4FDD\5B58\FF01'');'),
'    return false;',
'}',
'',
'// if ($v(''P295_COUNT'')>0){',
unistr('//     alert(''\4FDD\5B58\6210\529F'');'),
'// }else {',
unistr('//     alert(''\4FDD\5B58\5931\8D25'');'),
'//     return false;',
'// }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284691873728753979)
,p_event_id=>wwv_flow_imp.id(284688158663753942)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href="f?p=&APP_ID.:294:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284691127416753971)
,p_name=>unistr('\5237\65B0\5185\5BB9')
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284691212730753972)
,p_event_id=>wwv_flow_imp.id(284691127416753971)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(539347665379765696)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(284691251598753973)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(539347665379765696)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(284691418131753974)
,p_event_id=>wwv_flow_imp.id(284691251598753973)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'map.set(''P295_ITEM_ID'',''ITEM_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295072182176615364)
,p_name=>unistr('\6A21\677F\4E0B\8F7D')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(284687494038753935)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295072252812615365)
,p_event_id=>wwv_flow_imp.id(295072182176615364)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#a_file'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295073552034615378)
,p_name=>unistr('\4E0A\8F7D\6587\4EF6')
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P295_FILE'
,p_condition_element=>'P295_FILE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295073670869615379)
,p_event_id=>wwv_flow_imp.id(295073552034615378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295402326008748435)
,p_name=>'Submit worksheet on change'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P295_XLSX_WORKSHEET'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295402420120748436)
,p_event_id=>wwv_flow_imp.id(295402326008748435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295402582754748438)
,p_name=>unistr('\5BFC\5165\6570\636E')
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(295402514451748437)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295402697784748439)
,p_event_id=>wwv_flow_imp.id(295402582754748438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ERROR_DATE VARCHAR2(1024);',
'    table_status VARCHAR2(20);',
'    /**',
'* CREATE BY: WXX',
'* CREATE DATE: 2024/8/15 19:19',
'* MODIFY BY:WXX',
'* MODIFY DATE:2024/8/19 11:05',
unistr('* DESCRIPTION:P295 \5BFC\5165\6570\636E'),
'*/',
'',
'BEGIN',
'    FOR ITEM IN (SELECT P.LINE_NUMBER, P.COL001',
'                 FROM APEX_APPLICATION_TEMP_FILES F,',
'                      TABLE ( APEX_DATA_PARSER.PARSE(',
'                              P_CONTENT => F.BLOB_CONTENT,',
'                              P_FILE_NAME => F.FILENAME,',
'                              P_XLSX_SHEET_NAME => CASE WHEN :P295_XLSX_WORKSHEET IS NOT NULL THEN :P295_XLSX_WORKSHEET END,',
'                              P_SKIP_ROWS => 1,',
'                              P_MAX_ROWS => 10000) ) P',
'                 WHERE F.NAME = :P295_FILE)  LOOP',
unistr('            --   WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\66F4\65B0'', ''ERROR'', ''CICICICI'', :USER_ID, :USERTENANT,'),
'            --         :APP_NAME ,:APP_ID ,:APP_CODE);',
unistr('            ERROR_DATE := ''\9519\8BEF\6570\636E\FF1A'' || TRIM(ITEM.COL001);'),
'            MERGE INTO CHECK_CHANGE_CONFIG_ITEM A',
'            USING (SELECT TRIM(ITEM.COL001) FNAME,',
'                          :P295_CONFIG_ID   CONFIG_ID,',
'                          :USERTENANT       TENANT_ID,',
'                          :BASE_DEPT_ID     BASE_DEPT_ID,',
'                          :USER_ID          CREATED_BY,',
'                          :USER_ID          UPDATED_BY',
'                   FROM DUAL) B',
'            ON (A.NAME = B.FNAME AND A.CONFIG_ID = B.CONFIG_ID AND A.TENANT_ID = B.TENANT_ID AND',
'                A.BASE_DEPT_ID = B.BASE_DEPT_ID AND A.DEL_FLAG = 0) ',
'            WHEN NOT MATCHED THEN',
'                INSERT (A.NAME, A.CONFIG_ID, A.TENANT_ID, A.DEL_FLAG, A.BASE_DEPT_ID, A.CREATED_BY, A.UPDATED_BY,',
'                        A.CREATION_DATE)',
'                VALUES (B.FNAME, B.CONFIG_ID, B.TENANT_ID, 0, B.BASE_DEPT_ID, B.CREATED_BY, B.UPDATED_BY, SYSDATE);',
'',
'    END LOOP;',
'     APEX_UTIL.SET_SESSION_STATE(''P295_FLAG'', 0);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        rollback;',
'        if instr(sqlerrm, ''ORA-20987'') > 0 then',
unistr('        -- \6570\636E\4E0D\80FD\4E3A\7A7A'),
'          APEX_UTIL.SET_SESSION_STATE(''P295_FLAG'', 2);',
'        else',
'          APEX_UTIL.SET_SESSION_STATE(''P295_FLAG'', 3);',
'        end if;',
'',
'END;',
'     APEX_UTIL.SET_SESSION_STATE(''P295_ERROR_ROW_COUNT'',0);',
''))
,p_attribute_02=>'P295_FLAG,P295_XLSX_WORKSHEET,P295_CONFIG_ID'
,p_attribute_03=>'P295_FLAG,P295_ERROR_ROW_COUNT,P295_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295403521220748447)
,p_event_id=>wwv_flow_imp.id(295402582754748438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var err_flg = $v(''P295_FLAG'');',
'// console.log(err_flg);',
'if (err_flg == 2){',
unistr('    alert(''\7A7A\6570\636E,\8BF7\91CD\65B0\5BFC\5165'');'),
'    return false;',
'}',
'else if (err_flg == 3){',
unistr('    alert(''\51FA\73B0\672A\77E5\5F02\5E38\FF0C\6570\636E\63D2\5165\5931\8D25\FF01\8BF7\68C0\67E5\540E\518D\5BFC\5165\005Cn''+$v(''P295_ERROR''));'),
'    return false;',
'}',
'else if (err_flg == 0){',
'    return true;',
'}',
'else {',
'    return false;',
'};',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(300262926058807233)
,p_event_id=>wwv_flow_imp.id(295402582754748438)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295404980567748462)
,p_name=>unistr('\83B7\53D6\6587\4EF6URL')
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295405085750748463)
,p_event_id=>wwv_flow_imp.id(295404980567748462)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P295_DATA_UPLOAD").parent(''div'').parent(''div'').hide();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295405199459748464)
,p_event_id=>wwv_flow_imp.id(295404980567748462)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\70B9\53D8\66F4\70B9\7BA1\7406'',295,''\53D8\66F4\70B9\63CF\8FF0\6279\91CF\5BFC\5165'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295405314365748465)
,p_event_id=>wwv_flow_imp.id(295404980567748462)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FILE VARCHAR2(128);',
'  V_URL  VARCHAR2(256);',
'BEGIN',
'  SELECT FILE_NAME,FILE_URL',
'  INTO V_FILE,V_URL',
'    FROM APEX_UPLOAD_FILE_CONFIG',
unistr('   WHERE FILE_NAME = ''\53D8\66F4\70B9\63CF\8FF0\5BFC\5165\6A21\677F'';'),
'  apex_util.set_session_state(''P295_FILENAME'', V_FILE);',
'  apex_util.set_session_state(''P295_URL'', V_URL);',
'END;'))
,p_attribute_02=>'P295_FILENAME,P295_URL'
,p_attribute_03=>'P295_FILENAME,P295_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295405462685748467)
,p_event_id=>wwv_flow_imp.id(295404980567748462)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fileName = $v(''P295_FILENAME'');',
'var url = $v(''P295_URL'');',
unistr('var a = `<a href="javascript:void(0)" style="display:none" id="a_file" onclick="fileDownload(''${url}'',''${fileName }'')">\4E0B\8F7D\6587\4EF6</a>`;'),
'$("body").append(a);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295405604028748468)
,p_name=>unistr('\52A8\6001\9690\85CF')
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(284687664399753937)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295405709841748469)
,p_event_id=>wwv_flow_imp.id(295405604028748468)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var flag = $v(''P295_HIDDEN'');',
'// console.log(flag);',
'if (flag == 0){',
'    $("#P295_DATA_UPLOAD").parent(''div'').parent(''div'').show();',
'',
'} else{',
'    $("#P295_DATA_UPLOAD").parent(''div'').parent(''div'').hide();',
'};',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295405816708748470)
,p_event_id=>wwv_flow_imp.id(295405604028748468)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P295_HIDDEN = 0 then',
'        :P295_HIDDEN := 1;',
'    else',
'        :P295_HIDDEN := 0;',
'    end if;',
'end;'))
,p_attribute_02=>'P295_HIDDEN'
,p_attribute_03=>'P295_HIDDEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(295405937202748471)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(284687836184753938)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P295_ITEM_ID''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295405983795748472)
,p_event_id=>wwv_flow_imp.id(295405937202748471)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('return confirm(''\5220\9664\5F53\524D\5185\5BB9\4F1A\5B58\5728\6570\636E\4E22\5931\FF0C\662F\5426\786E\5B9A\5220\9664?'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295406414510748476)
,p_event_id=>wwv_flow_imp.id(295405937202748471)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295406139784748473)
,p_event_id=>wwv_flow_imp.id(295405937202748471)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG VARCHAR2(1000);',
'              /**',
'     * CREATE BY: WXX',
'     * CREATE DATE: 2024/8/15 20:10',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIPTION:P295 \5220\9664\6570\636E'),
'     */',
'BEGIN',
'    UPDATE CHECK_CHANGE_CONFIG_ITEM',
'    SET UPDATED_BY   =:USER_ID,',
'        UPDATED_DATE =SYSDATE,',
'        DEL_FLAG = 1',
'    WHERE ITEM_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P295_ITEM_ID, '',''))',
'      AND DEL_FLAG = 0;',
'    APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5220\9664\53D8\66F4\70B9\63CF\8FF0'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'END;'))
,p_attribute_02=>'P295_ITEM_ID'
,p_attribute_03=>'P295_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295406217127748474)
,p_event_id=>wwv_flow_imp.id(295405937202748471)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P295_COUNT'') < 0) {',
unistr('    alert(''\5220\9664\5931\8D25'');'),
'    return false;',
'} else{',
unistr('     alert(''\5220\9664\6210\529F'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(295406305428748475)
,p_event_id=>wwv_flow_imp.id(295405937202748471)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(539347665379765696)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(296971912020848847)
,p_name=>unistr('\6821\9A8C\662F\5426\6709\672A\4FDD\5B58\7684\6570\636E')
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(294759897352218245)
,p_condition_element=>'P295_CONFIG_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296971946205848848)
,p_event_id=>wwv_flow_imp.id(296971912020848847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\67E5\770B\6709\65E0\672A\4FDD\5B58\7684\53D8\66F4\70B9\914D\7F6E\9879')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ITEM_COUNT NUMBER(10);--\8BB0\5F55\914D\7F6E\9879\4E0B\6709\65E0\672A\4FDD\5B58\6570\636E'),
unistr('    V_COUNT      NUMBER(10);--\8BB0\5F55\914D\7F6E\9879\4E0B\6709\65E0\6570\636E'),
'    V_ERR_MSG    NVARCHAR2(2000);',
'BEGIN',
'    SELECT COUNT(ITEM_ID)',
unistr('    INTO V_ITEM_COUNT --\672A\4FDD\5B58\6570\636E'),
'    FROM CHECK_CHANGE_CONFIG_ITEM',
'    WHERE CONFIG_ID = :P295_CONFIG_ID',
'      AND IS_SAVE = 0',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
'    SELECT COUNT(ITEM_ID)',
unistr('    INTO V_COUNT --\6709\65E0\5B50\6570\636E'),
'    FROM CHECK_CHANGE_CONFIG_ITEM',
'    WHERE CONFIG_ID = :P295_CONFIG_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P295_ITEM_COUNT'', V_ITEM_COUNT);',
'    APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', V_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\53D8\66F4\70B9\9879\9000\51FA\5224\65AD'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P295_CONFIG_ID'
,p_attribute_03=>'P295_COUNT,P295_ITEM_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(299098753730151539)
,p_event_id=>wwv_flow_imp.id(296971912020848847)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href="f?p=&APP_ID.:294:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296972070875848849)
,p_event_id=>wwv_flow_imp.id(296971912020848847)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65E0\4FDD\5B58\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P295_COUNT'') != 0 && $v(''P295_ITEM_COUNT'') < 1 ){  ',
'    window.location.href="f?p=&APP_ID.:294:&APP_SESSION.:::::";',
'    return true;',
'}else{',
unistr('    alert(''\8FD8\6709\672A\4FDD\5B58\7684\914D\7F6E\9879/\8FD8\672A\914D\7F6E\597D\5BF9\5E94\7684\914D\7F6E\9879\FF0C\8BF7\4FDD\5B58\540E\9000\51FA\FF01'');'),
'    return false;',
'}',
'',
unistr('// V_ITEM_COUNT   P295_ITEM_COUNT;--\8BB0\5F55\914D\7F6E\9879\4E0B\6709\65E0\672A\4FDD\5B58\6570\636E'),
unistr('// V_COUNT        P295_COUNT;--\8BB0\5F55\914D\7F6E\9879\4E0B\6709\65E0\6570\636E')))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(296972244421848850)
,p_name=>unistr('\9000\51FA\540E\5220\9664\672A\4FDD\5B58\6570\636E')
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(296971803099848846)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296972376876848852)
,p_event_id=>wwv_flow_imp.id(296972244421848850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG   NVARCHAR2(2000);',
'BEGIN',
unistr('--     \7269\7406\5220\9664'),
'--   DELETE FROM CHECK_CHANGE_CONFIG',
'--     WHERE CONFIG_ID = :P295_CONFIG_ID',
'--     AND IS_SAVE = 0;',
'',
unistr('-- \903B\8F91\5220\9664'),
'UPDATE CHECK_CHANGE_CONFIG_ITEM',
'SET DEL_FLAG     = 1,',
'    UPDATED_BY   = :USER_ID,',
'    UPDATED_DATE = SYSDATE',
'WHERE CONFIG_ID = :P295_CONFIG_ID',
'  AND IS_SAVE = 0;',
'  ',
'  COMMIT;',
'EXCEPTION',
' WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P295_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\53D8\66F4\70B9\9879-\9000\51FA'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                   :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;',
''))
,p_attribute_02=>'P295_CONFIG_ID'
,p_attribute_03=>'P295_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296972298297848851)
,p_event_id=>wwv_flow_imp.id(296972244421848850)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href="f?p=&APP_ID.:294:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(296459538962988432)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\6E05\9664\9AD8\901F\7F13\5B58')
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P295_FILE,P295_ERROR_ROW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
':REQUEST = ''CLEAR'' ',
'or :P295_ERROR_ROW_COUNT = 0'))
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>77091893533246803
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(296970966752848838)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(539347665379765696)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\5E38\89C4\53D8\66F4\70B9\914D\7F6E - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>77603321323107209
);
wwv_flow_imp.component_end;
end;
/
