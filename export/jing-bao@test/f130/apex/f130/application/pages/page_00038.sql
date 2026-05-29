prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_name=>unistr('\5382\533A\8D1F\8D23\4EBA\914D\7F6E\8868')
,p_alias=>unistr('\5382\533A\8D1F\8D23\4EBA\914D\7F6E\8868')
,p_step_title=>unistr('\5382\533A\8D1F\8D23\4EBA\914D\7F6E\8868')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2233316218166671124)
,p_plug_name=>unistr('\767D\73ED')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'WITH S1 AS (',
unistr('SELECT T.BASE_NAME, ''\7EC4\4EF6\4E8C\5382'' FDN_NAME,T.EXT_ORG_NAME,T.LINENAME,T.OPNAME,TA.NAME,''\767D\73ED'' WORK_TYPE,'),
'(case   WHEN NVL(TA.NAME,''N'')=''N'' THEN 0',
'    ELSE 1 end) COUNT  FROM ',
'(select A.NAME OPNAME,E.NAME BASE_NAME,B.NAME LINENAME,C.EXT_ORG_NAME from ',
'( select NAME from FND_AREAS WHERE FAB_ID =1 AND TYPE=1) A ,( select NAME from FND_AREAS WHERE FAB_ID =1 AND TYPE=2) B,',
'(select NAME EXT_ORG_NAME from tenant_ext_org where instr(''27,28,30,36,37,40,41'',ext_org_id)>0) C,',
'(select NAME FROM FND_FAB) D,',
'(select NAME FROM TENANT_BASE) E ) T ',
'LEFT JOIN (',
'      select *',
'               from (select B. *,',
'                            (row_number()',
'                             over(partition BY MAP_AREA_X_NAME,MAP_AREA_Y_NAME,EXT_ORG_NAME order by STAFF_LEVEL DESC ,HIRED_DATE DESC)) px',
'                       from TENANT_ATTENDANCE_INSTANCE_DETAIL_V B WHERE WORK_TYPE=1) e',
'              where px = 1',
') TA ',
'ON T.OPNAME = TA.MAP_AREA_X_NAME AND T.LINENAME = TA.MAP_AREA_Y_NAME AND T.EXT_ORG_NAME = TA.EXT_ORG_NAME ORDER BY T.EXT_ORG_NAME,T.LINENAME ASC),',
'S2 AS(',
unistr(' SELECT T.BASE_NAME,''\7EC4\4EF6\4E00\5382'' FDN_NAME,T.EXT_ORG_NAME,T.LINENAME,T.OPNAME,TA.NAME,''\767D\73ED'' WORK_TYPE,'),
'(case   WHEN NVL(TA.NAME,''N'')=''N'' THEN 0',
'    ELSE 1 end) COUNT  FROM ',
'(select A.NAME OPNAME,E.NAME BASE_NAME,B.NAME LINENAME,C.EXT_ORG_NAME from ',
'( select NAME from FND_AREAS WHERE FAB_ID =22 AND TYPE=1) A ,( select NAME from FND_AREAS WHERE FAB_ID =22 AND TYPE=2) B,',
'(select NAME EXT_ORG_NAME from tenant_ext_org where instr(''27,28,30,36,454,455,456'',ext_org_id)>0) C,',
'(select NAME FROM FND_FAB) D,',
'(select NAME FROM TENANT_BASE) E ) T ',
'LEFT JOIN (',
'      select *',
'               from (select B. *,',
'                            (row_number()',
'                             over(partition BY MAP_AREA_X_NAME,MAP_AREA_Y_NAME,EXT_ORG_NAME order by STAFF_LEVEL DESC ,HIRED_DATE DESC)) px',
'                       from TENANT_ATTENDANCE_INSTANCE_DETAIL_V B WHERE WORK_TYPE=1) e',
'              where px = 1',
') TA ',
'ON T.OPNAME = TA.MAP_AREA_X_NAME AND T.LINENAME = TA.MAP_AREA_Y_NAME AND T.EXT_ORG_NAME = TA.EXT_ORG_NAME ORDER BY T.EXT_ORG_NAME,T.LINENAME ASC),',
'S3 AS (',
unistr(' SELECT T.BASE_NAME,''\7535\6C60\4E00\5382'' FDN_NAME,T.EXT_ORG_NAME,T.LINENAME,T.OPNAME,TA.NAME,''\767D\73ED'' WORK_TYPE,'),
'(case   WHEN NVL(TA.NAME,''N'')=''N'' THEN 0',
'    ELSE 1 end) COUNT  FROM ',
'(select A.NAME OPNAME,E.NAME BASE_NAME,B.NAME LINENAME,C.EXT_ORG_NAME from ',
'( select NAME from FND_AREAS WHERE FAB_ID =2 AND TYPE=1) A ,( select NAME from FND_AREAS WHERE FAB_ID =2 AND TYPE=2) B,',
'(select NAME EXT_ORG_NAME from tenant_ext_org where instr(''27,28,30,38,39,42,36'',ext_org_id)>0) C,',
'(select NAME FROM FND_FAB) D,',
'(select NAME FROM TENANT_BASE) E ) T ',
'LEFT JOIN (',
'      select *',
'               from (select B. *,',
'                            (row_number()',
'                             over(partition BY MAP_AREA_X_NAME,MAP_AREA_Y_NAME,EXT_ORG_NAME order by STAFF_LEVEL DESC ,HIRED_DATE DESC)) px',
'                       from TENANT_ATTENDANCE_INSTANCE_DETAIL_V B WHERE WORK_TYPE=1) e',
'              where px = 1',
') TA ',
'ON T.OPNAME = TA.MAP_AREA_X_NAME AND T.LINENAME = TA.MAP_AREA_Y_NAME AND T.EXT_ORG_NAME = TA.EXT_ORG_NAME ORDER BY T.EXT_ORG_NAME,T.LINENAME ASC)',
'SELECT * FROM S1 UNION SELECT * FROM S2 UNION SELECT * FROM S3'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\767D\73ED')
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
 p_id=>wwv_flow_imp.id(2232545459217393095)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>84620617687503629
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2233758558726096295)
,p_db_column_name=>'BASE_NAME'
,p_display_order=>10
,p_column_identifier=>'H'
,p_column_label=>unistr('\57FA\5730')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2232545620535393096)
,p_db_column_name=>'FDN_NAME'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>unistr('\5382\533A')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2232545746338393098)
,p_db_column_name=>'LINENAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\4EA7\7EBF')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2232545859638393099)
,p_db_column_name=>'OPNAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\533A\57DF')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2232545646150393097)
,p_db_column_name=>'EXT_ORG_NAME'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>unistr('\90E8\95E8')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2232545953951393100)
,p_db_column_name=>'NAME'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>unistr('\59D3\540D')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2233758714102096296)
,p_db_column_name=>'WORK_TYPE'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>unistr('\6392\73ED')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2232546566652393106)
,p_db_column_name=>'COUNT'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>unistr('\4EBA\6570')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2233326775637679402)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'854020'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FDN_NAME:EXT_ORG_NAME:LINENAME:OPNAME:NAME:COUNT:BASE_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2151068050266114111)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151068158022114112)
,p_event_id=>wwv_flow_imp.id(2151068050266114111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',38,''\5382\533A\8D1F\8D23\4EBA\914D\7F6E\8868'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
