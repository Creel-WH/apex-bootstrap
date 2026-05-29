prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
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
 p_id=>80
,p_name=>unistr('\8DDF\8FDB\90E8\95E8\8DDF\8FDB\4EBA\6392\884C\5F39\7A97')
,p_alias=>unistr('\8DDF\8FDB\90E8\95E8\8DDF\8FDB\4EBA\6392\884C\5F39\7A97')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\8DDF\8FDB\90E8\95E8\8DDF\8FDB\4EBA\6392\884C\5F39\7A97')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2237885560900996995)
,p_name=>unistr('\6570\636E')
,p_template=>wwv_flow_imp.id(2286684482431554755)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.ext_org_name,C.NAME,COUNT(*) COUNT FROM TENANT_EVENT A ',
'INNER JOIN TENANT_EVENT_FOLLOW_USERS B ON A.EVENT_ID = B.EVENT_ID',
'INNER JOIN TENANT_EXT_USERS_ORG_MAIN_ASSO_V C ON B.EXT_USER_ID = C.ext_user_id',
'where (A.STATUS=''CLOSED'' OR A.STATUS=''RESOLVED'' ) AND A.creation_date>to_date(:P80_BEGIN,''yyyy-MM-dd'') AND A.creation_date<to_date(:P80_END,''yyyy-MM-dd'')+1',
'AND C.EXT_ORG_ID = :P80_ORG_ID ',
'GROUP BY C.ext_org_name,C.NAME',
'ORDER BY COUNT(*) desc'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2286707200643554764)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\672A\627E\5230\4EFB\4F55\6570\636E')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>unistr('\4E0B\8F7D')
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2237886009475996997)
,p_query_column_id=>1
,p_column_alias=>'EXT_ORG_NAME'
,p_column_display_sequence=>10
,p_column_heading=>unistr('\90E8\95E8')
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2237886424843996998)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>20
,p_column_heading=>unistr('\8DDF\8FDB\4EBA')
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2237886764762996998)
,p_query_column_id=>3
,p_column_alias=>'COUNT'
,p_column_display_sequence=>30
,p_column_heading=>unistr('\8DDF\8FDB\5355\6570')
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2237226459193376591)
,p_name=>'P80_ORG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2237885560900996995)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2238008248803112376)
,p_name=>'P80_BEGIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2237885560900996995)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2238008366996112377)
,p_name=>'P80_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2237885560900996995)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2151045089962019081)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151045143337019082)
,p_event_id=>wwv_flow_imp.id(2151045089962019081)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',80,''\8DDF\8FDB\90E8\95E8\8DDF\8FDB\4EBA\6392\884C\5F39\7A97'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
