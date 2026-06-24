prompt --application/pages/page_00106
begin
--   Manifest
--     PAGE: 00106
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
 p_id=>106
,p_name=>unistr('\7F51\683C\4EBA\5458\6279\91CF\914D\7F6E')
,p_alias=>unistr('\7F51\683C\4EBA\5458\6279\91CF\914D\7F6E')
,p_step_title=>unistr('\7F51\683C\4EBA\5458\6279\91CF\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2167024244559958031)
,p_plug_name=>unistr('\67E5\8BE2')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2167086827178537334)
,p_plug_name=>unistr('\7F51\683C\4EBA\5458\6279\91CF\914D\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BASE_NAME,',
'       FAB_NAME,',
'       FAB_ID,',
'       OP_ID,',
'       OP_NAME,',
'       LINE_ID,',
'       LINE_NAME,',
'       MAP_ID,',
'       EXT_ORG_ID,',
'       ORG_NAME,',
'       listagg(PNAME, '','')       UserNameList,',
'       listagg(EXT_USER_ID, '','') UserIDList',
'from table ( APEX_PAK_SETAREA.GET_AREA_PER_DATA(:P106_FABID, :P106_LINEID, :P106_OPID,:org_id))',
'WHERE TENANT_ID = :USERTENANT',
'GROUP BY BASE_NAME, FAB_NAME, FAB_ID, OP_ID, OP_NAME, LINE_ID, LINE_NAME, MAP_ID, EXT_ORG_ID, ORG_NAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_page_header=>unistr('\7F51\683C\4EBA\5458\6279\91CF\914D\7F6E')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2167086838257537334)
,p_name=>unistr('\7F51\683C\4EBA\5458\6279\91CF\914D\7F6E')
,p_max_row_count_message=>unistr('\6B64\62A5\8868\7684\6700\5927\884C\6570\662F #MAX_ROW_COUNT# \884C\3002\8BF7\5E94\7528\8FC7\6EE4\5668\6765\51CF\5C11\60A8\7684\67E5\8BE2\4E2D\7684\8BB0\5F55\6570\3002')
,p_no_data_found_message=>unistr('\672A\627E\5230\6570\636E\3002')
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.::P109_FABID,P109_LINEID,P109_OPID,P109_ORGID,P109_MAPID:#FAB_ID#,#LINE_ID#,#OP_ID#,#EXT_ORG_ID#,#MAP_ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>3800910434366423
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167087245788537338)
,p_db_column_name=>'BASE_NAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('\79DF\6237')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167087652416537338)
,p_db_column_name=>'FAB_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\5382\533A')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167088054985537339)
,p_db_column_name=>'OP_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('\5DE5\5E8F')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167088512040537339)
,p_db_column_name=>'LINE_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\4EA7\7EBF')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167088865478537339)
,p_db_column_name=>'MAP_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Map Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167089680998537339)
,p_db_column_name=>'ORG_NAME'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>unistr('\90E8\95E8')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167025003966958038)
,p_db_column_name=>'FAB_ID'
,p_display_order=>17
,p_column_identifier=>'H'
,p_column_label=>'Fab Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167025068834958039)
,p_db_column_name=>'OP_ID'
,p_display_order=>27
,p_column_identifier=>'I'
,p_column_label=>'Op Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167025171345958040)
,p_db_column_name=>'LINE_ID'
,p_display_order=>37
,p_column_identifier=>'J'
,p_column_label=>'Line Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167025403436958042)
,p_db_column_name=>'EXT_ORG_ID'
,p_display_order=>57
,p_column_identifier=>'L'
,p_column_label=>'Ext Org Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167025444624958043)
,p_db_column_name=>'USERNAMELIST'
,p_display_order=>67
,p_column_identifier=>'M'
,p_column_label=>unistr('\7528\6237\5217\8868')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167025537754958044)
,p_db_column_name=>'USERIDLIST'
,p_display_order=>77
,p_column_identifier=>'N'
,p_column_label=>'Useridlist'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2167090275728538936)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'38044'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BASE_NAME:FAB_NAME:OP_NAME:LINE_NAME:MAP_ID:ORG_NAME:FAB_ID:OP_ID:LINE_ID:EXT_ORG_ID:USERNAMELIST:USERIDLIST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2172213910793563915)
,p_plug_name=>unistr('\65B0\5EFA')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2301990439734836168)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2302109431778836229)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2167024778920958036)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2167024244559958031)
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2167027275990958061)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2167024244559958031)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:115:&SESSION.::&DEBUG.:CR,115:P115_FABID,P115_LINEID,P115_OPID:&P106_FABID.,&P106_LINEID.,&P106_OPID.'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>5
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2167024388741958032)
,p_name=>'P106_FABID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2167024244559958031)
,p_prompt=>unistr('\4EA7\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME KEY,FAB_ID VAL from fnd_fab WHERE TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID and DEL_FLAG=0'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2167024504500958033)
,p_name=>'P106_LINEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2167024244559958031)
,p_prompt=>unistr('\4EA7\7EBF')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  DISTINCT MAP_AREA_Y_NAME key , MAP_AREA_Y_ID val from fnd_maps_areas_asso_v where fab_id = :P106_FABID AND TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P106_FABID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2167024560511958034)
,p_name=>'P106_OPID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2167024244559958031)
,p_prompt=>unistr('\5DE5\5E8F')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  DISTINCT MAP_AREA_X_NAME key , MAP_AREA_X_ID val from fnd_maps_areas_asso_v where fab_id =:P106_FABID and MAP_AREA_Y_ID = :P106_LINEID AND TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P106_FABID,P106_LINEID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2167024690983958035)
,p_name=>'P106_WT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2167024244559958031)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2167027111281958059)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2167086827178537334)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2167027210584958060)
,p_event_id=>wwv_flow_imp.id(2167027111281958059)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2167086827178537334)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2167147570492718912)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P106_FABID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2167147706617718913)
,p_event_id=>wwv_flow_imp.id(2167147570492718912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var data = $x(''P106_FABID'');',
'console.log(data.value);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2168580116956136249)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2168580150871136250)
,p_event_id=>wwv_flow_imp.id(2168580116956136249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',106,''\7F51\683C\4EBA\5458\6279\91CF\914D\7F6E'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
