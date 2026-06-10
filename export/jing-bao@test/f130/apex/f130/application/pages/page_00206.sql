prompt --application/pages/page_00206
begin
--   Manifest
--     PAGE: 00206
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
 p_id=>206
,p_name=>unistr('\8BBE\5907\5E73\5747\65F6\95F4\95F4\9694/\4FEE\590D\65F6\957F')
,p_alias=>unistr('\8BBE\5907\5E73\5747\65F6\95F4\95F4\9694-\4FEE\590D\65F6\957F')
,p_step_title=>unistr('\8BBE\5907\5E73\5747\65F6\95F4\95F4\9694/\4FEE\590D\65F6\957F')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2161485373416489317)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2330871170826485717)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2330990162870485778)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2161486033028489315)
,p_plug_name=>unistr('\8BBE\5907\5E73\5747\65F6\95F4\95F4\9694/\4FEE\590D\65F6\957F')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330924417379485748)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>'SELECT * FROM TABLE(APEX_PAK_DEVICE_DIST.GET_DATA1(TENANTID => :USERTENANT,ORGID => :P206_ORGID, BTIME => :P206_BTIME,ETIME => :P206_ETIME));'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>unistr('\8BBE\5907\5E73\5747\65F6\95F4\95F4\9694/\4FEE\590D\65F6\957F')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2161486097897489315)
,p_name=>unistr('\8BBE\5907\5E73\5747\65F6\95F4\95F4\9694/\4FEE\590D\65F6\957F')
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
,p_internal_uid=>7042226235054910
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2161486511161489312)
,p_db_column_name=>'DEVICENAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>unistr('\8BBE\5907\540D\79F0')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2161486899635489310)
,p_db_column_name=>'DEVICECODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\8BBE\5907\7F16\53F7')
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2161487299964489310)
,p_db_column_name=>'MTBF'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('MTBF(\5E73\5747\65E0\6545\969C\65F6\957F)\95F4\9694\65F6\957F')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2161487725042489310)
,p_db_column_name=>'MTTR'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('MTTR(\4FEE\590D\5E73\5747\65F6\957F)')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2158549050635183743)
,p_db_column_name=>'ORGNAME'
,p_display_order=>14
,p_column_identifier=>'E'
,p_column_label=>unistr('\90E8\95E8\540D\79F0')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2161490740163471545)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'70469'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEVICENAME:DEVICECODE:MTBF:MTTR'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2158548336247183736)
,p_button_sequence=>50
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2158548156782183734)
,p_name=>'P206_BTIME'
,p_item_sequence=>10
,p_item_default=>'sysdate-7'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\5F00\59CB\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2158548252921183735)
,p_name=>'P206_ETIME'
,p_item_sequence=>30
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\622A\6B62\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2158548969511183742)
,p_name=>'P206_ORGID'
,p_item_sequence=>40
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,EXT_ORG_ID FROM MPF_SHARE_DEPT_V WHERE TENANT_ID= :USERTENANT AND BASE_DEPT_ID = :BASE_DEPT_ID;'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp.component_end;
end;
/
