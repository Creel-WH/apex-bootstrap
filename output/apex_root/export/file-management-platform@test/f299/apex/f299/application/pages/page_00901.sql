prompt --application/pages/page_00901
begin
--   Manifest
--     PAGE: 00901
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>901
,p_name=>unistr('\95EE\9898\53CD\9988\5217\8868')
,p_alias=>unistr('\95EE\9898\53CD\9988\5217\8868')
,p_step_title=>unistr('\95EE\9898\53CD\9988\5217\8868')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7997139015793915648)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5332751998042185365)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760098362117264255)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9759982719990264183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9760160797690264300)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8533765934682562771)
,p_plug_name=>unistr('\95EE\9898\53CD\9988')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FB_ID,',
'       FB_DATE,',
'       u.NAME REQUESTOR,',
'       aale.application_name,',
'       aale.page_name,',
'       DETAIL,',
'       REQ_TYPE,',
'       SEVERITY,',
'       ASSIGNEDTO,',
'       ESTIMATE_DATE,',
'       ACTUAL_DATE,',
'       STATUS,',
'       RESULT,',
'       COMM,',
unistr('       ''\67E5\770B\622A\5C4F'''),
'from JAS_APP_FEEDBACK jas',
'         left join apex_application_pages aale on aale.page_id = jas.page_id and aale.application_id = jas.app_id',
'         left join BASIC_USER u on jas.REQUESTOR = u.JOB_NUMBER and u.DEL_FLAG = 0 and u.TENANT_ID = :USER_TENANT',
'where jas.app_id = :APP_ID',
'  and jas.REQUESTOR = (',
'    case',
'        when :USER_JOB_NUMBER in (''JA015845'', ''JA043586'', ''JA057965'', ''JA045660'', ''JA015929'') then',
'            jas.REQUESTOR',
'        else',
'            :USER_JOB_NUMBER end',
'    );'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\95EE\9898\53CD\9988')
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
 p_id=>wwv_flow_imp.id(8329405887833173305)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:902:&SESSION.::&DEBUG.::P902_FB_ID:#FB_ID#'
,p_detail_link_text=>'<span role="img" aria-label="&#x7F16;&#x8F91;" class="fa fa-edit" title="&#x7F16;&#x8F91;"></span>'
,p_owner=>'JA057965'
,p_internal_uid=>205445523428308101
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329406045328173306)
,p_db_column_name=>'FB_ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Fb Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329406244940173308)
,p_db_column_name=>'REQUESTOR'
,p_display_order=>15
,p_column_identifier=>'C'
,p_column_label=>unistr('\767B\8BB0\4EBA')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329406071277173307)
,p_db_column_name=>'FB_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\767B\8BB0\65E5\671F')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329407319913173319)
,p_db_column_name=>'APPLICATION_NAME'
,p_display_order=>21
,p_column_identifier=>'N'
,p_column_label=>unistr('\5E94\7528\7A0B\5E8F')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(6504460206089285255)
,p_db_column_name=>'REQ_TYPE'
,p_display_order=>31
,p_column_identifier=>'R'
,p_column_label=>unistr('\9700\6C42\7C7B\578B')
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(6434470850264137347)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329406565931173312)
,p_db_column_name=>'SEVERITY'
,p_display_order=>41
,p_column_identifier=>'G'
,p_column_label=>unistr('\5F71\54CD\7A0B\5EA6')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329406539934173311)
,p_db_column_name=>'DETAIL'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>unistr('\95EE\9898\63CF\8FF0')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329406764123173313)
,p_db_column_name=>'ASSIGNEDTO'
,p_display_order=>61
,p_column_identifier=>'H'
,p_column_label=>unistr('\95EE\9898\8D1F\8D23\4EBA')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329406807877173314)
,p_db_column_name=>'ESTIMATE_DATE'
,p_display_order=>71
,p_column_identifier=>'I'
,p_column_label=>unistr('\9884\8BA1\89E3\51B3\65F6\95F4')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329406951144173315)
,p_db_column_name=>'ACTUAL_DATE'
,p_display_order=>81
,p_column_identifier=>'J'
,p_column_label=>unistr('\5B9E\9645\89E3\51B3\65F6\95F4')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329407050771173316)
,p_db_column_name=>'STATUS'
,p_display_order=>91
,p_column_identifier=>'K'
,p_column_label=>unistr('\72B6\6001')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329407073657173317)
,p_db_column_name=>'RESULT'
,p_display_order=>101
,p_column_identifier=>'L'
,p_column_label=>unistr('\7ED3\679C')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329407193738173318)
,p_db_column_name=>'COMM'
,p_display_order=>111
,p_column_identifier=>'M'
,p_column_label=>unistr('\5907\6CE8')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(8329407495521173321)
,p_db_column_name=>unistr('''\67E5\770B\622A\5C4F''')
,p_display_order=>121
,p_column_identifier=>'P'
,p_column_label=>unistr('\67E5\770B\622A\5C4F')
,p_column_link=>'f?p=&APP_ID.:903:&SESSION.::&DEBUG.::P903_FB_ID:#FB_ID#'
,p_column_linktext=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'Y'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(7998944487391409137)
,p_db_column_name=>'PAGE_NAME'
,p_display_order=>131
,p_column_identifier=>'Q'
,p_column_label=>unistr('\529F\80FD\9875\9762')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8329427451208177060)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2054671'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('''\67E5\770B\622A\5C4F'':PAGE_NAME:REQUESTOR:FB_DATE:DETAIL:SEVERITY:STATUS:ASSIGNEDTO:ESTIMATE_DATE:ACTUAL_DATE:RESULT:COMM:')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8328941831835004542)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8533765934682562771)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:902:&APP_SESSION.::&DEBUG.:902::'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8328943148119004543)
,p_name=>unistr('\7F16\8F91\62A5\8868 - \5BF9\8BDD\6846\5DF2\5173\95ED')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8533765934682562771)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8328943637531004544)
,p_event_id=>wwv_flow_imp.id(8328943148119004543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8533765934682562771)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
