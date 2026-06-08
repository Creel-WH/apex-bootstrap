prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_name=>unistr('\5E94\7528\7528\6237\7EC4\914D\7F6E')
,p_alias=>unistr('\5E94\7528\7528\6237\7EC4\914D\7F6E')
,p_step_title=>unistr('\5E94\7528\7528\6237\7EC4\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2309033900767992890)
,p_plug_name=>unistr('\7BA1\7406\5C42\4EBA\5458\914D\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       USER_GROUP_ASSO_ID,',
'       BIND_EXT_ORG_NAME,',
'       CODE_NAME,',
'       USER_GROUP_ASSO_CODE,',
'       NAME,',
'       FAB_NAME,BASE_DEPT_ID',
'  from TENANT_USER_GROUP_ASSO_V',
'  WHERE TENANT_ID =:USERTENANT and BASE_DEPT_ID=:BASE_DEPT_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\7BA1\7406\5C42\4EBA\5458\914D\7F6E')
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2309034320723992890)
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
,p_detail_link=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:RP:P57_USER_GROUP_ASSO_ID:\#USER_GROUP_ASSO_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="&#x7F16;&#x8F91;" class="fa fa-edit" title="&#x7F16;&#x8F91;"></span>'
,p_owner=>'SHENGWENHAO'
,p_internal_uid=>87986930717522881
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2309034456451992893)
,p_db_column_name=>'USER_GROUP_ASSO_ID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'User Group Asso Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2309034854437992894)
,p_db_column_name=>'BIND_EXT_ORG_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\6240\5C5E\90E8\95E8')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2309035271870992895)
,p_db_column_name=>'CODE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\7528\6237\7EC4')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2309035688283992895)
,p_db_column_name=>'USER_GROUP_ASSO_CODE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\5B50\7528\6237\7EC4')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(2309666999014901764)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2309036003784992895)
,p_db_column_name=>'NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\4EBA\5458')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2309036391793992895)
,p_db_column_name=>'FAB_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('\5382\533A')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(442163092950392065)
,p_db_column_name=>'BASE_DEPT_ID'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Base Dept Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2309115419992500138)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'880681'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FAB_NAME:CODE_NAME:USER_GROUP_ASSO_CODE:BIND_EXT_ORG_NAME:NAME:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2309038909075992899)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2359751901918135266)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2309040141337992899)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2309033900767992890)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:57'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2309037844473992897)
,p_name=>unistr('\7F16\8F91\62A5\8868 - \5BF9\8BDD\6846\5DF2\5173\95ED')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2309033900767992890)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2309038305391992898)
,p_event_id=>wwv_flow_imp.id(2309037844473992897)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2309033900767992890)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2224186996894694618)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2224187140202694619)
,p_event_id=>wwv_flow_imp.id(2224186996894694618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',56,''\5E94\7528\7528\6237\7EC4\914D\7F6E'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
