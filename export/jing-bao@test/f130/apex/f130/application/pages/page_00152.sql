prompt --application/pages/page_00152
begin
--   Manifest
--     PAGE: 00152
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
 p_id=>152
,p_name=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E\5BFC\5165\5F39\7A97')
,p_alias=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E\5BFC\5165\5F39\7A97')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E\5BFC\5165\5F39\7A97')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2206241845010632184)
,p_plug_name=>unistr('\6309\94AE\680F')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P152_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2206260715450791276)
,p_plug_name=>unistr('\6570\636E\6E90')
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2206261103045791276)
,p_plug_name=>unistr('\4E0A\8F7D\6587\4EF6')
,p_parent_plug_id=>wwv_flow_imp.id(2206260715450791276)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P152_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2206263199877791277)
,p_plug_name=>unistr('\5DF2\52A0\8F7D\6587\4EF6')
,p_parent_plug_id=>wwv_flow_imp.id(2206260715450791276)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P152_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2206266101110791278)
,p_name=>unistr('\9884\89C8')
,p_template=>wwv_flow_imp.id(2330926299816485749)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.line_number,',
'       p.col001, p.col002, p.col003, p.col004, p.col005, p.col006, p.col007, p.col008, p.col009, p.col010, p.col011, p.col012',
'       -- add more columns (col011 to col300) here.',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content          => f.blob_content,',
'                  p_file_name        => f.filename,',
'                  p_xlsx_sheet_name  => case when :P152_XLSX_WORKSHEET is not null then :P152_XLSX_WORKSHEET end,',
'                  p_add_headers_row   => ''Y'',',
'                  p_file_charset      => ''AL32UTF8'',',
'                  p_max_rows         => 10 ) ) p',
' where f.name = :P152_FILE'))
,p_display_when_condition=>'P152_FILE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P152_XLSX_WORKSHEET,P152_FILE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2330949018028485758)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\672A\627E\5230\4EFB\4F55\6570\636E')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206266449082791282)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Line Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206266811591791283)
,p_query_column_id=>2
,p_column_alias=>'COL001'
,p_column_display_sequence=>2
,p_column_heading=>'Col001'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206267251617791283)
,p_query_column_id=>3
,p_column_alias=>'COL002'
,p_column_display_sequence=>3
,p_column_heading=>'Col002'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206267607135791283)
,p_query_column_id=>4
,p_column_alias=>'COL003'
,p_column_display_sequence=>4
,p_column_heading=>'Col003'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206268037404791283)
,p_query_column_id=>5
,p_column_alias=>'COL004'
,p_column_display_sequence=>5
,p_column_heading=>'Col004'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206268382091791283)
,p_query_column_id=>6
,p_column_alias=>'COL005'
,p_column_display_sequence=>6
,p_column_heading=>'Col005'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206268767650791284)
,p_query_column_id=>7
,p_column_alias=>'COL006'
,p_column_display_sequence=>7
,p_column_heading=>'Col006'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206269184368791284)
,p_query_column_id=>8
,p_column_alias=>'COL007'
,p_column_display_sequence=>8
,p_column_heading=>'Col007'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206269612897791284)
,p_query_column_id=>9
,p_column_alias=>'COL008'
,p_column_display_sequence=>9
,p_column_heading=>'Col008'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206269997573791284)
,p_query_column_id=>10
,p_column_alias=>'COL009'
,p_column_display_sequence=>10
,p_column_heading=>'Col009'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2206270424309791284)
,p_query_column_id=>11
,p_column_alias=>'COL010'
,p_column_display_sequence=>11
,p_column_heading=>'Col010'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2206241918852632185)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2206241845010632184)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2206241988055632186)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2206241845010632184)
,p_button_name=>unistr('\5BFC\5165\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BFC\5165\786E\5B9A')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2197305166336277874)
,p_name=>'P152_ERRER_MSG'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2206261513845791276)
,p_name=>'P152_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2206261103045791276)
,p_prompt=>unistr('\4E0A\8F7D\6587\4EF6')
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2330987399012485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'content_disposition', 'attachment',
  'display_as', 'DROPZONE_BLOCK',
  'display_download_link', 'Y',
  'dropzone_description', unistr('\652F\6301\7684\683C\5F0F XLSX'),
  'max_file_size', '5000',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2206261937755791276)
