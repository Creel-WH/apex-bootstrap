prompt --application/pages/page_00196
begin
--   Manifest
--     PAGE: 00196
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
 p_id=>196
,p_name=>unistr('\5DE5\5355\660E\7EC6')
,p_alias=>unistr('\5DE5\5355\660E\7EC6')
,p_step_title=>unistr('\5DE5\5355\660E\7EC6')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2167610133915666727)
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
 p_id=>wwv_flow_imp.id(2167610789871666726)
,p_plug_name=>unistr('\5DE5\5355\660E\7EC6')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT A.EVENT_SERIAL_NO,B.NAME FAB_NAME,C.NAME LINE_NAME,D.NAME OP_NAME,E.NAME FIRST_C_NAME,F.NAME SECOND_C_NAME,G.NAME PNAME,A.DESCRIPTION,',
' H.EVENT_CAUSE,H.EVENT_SOLUTION_SCHEME, CASE ',
unistr(' WHEN A.STATUS = ''RESOLVED'' THEN ''\5B8C\7ED3'''),
unistr('   WHEN A.STATUS =''CLOSED'' THEN ''\5173\95ED'''),
unistr('     ELSE ''\672A\5B8C\7ED3'''),
'       END  STATUS,U.NAME SUBMIT_NAME,O.NAME SUBMIT_ORG,',
' OO.NAME MAIN_ORG,FUS.NAME FOLLOW_NAME,A.BEGIN_TIME,A.END_TIME,',
' ROUND((APEX_DATE_TO_UNIX_TS(A.END_TIME) -',
'                     APEX_DATE_TO_UNIX_TS(A.BEGIN_TIME)) / 60, 2) LAST_TIME',
'  FROM TENANT_EVENT A ',
' LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID ',
' LEFT JOIN FND_AREAS C ON A.MAP_AREA_Y_ID = C.AREA_ID ',
' LEFT JOIN FND_AREAS D ON A.MAP_AREA_X_ID = D.AREA_ID',
' LEFT JOIN TENANT_EVENT_CATEGORY E ON A.FIRST_EVENT_CODE = E.CODE AND E.TENANT_ID = :USERTENANT AND E.BASE_DEPT_ID =:BASE_DEPT_ID',
' LEFT JOIN TENANT_EVENT_CATEGORY F ON A.SECOND_EVENT_CODE = F.CODE AND F.TENANT_ID = :USERTENANT AND F.BASE_DEPT_ID =:BASE_DEPT_ID',
' LEFT JOIN TENANT_EVENT_PHENOMENON G ON A.PHENOMENON_CODE = G.CODE AND G.TENANT_ID = :USERTENANT AND G.BASE_DEPT_ID =:BASE_DEPT_ID',
' LEFT JOIN TENANT_EVENT_FOLLOW_USERS H ON A.EVENT_ID  = H.EVENT_ID AND H.IS_FINAL_HANDLER=1',
' LEFT JOIN MPF_SHARE_USER_V U ON A.SUBMIT_USER_ID = U.EXT_USER_ID',
' LEFT JOIN MPF_SHARE_DEPT_V O ON A.SUBMIT_EXT_ORG_ID = O.EXT_ORG_ID',
' LEFT JOIN MPF_SHARE_DEPT_V OO ON A.MAIN_ORG_ID = OO.EXT_ORG_ID',
' LEFT JOIN TENANT_EVENT_FOLLOW_USERS FU ON FU.EVENT_ID = A.EVENT_ID AND FU.IS_FINAL_HANDLER = 1 ',
' LEFT JOIN MPF_SHARE_USER_V FUS ON FU.EXT_USER_ID = FUS.EXT_USER_ID',
' WHERE A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID AND  A.FAB_ID = :P196_FAB AND A.FIRST_EVENT_CODE = :P196_FC_CODE AND A.SECOND_EVENT_CODE = :P196_SC_CODE AND A.PHENOMENON_CODE = :P196_PCODE ',
' ORDER BY A.EVENT_ID DESC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('\5DE5\5355\660E\7EC6')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2167610857155666726)
,p_name=>unistr('\5DE5\5355\660E\7EC6')
,p_max_row_count_message=>unistr('\6B64\62A5\8868\7684\6700\5927\884C\6570\662F #MAX_ROW_COUNT# \884C\3002\8BF7\5E94\7528\8FC7\6EE4\5668\6765\51CF\5C11\60A8\7684\67E5\8BE2\4E2D\7684\8BB0\5F55\6570\3002')
,p_no_data_found_message=>unistr('\672A\627E\5230\6570\636E\3002')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>4324929332495815
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167611271784666722)
,p_db_column_name=>'EVENT_SERIAL_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('\5DE5\5355\7F16\53F7')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167611656506666720)
,p_db_column_name=>'FAB_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\5382\533A')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167612048199666720)
,p_db_column_name=>'LINE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\5382\7EBF')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167612457701666720)
,p_db_column_name=>'OP_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\5E8F\53F7')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167612828312666720)
,p_db_column_name=>'FIRST_C_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>unistr('\5927\7C7B')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167613230583666719)
,p_db_column_name=>'SECOND_C_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>unistr('\5C0F\7C7B')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167613637190666719)
,p_db_column_name=>'PNAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('\73B0\8C61')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167614040862666719)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>unistr('\63CF\8FF0')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167614515113666719)
,p_db_column_name=>'EVENT_CAUSE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>unistr('\4E8B\4EF6\539F\56E0')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167614837212666718)
,p_db_column_name=>'EVENT_SOLUTION_SCHEME'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>unistr('\89E3\51B3\65B9\6848')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167615236527666718)
,p_db_column_name=>'STATUS'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>unistr('\72B6\6001')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167615692011666718)
,p_db_column_name=>'SUBMIT_NAME'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>unistr('\63D0\4EA4\4EBA')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167616038659666718)
,p_db_column_name=>'SUBMIT_ORG'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>unistr('\63D0\4EA4\4EBA\90E8\95E8')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167616516098666718)
,p_db_column_name=>'MAIN_ORG'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>unistr('\8D23\4EFB\90E8\95E8')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167616922684666717)
,p_db_column_name=>'FOLLOW_NAME'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>unistr('\8DDF\8FDB\4EBA')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167617292970666717)
,p_db_column_name=>'BEGIN_TIME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>unistr('\5F00\59CB\65F6\95F4')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167617685137666717)
,p_db_column_name=>'END_TIME'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>unistr('\5B8C\7ED3\65F6\95F4')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167618126700666717)
,p_db_column_name=>'LAST_TIME'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>unistr('\5DE5\5355\65F6\957F\FF08\5206\949F\FF09')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2167619528628661639)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'43337'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EVENT_SERIAL_NO:FAB_NAME:LINE_NAME:OP_NAME:FIRST_C_NAME:SECOND_C_NAME:PNAME:DESCRIPTION:EVENT_CAUSE:EVENT_SOLUTION_SCHEME:STATUS:SUBMIT_NAME:SUBMIT_ORG:MAIN_ORG:FOLLOW_NAME:BEGIN_TIME:END_TIME:LAST_TIME'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2167388661845920225)
,p_name=>'P196_FAB'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2167388728188920226)
,p_name=>'P196_FC_CODE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2167388890807920227)
,p_name=>'P196_SC_CODE'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2167388995083920228)
,p_name=>'P196_PCODE'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
