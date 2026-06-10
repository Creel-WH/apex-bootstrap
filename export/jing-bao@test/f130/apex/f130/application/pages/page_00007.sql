prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_name=>unistr('\8BBE\5907\8BBE\7F6E')
,p_alias=>unistr('\8BBE\5907\8BBE\7F6E')
,p_step_title=>unistr('\8BBE\5907\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2331806674538965138)
,p_plug_name=>unistr('\62A5\8868 1')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330924417379485748)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'       fd.DEVICE_ID,',
'       FAB_ID,',
'       MAP_AREA_Y_ID,',
'       MAP_AREA_X_ID,',
'       DEVICE_CODE,',
'       DEVICE_NAME,',
'       IP,',
'       SUBNET,',
'       GATEWAY,',
'       MAC,',
'       TYPE,',
'       SUPPLIER,',
'       REMARK',
'FROM FND_DEVICES fd',
'left join FND_MAPS_AREAS_ASSO_V fmaav',
'on fd.MAP_ID = fmaav.MAP_ID',
'where fd.TENANT_ID = :USERTENANT'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>unistr('\62A5\8868 1')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2331807043535965138)
,p_name=>unistr('\62A5\8868 1')
,p_max_row_count_message=>unistr('\6B64\62A5\8868\7684\6700\5927\884C\6570\662F #MAX_ROW_COUNT# \884C\3002\8BF7\5E94\7528\8FC7\6EE4\5668\6765\51CF\5C11\60A8\7684\67E5\8BE2\4E2D\7684\8BB0\5F55\6570\3002')
,p_no_data_found_message=>unistr('\672A\627E\5230\6570\636E\3002')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:RP,8:P8_DEVICE_ID:#DEVICE_ID##ROWID##DEVICE_ID#\'
,p_detail_link_text=>'<span aria-label="&#x7F16;&#x8F91;"><span class="fa fa-edit" aria-hidden="true" title="&#x7F16;&#x8F91;"></span></span>'
,p_owner=>'SHENGWENHAO'
,p_internal_uid=>57595325477788203
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2331808400421965141)
,p_db_column_name=>'DEVICE_CODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\8BBE\5907\7F16\53F7')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2331808796156965141)
,p_db_column_name=>'DEVICE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\8BBE\5907\540D\79F0')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2331809201499965141)
,p_db_column_name=>'IP'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('\8BBE\5907\56FA\5B9Aip')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2331809519375965141)
,p_db_column_name=>'SUBNET'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('\5B50\7F51')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2331809956984965141)
,p_db_column_name=>'GATEWAY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>unistr('\7F51\5173')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2331810364128965142)
,p_db_column_name=>'MAC'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('mac\5730\5740')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2331810784589965142)
,p_db_column_name=>'TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>unistr('\8BBE\5907\7C7B\578B')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2331811151075965142)
,p_db_column_name=>'SUPPLIER'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>unistr('\4F9B\5E94\5546')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2331811572505965142)
,p_db_column_name=>'REMARK'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>unistr('\5907\6CE8')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2280189941302473395)
,p_db_column_name=>'FAB_ID'
,p_display_order=>26
,p_column_identifier=>'R'
,p_column_label=>unistr('\5382\533A')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(2281085525905648375)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2280190026374473396)
,p_db_column_name=>'MAP_AREA_Y_ID'
,p_display_order=>36
,p_column_identifier=>'S'
,p_column_label=>unistr('\4EA7\7EBF')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(2281085822951657168)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2280190096000473397)
,p_db_column_name=>'MAP_AREA_X_ID'
,p_display_order=>46
,p_column_identifier=>'T'
,p_column_label=>unistr('\533A\57DF')
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(2281085822951657168)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2280190346926473399)
,p_db_column_name=>'DEVICE_ID'
,p_display_order=>56
,p_column_identifier=>'V'
,p_column_label=>'Device Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2331815077687967814)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'576034'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FAB_ID:MAP_AREA_Y_ID:MAP_AREA_X_ID:DEVICE_CODE:DEVICE_NAME:IP:SUBNET:GATEWAY:MAC:TYPE:SUPPLIER:REMARK:DEVICE_ID'
,p_sort_column_1=>'FAB_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'MAP_AREA_Y_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'MAP_AREA_X_ID'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2331814670583965146)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2331806674538965138)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2195145689567505387)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2195145826714505388)
,p_event_id=>wwv_flow_imp.id(2195145689567505387)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',7,''\8BBE\5907\6863\6848'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