,p_name=>'P152_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2206261103045791276)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2206263603889791277)
,p_name=>'P152_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2206263199877791277)
,p_item_default=>unistr('\7C98\8D34\7684\6570\636E')
,p_prompt=>unistr('\5DF2\52A0\8F7D\6587\4EF6')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2206264846663791277)
,p_name=>'P152_XLSX_WORKSHEET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2206263199877791277)
,p_prompt=>unistr('XLSX \5DE5\4F5C\8868')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.sheet_display_name,',
'       p.sheet_file_name',
'  from apex_application_temp_files f,',
'       table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
' where f.name = :P152_FILE'))
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sheet_count number;',
'begin',
'    select count(*)',
'      into l_sheet_count',
'      from apex_application_temp_files f,',
'           table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
'     where f.name = :P152_FILE;',
'    ',
'     -- display if the XSLX file contains multiple worksheets',
'    return ( l_sheet_count > 1 );',
'exception',
'    when others then ',
'        return false;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(2206264109065791277)
,p_computation_sequence=>10
,p_computation_item=>'P152_FILE_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename',
'  from apex_application_temp_files ',
' where name = :P152_FILE'))
,p_compute_when=>'P152_FILE'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2206264485284791277)
,p_validation_name=>'Is valid file type'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_data_parser.assert_file_type(',
'       p_file_name => :P152_FILE_NAME,',
'       p_file_type => apex_data_parser.c_file_type_xlsx )',
'then',
'    return true;',
'else',
'    :P152_FILE := null;',
'    return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\6587\4EF6\7C7B\578B\65E0\6548\3002\652F\6301\7684\6587\4EF6\5927\5C0F\4E3A XLSX\3002')
,p_associated_item=>wwv_flow_imp.id(2206261513845791276)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2206262260179791276)
,p_name=>unistr('\4E0A\8F7D\6587\4EF6')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P152_FILE'
,p_condition_element=>'P152_FILE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2206262856769791277)
,p_event_id=>wwv_flow_imp.id(2206262260179791276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2206265232806791278)
,p_name=>'Submit worksheet on change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P152_XLSX_WORKSHEET'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2206265688422791278)
,p_event_id=>wwv_flow_imp.id(2206265232806791278)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2206242093776632187)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2206241918852632185)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2206242174827632188)
,p_event_id=>wwv_flow_imp.id(2206242093776632187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2206242282786632189)
,p_name=>unistr('\6570\636E\5BFC\5165')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2206241988055632186)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2206242400987632190)
,p_event_id=>wwv_flow_imp.id(2206242282786632189)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    NCOUNT NUMBER(20);',
'    BASEID VARCHAR2(20);',
'    FABID VARCHAR2(20);',
'    LINEID VARCHAR2(20);',
'    OPID VARCHAR2(20);',
'    MAPID VARCHAR2(20);',
'    WORKSTATIONID NUMBER(20);',
'    MSG VARCHAR2(500);',
'BEGIN',
'  FOR ITEMS IN',
'      (SELECT P.LINE_NUMBER,',
'              P.COL001, P.COL002, P.COL003,P.COL004,P.COL005, P.COL006,P.COL007,P.COL008,P.COL009,P.COL010,P.COL011,P.COL012',
'              -- ADD MORE COLUMNS (COL011 TO COL300) HERE.',
'         FROM APEX_APPLICATION_TEMP_FILES F,',
'              TABLE( APEX_DATA_PARSER.PARSE(',
'                          P_CONTENT          => F.BLOB_CONTENT,',
'                          P_FILE_NAME        => F.FILENAME,',
'                          P_XLSX_SHEET_NAME  => CASE WHEN :P152_XLSX_WORKSHEET IS NOT NULL THEN :P152_XLSX_WORKSHEET END,',
'                          P_ADD_HEADERS_ROW   => ''Y'',',
'                          P_SKIP_ROWS   => 1,',
'                          P_FILE_CHARSET      => ''AL32UTF8'',',
'                          P_MAX_ROWS         => 10000 ) ) P',
'        WHERE F.NAME = :P152_FILE) LOOP',
unistr('      MSG := '' - \9519\8BEF\6570\636E\FF1A''||TRIM(ITEMS.COL002)||'' - ''||TRIM(ITEMS.COL003)||'' - ''||TRIM(ITEMS.COL004)||'' - ''||TRIM(ITEMS.COL005);'),
'      SELECT BASE_ID INTO BASEID FROM TENANT_BASE WHERE TENANT_ID = :USERTENANT AND NAME = TRIM(ITEMS.COL001);',
'      SELECT FAB_ID INTO FABID FROM FND_FAB WHERE TENANT_ID = :USERTENANT AND NAME = TRIM(ITEMS.COL002);',
'      SELECT AREA_ID INTO LINEID FROM FND_AREAS WHERE TENANT_ID = :USERTENANT AND FAB_ID= FABID AND TYPE=2 AND NAME = TRIM(ITEMS.COL003);',
'      SELECT AREA_ID INTO OPID FROM FND_AREAS WHERE TENANT_ID = :USERTENANT AND FAB_ID= FABID AND TYPE=1 AND NAME = TRIM(ITEMS.COL004);',
'      SELECT WORK_STATION_ID INTO WORKSTATIONID FROM FND_WORK_STATION WHERE TENANT_ID=:USERTENANT AND NAME = TRIM(ITEMS.COL005);',
'      SELECT COUNT(*) INTO NCOUNT  FROM FND_MAPS_AREAS_ASSO_V WHERE TENANT_ID = :USERTENANT AND BASE_ID =BASEID AND FAB_ID =FABID AND MAP_AREA_Y_ID =LINEID AND MAP_AREA_X_ID = OPID;',
'      IF NCOUNT>0 THEN',
'           SELECT MAP_ID INTO MAPID  FROM FND_MAPS_AREAS_ASSO_V WHERE TENANT_ID = :USERTENANT AND BASE_ID =BASEID AND FAB_ID =FABID AND MAP_AREA_Y_ID =LINEID AND MAP_AREA_X_ID = OPID AND ROWNUM=1;',
'           SELECT COUNT(*) INTO NCOUNT FROM FND_MAPS_WORK_STATION WHERE MAP_ID = MAPID AND WORK_STATION_ID = WORKSTATIONID AND TENANT_ID = :USERTENANT;',
'           IF NCOUNT > 0 THEN',
'               UPDATE FND_MAPS_WORK_STATION A',
'                  SET MAP_X_PIXEL = TRIM(ITEMS.COL006),',
'                      MAP_Y_PIXEL = TRIM(ITEMS.COL007),',
'                      SORT_NUM = TRIM(ITEMS.COL008),',
'                      DAY_MAX_USERS_COUNT = TRIM(ITEMS.COL009),',
'                      NIGHT_MAX_USERS_COUNT = TRIM(ITEMS.COL010),',
'                      IS_HIDE = TRIM(ITEMS.COL011),',
'                      IS_ENABLE = TRIM(ITEMS.COL012),',
'                      UPDATE_DATE = SYSDATE,',
'                      UPDATED_BY = :APP_USER',
'                WHERE A.MAP_ID = MAPID',
'                  AND A.WORK_STATION_ID = WORKSTATIONID',
'                  AND A.TENANT_ID = :USERTENANT;',
'           ELSE',
'               INSERT INTO FND_MAPS_WORK_STATION(TENANT_ID, MAP_ID, WORK_STATION_ID, UPDATE_DATE, CREATION_DATE, CREATED_BY, UPDATED_BY, MAP_X_PIXEL, MAP_Y_PIXEL, SORT_NUM,DAY_MAX_USERS_COUNT, NIGHT_MAX_USERS_COUNT, IS_HIDE, IS_ENABLE)',
'               VALUES (:USERTENANT, MAPID, WORKSTATIONID, SYSDATE, SYSDATE, :APP_USER, :APP_USER, TRIM(ITEMS.COL006), TRIM(ITEMS.COL007), TRIM(ITEMS.COL008), TRIM(ITEMS.COL009), TRIM(ITEMS.COL010),',
'                       TRIM(ITEMS.COL011),TRIM(ITEMS.COL012));',
'           END IF;',
'      END IF;',
'      MSG := '''';',
'      APEX_UTIL.SET_SESSION_STATE(''P152_ERRER_MSG'',MSG);',
'  END LOOP;',
'  EXCEPTION',
'      WHEN OTHERS THEN',
'          rollback;',
'          MSG := SQLERRM||MSG;',
'          JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', MSG, :USER_ID, :USERTENANT,',
'          :APP_NAME ,:APP_ID ,:APP_CODE);',
'          APEX_UTIL.SET_SESSION_STATE(''P152_ERRER_MSG'',MSG);',
'END;'))
,p_attribute_02=>'P152_XLSX_WORKSHEET,P152_FILE,P152_ERRER_MSG'
,p_attribute_03=>'P152_ERRER_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2197305347050277875)
,p_event_id=>wwv_flow_imp.id(2206242282786632189)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var meg = $v(''P152_ERRER_MSG'');',
'if (meg){',
'    alert(meg);',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2206242549988632191)
,p_event_id=>wwv_flow_imp.id(2206242282786632189)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2206260454398791276)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\6E05\9664\9AD8\901F\7F13\5B58')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CLEAR'' or :P152_ERROR_ROW_COUNT = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>51816582736356871
);
wwv_flow_imp.component_end;
end;
/
