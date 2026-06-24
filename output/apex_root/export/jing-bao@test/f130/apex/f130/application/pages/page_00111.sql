prompt --application/pages/page_00111
begin
--   Manifest
--     PAGE: 00111
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
 p_id=>111
,p_name=>unistr('\4E8B\4EF6\5E93')
,p_alias=>unistr('\4E8B\4EF6\5E93')
,p_step_title=>unistr('\4E8B\4EF6\5E93')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2167154933660772375)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2301990439734836168)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2302109431778836229)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2167155573042772377)
,p_plug_name=>unistr('\4E8B\4EF6\914D\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct p.EVENT_CATEGORY_ID,',
'                p.PARENT_CODE,',
'                (select s.NAME from TENANT_EVENT_CATEGORY s where s.CODE = p.PARENT_CODE) pName,',
'                p.CODE,',
'                p.NAME,',
'                (select listagg(NAME, '','')',
'                 from (select *',
'                       from TENANT_EVENT_PHENOMENON',
'                       where CODE in (select l.PHENOMENON_CODE',
'                                      from tenant_event_library l',
'                                      where l.CATEGORY_SECOND_CODE = p.CODE',
'                                        and l.CATEGORY_FIRST_CODE = p.PARENT_CODE))) as   sName,',
'                (select listagg(CODE, '','')',
'                 from (select *',
'                       from TENANT_EVENT_PHENOMENON',
'                       where CODE in (select l.PHENOMENON_CODE',
'                                      from tenant_event_library l',
'                                      where l.CATEGORY_SECOND_CODE = p.CODE',
'                                        and l.CATEGORY_FIRST_CODE = p.PARENT_CODE))) as   sCode',
'from TENANT_EVENT_CATEGORY p',
'         left join tenant_event_library lib on p.CODE = lib.CATEGORY_SECOND_CODE',
'where p.NODE_LEVEL = 2',
'  and p.DEL_FLAG = 0',
'  AND p.tenant_id = :USERTENANT',
'and p.BASE_DEPT_ID = :BASE_DEPT_ID',
'and lib.BASE_DEPT_ID = :BASE_DEPT_ID',
'order by p.PARENT_CODE;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\4E8B\4EF6\914D\7F6E')
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
 p_id=>wwv_flow_imp.id(2167155724891772377)
,p_name=>unistr('\4E8B\4EF6\914D\7F6E2')
,p_max_row_count_message=>unistr('\6B64\62A5\8868\7684\6700\5927\884C\6570\662F #MAX_ROW_COUNT# \884C\3002\8BF7\5E94\7528\8FC7\6EE4\5668\6765\51CF\5C11\60A8\7684\67E5\8BE2\4E2D\7684\8BB0\5F55\6570\3002')
,p_no_data_found_message=>unistr('\672A\627E\5230\6570\636E\3002')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.::P112_EVENT_CATEGORY_ID:#EVENT_CATEGORY_ID#'
,p_detail_link_text=>'<span role="img" aria-label="&#x7F16;&#x8F91;" class="fa fa-edit" title="&#x7F16;&#x8F91;"></span>'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>3869797068601466
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167156043015772379)
,p_db_column_name=>'EVENT_CATEGORY_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Event Category Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167156877917772380)
,p_db_column_name=>'PNAME'
,p_display_order=>11
,p_column_identifier=>'C'
,p_column_label=>unistr('\5927\7C7B\540D\79F0')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167156512604772379)
,p_db_column_name=>'PARENT_CODE'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>unistr('\5927\7C7B\7F16\7801')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167157642448772380)
,p_db_column_name=>'NAME'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>unistr('\5C0F\7C7B\540D\79F0')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167157254829772380)
,p_db_column_name=>'CODE'
,p_display_order=>51
,p_column_identifier=>'D'
,p_column_label=>unistr('\5C0F\7C7B\7F16\7801')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167158032197772380)
,p_db_column_name=>'SNAME'
,p_display_order=>61
,p_column_identifier=>'F'
,p_column_label=>unistr('\73B0\8C61\540D\79F0')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167158487220772380)
,p_db_column_name=>'SCODE'
,p_display_order=>71
,p_column_identifier=>'G'
,p_column_label=>'Scode'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2167161866473916778)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'38760'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EVENT_CATEGORY_ID:PNAME:PARENT_CODE:NAME:CODE:SNAME:SCODE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2259534386236145357)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2167155573042772377)
,p_button_name=>unistr('\521B\5EFA')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:112:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2167178000136965417)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2167155573042772377)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2167178036872965418)
,p_event_id=>wwv_flow_imp.id(2167178000136965417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2167155573042772377)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2168579055226136239)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2168579221834136240)
,p_event_id=>wwv_flow_imp.id(2168579055226136239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',111,''\4E8B\4EF6\5E93'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
