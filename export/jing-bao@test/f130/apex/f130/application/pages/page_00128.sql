prompt --application/pages/page_00128
begin
--   Manifest
--     PAGE: 00128
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
 p_id=>128
,p_name=>unistr('\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\914D\7F6E')
,p_alias=>unistr('\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\914D\7F6E')
,p_step_title=>unistr('\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2156353110955336434)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2286629353441554723)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2286748345485554784)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2156353730135336435)
,p_plug_name=>unistr('\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\914D\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FAB_ID,FAB_NAME,MAP_AREA_X_ID, MAP_AREA_X_NAME,LISTAGG(NAME,'','') NAME,LISTAGG(EVENT_CATEGORY_ID,'','') EVENT_CATEGORY_ID',
'FROM (',
'select distinct A.FND_AREA_EVENT_CATEGORY_ID,B.FAB_ID,B.fab_name,A.MAP_AREA_X_ID,B.map_area_x_name,A.EVENT_CATEGORY_ID,C.NAME from TENANT_FND_AREA_EVENT_CATEGORY_ASSO A',
'left join FND_MAPS_AREAS_ASSO_V B ON A.MAP_AREA_X_ID = B.MAP_AREA_X_ID',
'LEFT JOIN TENANT_EVENT_CATEGORY C ON A.EVENT_CATEGORY_ID = C.EVENT_CATEGORY_ID',
'WHERE A.TENANT_ID=:USERTENANT)',
'GROUP BY FAB_ID,FAB_NAME,MAP_AREA_X_ID,MAP_AREA_X_NAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>unistr('\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\914D\7F6E')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2156353811391336435)
,p_name=>unistr('\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\914D\7F6E')
,p_max_row_count_message=>unistr('\6B64\62A5\8868\7684\6700\5927\884C\6570\662F #MAX_ROW_COUNT# \884C\3002\8BF7\5E94\7528\8FC7\6EE4\5668\6765\51CF\5C11\60A8\7684\67E5\8BE2\4E2D\7684\8BB0\5F55\6570\3002')
,p_no_data_found_message=>unistr('\672A\627E\5230\6570\636E\3002')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.::P127_FABID,P127_OPID:#FAB_ID#,#MAP_AREA_X_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>8428969861446969
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2156354163440336437)
,p_db_column_name=>'FAB_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Fab Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2156354590852336439)
,p_db_column_name=>'FAB_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\5382\533A')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2156355023090336439)
,p_db_column_name=>'MAP_AREA_X_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Map Area X Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2156355423747336440)
,p_db_column_name=>'MAP_AREA_X_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\5DE5\5E8F')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2156355756926336440)
,p_db_column_name=>'NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\5C0F\7C7B\5217\8868')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2156356161098336440)
,p_db_column_name=>'EVENT_CATEGORY_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Event Category Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2156357038639344046)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'84322'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FAB_ID:FAB_NAME:MAP_AREA_X_ID:MAP_AREA_X_NAME:NAME:EVENT_CATEGORY_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2154774964883912614)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2156353730135336435)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:CR,127::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2161383391910650687)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2161383442704650688)
,p_event_id=>wwv_flow_imp.id(2161383391910650687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',128,''\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\914D\7F6E'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
