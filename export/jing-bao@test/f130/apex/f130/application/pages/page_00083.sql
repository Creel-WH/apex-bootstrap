prompt --application/pages/page_00083
begin
--   Manifest
--     PAGE: 00083
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
 p_id=>83
,p_name=>unistr('\89C4\5219\8BBE\7F6E')
,p_alias=>unistr('\89C4\5219\8BBE\7F6E')
,p_step_title=>unistr('\89C4\5219\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2316035714995862964)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2316036311991862964)
,p_plug_name=>unistr('\89C4\5219\8BBE\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.EVENT_LIBRARY_ID,',
'       B.FIRST_EVENT_CATEGORY_NAME || ''-'' || B.SECOND_EVENT_CATEGORY_NAME || ''-'' || B.EVENT_PHENOMENON_NAME PHENOMENON,',
'       A.REMARK,',
'       listagg(c.name, '','')                                                                                 label_name',
'from TENANT_RULE_LIBRARY A',
'         INNER JOIN TENANT_EVENT_LIBRARY_V B ON A.EVENT_LIBRARY_ID = B.EVENT_LIBRARY_ID',
'         INNER JOIN tenant_label_library C ON A.LABEL_LIBRARY_ID = C.LABEL_LIBRARY_ID',
'where A.tenant_id = :USERTENANT',
'  AND A.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND B.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND C.BASE_DEPT_ID = :BASE_DEPT_ID',
'group by B.FIRST_EVENT_CATEGORY_NAME || ''-'' || B.SECOND_EVENT_CATEGORY_NAME || ''-'' || B.EVENT_PHENOMENON_NAME, A.REMARK,',
'         A.EVENT_LIBRARY_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\89C4\5219\8BBE\7F6E')
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
 p_id=>wwv_flow_imp.id(2224785225141257124)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.::P107_EVENTID,P107_REMARK:#EVENT_LIBRARY_ID#,#REMARK#'
,p_detail_link_text=>'<span role="img" aria-label="&#x7F16;&#x8F91;" class="fa fa-edit" title="&#x7F16;&#x8F91;"></span>'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>3737835134787115
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2224785326858257125)
,p_db_column_name=>'EVENT_LIBRARY_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Event Library Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2224785483461257126)
,p_db_column_name=>'PHENOMENON'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\73B0\8C61\63CF\8FF0')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2224785553274257127)
,p_db_column_name=>'REMARK'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\5907\6CE8')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2224785665176257128)
,p_db_column_name=>'LABEL_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\6807\7B7E\540D\79F0')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2224828010085313716)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'37807'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EVENT_LIBRARY_ID:PHENOMENON:REMARK:LABEL_NAME'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2224488922742653650)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2316036311991862964)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:107:&SESSION.::&DEBUG.:CR,107::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2224167012951599618)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2224167186426599619)
,p_event_id=>wwv_flow_imp.id(2224167012951599618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',83,''\89C4\5219\6863\6848'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2224489693995653658)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2316036311991862964)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2224489881262653659)
,p_event_id=>wwv_flow_imp.id(2224489693995653658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2316036311991862964)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
