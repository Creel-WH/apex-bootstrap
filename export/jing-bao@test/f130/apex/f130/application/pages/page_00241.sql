prompt --application/pages/page_00241
begin
--   Manifest
--     PAGE: 00241
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
 p_id=>241
,p_name=>unistr('\6676\7801\8BBE\5907\5BFC\5165-\8868\5355')
,p_alias=>unistr('\6676\7801\8BBE\5907\5BFC\5165-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6676\7801\8BBE\5907\5BFC\5165-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$(''.ui-button-icon.ui-icon.ui-icon-closethick'', window.parent.document).length) {',
'    $(''.ui-dialog-titlebar-close'', window.parent.document).append(''<span class="ui-button-icon ui-icon ui-icon-closethick"></span>'');',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2703195673337533914)
,p_plug_name=>unistr('\6309\94AE\680F')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(2359789034659135292)
,p_plug_display_sequence=>20
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P241_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2703197664706533911)
,p_plug_name=>unistr('\6570\636E\6E90')
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2703198064134533910)
,p_plug_name=>unistr('\4E0A\8F7D\6587\4EF6')
,p_parent_plug_id=>wwv_flow_imp.id(2703197664706533911)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>30
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P241_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2703200140523533907)
,p_plug_name=>unistr('\5DF2\52A0\8F7D\6587\4EF6')
,p_parent_plug_id=>wwv_flow_imp.id(2703197664706533911)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>40
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P241_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2703203060320533904)
,p_name=>unistr('\9884\89C8')
,p_template=>wwv_flow_imp.id(2359807030908135298)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.line_number,',
'       p.col001, p.col002, p.col003, p.col004, p.col005, p.col006, p.col007, p.col008, p.col009, p.col010',
'       -- add more columns (col011 to col300) here.',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content           => f.blob_content,',
'                  p_file_name         => f.filename,',
'                  p_xlsx_sheet_name   => case when :P241_XLSX_WORKSHEET is not null then :P241_XLSX_WORKSHEET end,',
'                  p_file_profile      => apex_data_loading.get_file_profile( p_static_id => ''_'' ),',
'                  p_max_rows          => 200 ) ) p',
' where f.name = :P241_FILE'))
,p_display_when_condition=>'P241_FILE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2359829749120135307)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\672A\627E\5230\6570\636E')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446132842596785023)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Line Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446133212922785022)
,p_query_column_id=>2
,p_column_alias=>'COL001'
,p_column_display_sequence=>2
,p_column_heading=>'Col001'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446133635459785022)
,p_query_column_id=>3
,p_column_alias=>'COL002'
,p_column_display_sequence=>3
,p_column_heading=>'Col002'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446134025989785022)
,p_query_column_id=>4
,p_column_alias=>'COL003'
,p_column_display_sequence=>4
,p_column_heading=>'Col003'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446134492471785021)
,p_query_column_id=>5
,p_column_alias=>'COL004'
,p_column_display_sequence=>5
,p_column_heading=>'Col004'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446134898108785021)
,p_query_column_id=>6
,p_column_alias=>'COL005'
,p_column_display_sequence=>6
,p_column_heading=>'Col005'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446135278848785021)
,p_query_column_id=>7
,p_column_alias=>'COL006'
,p_column_display_sequence=>7
,p_column_heading=>'Col006'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446135615992785021)
,p_query_column_id=>8
,p_column_alias=>'COL007'
,p_column_display_sequence=>8
,p_column_heading=>'Col007'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446136075358785021)
,p_query_column_id=>9
,p_column_alias=>'COL008'
,p_column_display_sequence=>9
,p_column_heading=>'Col008'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446136426277785020)
,p_query_column_id=>10
,p_column_alias=>'COL009'
,p_column_display_sequence=>10
,p_column_heading=>'Col009'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2446136889203785020)
,p_query_column_id=>11
,p_column_alias=>'COL010'
,p_column_display_sequence=>11
,p_column_heading=>'Col010'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2703214170761527255)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359789034659135292)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P241_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2446137554769785020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2703214170761527255)
,p_button_name=>unistr('\5BFC\5165\6A21\677F\4E0B\8F7D')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_image_alt=>unistr('\5BFC\5165\6A21\677F\4E0B\8F7D')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2446137946967785020)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2703214170761527255)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2446138399858785019)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2703214170761527255)
,p_button_name=>unistr('\5BFC\5165')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BFC\5165')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2446129280032785035)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2703195673337533914)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\6E05\9664')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2446129611751785034)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2703195673337533914)
,p_button_name=>'LOAD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BFC\5165\6570\636E')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2446130611457785027)
,p_name=>'P241_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2703198064134533910)
,p_prompt=>unistr('\4E0A\8F7D\6587\4EF6')
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_INLINE',
  'max_file_size', '10000',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2446131014577785026)
,p_name=>'P241_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2703198064134533910)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2446131703683785025)
,p_name=>'P241_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2703200140523533907)
,p_item_default=>unistr('\7C98\8D34\7684\6570\636E')
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
 p_id=>wwv_flow_imp.id(2446132169283785025)
,p_name=>'P241_XLSX_WORKSHEET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2703200140523533907)
,p_prompt=>unistr('XLSX \5DE5\4F5C\8868')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.sheet_display_name,',
'       p.sheet_file_name',
'  from apex_application_temp_files f,',
'       table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
' where f.name = :P241_FILE'))
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sheet_count number;',
'begin',
'    select count(*)',
'      into l_sheet_count',
'      from apex_application_temp_files f,',
'           table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
'     where f.name = :P241_FILE;',
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
 p_id=>wwv_flow_imp.id(2446138773926785014)
,p_name=>'P241_FILE_NAME_D'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2446139145589785013)
,p_name=>'P241_FILE_URL_D'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2446139506208785013)
,p_name=>'P241_ROW_COUNT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2446139993381785013)
,p_name=>'P241_IMPORT_STATUS'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2446140315641785013)
,p_name=>'P241_MSG'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(2446140856415785012)
,p_computation_sequence=>10
,p_computation_item=>'P241_FILE_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename',
'  from apex_application_temp_files ',
' where name = :P241_FILE'))
,p_compute_when=>'P241_FILE'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2446141223668785011)
,p_validation_name=>'Is valid file type'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_data_parser.assert_file_type(',
'       p_file_name => :P241_FILE_NAME,',
'       p_file_type => apex_data_parser.c_file_type_xlsx )',
'then',
'    return true;',
'else',
'    :P241_FILE := null;',
'    return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\6587\4EF6\7C7B\578B\65E0\6548\3002\652F\6301\7684\6587\4EF6\5927\5C0F\4E3A XLSX\3002')
,p_associated_item=>wwv_flow_imp.id(2446130611457785027)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2446142325905785010)
,p_name=>unistr('\4E0A\8F7D\6587\4EF6')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_FILE'
,p_condition_element=>'P241_FILE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446142875711785009)
,p_event_id=>wwv_flow_imp.id(2446142325905785010)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2446143233661785009)
,p_name=>'Submit worksheet on change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P241_XLSX_WORKSHEET'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446143798892785008)
,p_event_id=>wwv_flow_imp.id(2446143233661785009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2446144140739785008)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446144657311785008)
,p_event_id=>wwv_flow_imp.id(2446144140739785008)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FILE VARCHAR2(256);',
'  V_URL  VARCHAR2(512);',
'BEGIN',
'  SELECT FILE_NAME,FILE_URL INTO V_FILE,V_URL ',
'    FROM APEX_UPLOAD_FILE_CONFIG',
'   WHERE FILE_ID = 1;',
'  apex_util.set_session_state(''P241_FILE_NAME_D'', V_FILE);',
'  apex_util.set_session_state(''P241_FILE_URL_D'', V_URL);',
'END;'))
,p_attribute_03=>'P241_FILE_NAME_D,P241_FILE_URL_D'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446145105736785008)
,p_event_id=>wwv_flow_imp.id(2446144140739785008)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fileName = $v(''P241_FILE_NAME_D'');',
'var url = $v(''P241_FILE_URL_D'');',
unistr('var a = `<a href="javascript:void(0)" style="display:none" id="a_file" onclick="utils.fileDownload(''${url}'',''${fileName }'')">\4E0B\8F7D\6587\4EF6</a>`;'),
'$("body").append(a);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2446145595891785007)
,p_name=>unistr('\5BFC\5165')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2446129611751785034)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446146075452785007)
,p_event_id=>wwv_flow_imp.id(2446145595891785007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5BFC\5165\6570\636E\5E76\9A8C\8BC1')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_row_count number(20);',
'    v_err_msg   nvarchar2(2000);',
'    v_msg       nvarchar2(512);',
'    v_status    nvarchar2(64);',
'begin',
'',
'    ja_import_jingma_device(:P241_XLSX_WORKSHEET, :P241_FILE, :USER_ID, :USERTENANT, v_status, v_msg, v_row_count,:BASE_DEPT_ID);',
'',
'    if v_status = ''success'' then',
'        apex_util.set_session_state(''P241_ERROR_ROW_COUNT'', 0);',
'    else',
'        apex_util.set_session_state(''P241_ERROR_ROW_COUNT'', 1);',
'    end if;',
'    apex_util.set_session_state(''P241_MSG'', v_msg);',
'    apex_util.set_session_state(''P241_ROW_COUNT'', v_row_count);',
'    apex_util.set_session_state(''P241_IMPORT_STATUS'', v_status);',
'exception',
'',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('         --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P241_XLSX_WORKSHEET,P241_FILE'
,p_attribute_03=>'P241_MSG,P241_ROW_COUNT,P241_IMPORT_STATUS,P241_ERROR_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446146599553785007)
,p_event_id=>wwv_flow_imp.id(2446145595891785007)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\64CD\4F5C\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if ($v(''P241_IMPORT_STATUS'') == ''success'') {',
unistr('    alert($v(''P241_ROW_COUNT'') + ''\6761\6570\636E\FF0C'' + $v(''P241_MSG''));'),
'} else {',
'    alert($v(''P241_MSG''));',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446147067539785006)
,p_event_id=>wwv_flow_imp.id(2446145595891785007)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v(''P241_IMPORT_STATUS'')==''success'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446147510220785006)
,p_event_id=>wwv_flow_imp.id(2446145595891785007)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'$v(''P241_IMPORT_STATUS'')==''success'''
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2446147949336785006)
,p_name=>unistr('\53D6\6D88\5BFC\5165')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2446137946967785020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446148434967785006)
,p_event_id=>wwv_flow_imp.id(2446147949336785006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2446148812206785006)
,p_name=>unistr('\6587\4EF6\9A8C\8BC1')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2446138399858785019)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446149308206785005)
,p_event_id=>wwv_flow_imp.id(2446148812206785006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>unistr('\8BF7\5148\9009\62E9\8981\5BFC\5165\7684\6587\4EF6\FF01')
,p_attribute_03=>'warning'
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P241_FILE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2446149789951785005)
,p_name=>unistr('\4E0B\8F7D')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2446137554769785020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2446150264496785005)
,p_event_id=>wwv_flow_imp.id(2446149789951785005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#a_file'').click();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2446141543199785011)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_DATA_LOADING'
,p_process_name=>unistr('\52A0\8F7D\6570\636E')
,p_attribute_01=>wwv_flow_imp.id(2424681487324331839)
,p_attribute_02=>'FILE'
,p_attribute_03=>'P241_FILE'
,p_attribute_06=>'P241_XLSX_WORKSHEET'
,p_attribute_08=>'P241_ERROR_ROW_COUNT'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2446129611751785034)
,p_internal_uid=>262816940445701057
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2446141921340785011)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\6E05\9664\9AD8\901F\7F13\5B58')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CLEAR'' or :P241_ERROR_ROW_COUNT = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>262817318586701057
);
wwv_flow_imp.component_end;
end;
/
