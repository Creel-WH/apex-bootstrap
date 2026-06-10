prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
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
 p_id=>84
,p_name=>unistr('\6280\80FD\8BBE\7F6E')
,p_alias=>unistr('\6280\80FD\8BBE\7F6E')
,p_step_title=>unistr('\6570\636E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2166746328981232446)
,p_plug_name=>unistr('\64CD\4F5C')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2166747821766232460)
,p_plug_name=>unistr('\4EBA\5458\6280\80FD\67E5\770B')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select B.TITLE, B.NAME USER_NAME, B.EXT_ORG_NAME, listagg(D.NAME, '','') SKILL_NAME',
'from TENANT_USER_SKILL_LIBRARY A',
'         inner join MPF_USER_DEPT_MAIN_ASSO_V B ON A.EXT_USER_ID = B.EXT_USER_ID and a.BASE_DEPT_ID = b.BASE_DEPT_ID',
'         INNER JOIN TENANT_LABEL_LIBRARY D ON A.LABEL_LIBRARY_ID = D.LABEL_LIBRARY_ID',
'WHERE A.TENANT_ID = :USERTENANT',
'  AND A.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND B.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND D.BASE_DEPT_ID = :BASE_DEPT_ID',
'group by B.TITLE, B.NAME, B.EXT_ORG_NAME;'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\4EBA\5458\6280\80FD\67E5\770B')
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2166723479706354512)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5934\8854')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2166723599824354513)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7528\6237\540D')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>32
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2166723735489354515)
,p_name=>'EXT_ORG_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\90E8\95E8')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2166723833454354516)
,p_name=>'SKILL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SKILL_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\6280\80FD\6807\7B7E')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2166747887291232461)
,p_internal_uid=>3461959468061550
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2166729076663354615)
,p_interactive_grid_id=>wwv_flow_imp.id(2166747887291232461)
,p_static_id=>'34432'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2166729272516354615)
,p_report_id=>wwv_flow_imp.id(2166729076663354615)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2166729734673354619)
,p_view_id=>wwv_flow_imp.id(2166729272516354615)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2166723479706354512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2166730718160354624)
,p_view_id=>wwv_flow_imp.id(2166729272516354615)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2166723599824354513)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2166732459639354628)
,p_view_id=>wwv_flow_imp.id(2166729272516354615)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2166723735489354515)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2166733298978354630)
,p_view_id=>wwv_flow_imp.id(2166729272516354615)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2166723833454354516)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2258296584881590873)
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
 p_id=>wwv_flow_imp.id(2258297134652590873)
,p_plug_name=>unistr('\6280\80FD\8BBE\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.TENANT_ID,',
'       A.EXT_USER_ID,',
'       A.NAME,',
'       LISTAGG(C.NAME, '','')             LABEL_NAME,',
'       LISTAGG(C.LABEL_LIBRARY_ID, '','') LABEL_LIBRARY_ID',
'FROM MPF_SHARE_USER_V A',
'         LEFT JOIN TENANT_USER_SKILL_LIBRARY B ON A.EXT_USER_ID = B.EXT_USER_ID',
'         LEFT JOIN TENANT_LABEL_LIBRARY C ON C.LABEL_LIBRARY_ID = B.LABEL_LIBRARY_ID',
'WHERE A.LEADER_EXT_USER_ID = :APP_USER',
'  AND A.tenant_id = :USERTENANT',
'  AND A.IS_LEAVE = 0',
'--   AND A.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND B.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND C.BASE_DEPT_ID = :BASE_DEPT_ID',
'',
'GROUP BY A.TENANT_ID,',
'         A.EXT_USER_ID, A.NAME',
'',
'union',
'',
'SELECT A.TENANT_ID,',
'       A.EXT_USER_ID,',
'       A.NAME,',
'       LISTAGG(C.NAME, '','')             LABEL_NAME,',
'       LISTAGG(C.LABEL_LIBRARY_ID, '','') LABEL_LIBRARY_ID',
'FROM MPF_SHARE_USER_V A',
'         LEFT JOIN BAO_USER_DEPT_EXPAND D ON A.EXT_USER_ID = D.USER_ID',
'         LEFT JOIN TENANT_USER_SKILL_LIBRARY B ON A.EXT_USER_ID = B.EXT_USER_ID',
'         LEFT JOIN TENANT_LABEL_LIBRARY C ON C.LABEL_LIBRARY_ID = B.LABEL_LIBRARY_ID',
'WHERE D.DEPT_ID in (SELECT ext_org_id from APEX_LABEL_WHITE WHERE EXT_USER_ID = :APP_USER)',
'  AND A.tenant_id = :USERTENANT',
'  AND A.IS_LEAVE = 0',
'--   AND A.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND B.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND C.BASE_DEPT_ID = :BASE_DEPT_ID',
'',
'GROUP BY A.TENANT_ID,',
'A.EXT_USER_ID, A.NAME;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\6280\80FD\8BBE\7F6E')
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
 p_id=>wwv_flow_imp.id(2167023294617958021)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:103:P103_PUSERID:#EXT_USER_ID#'
,p_detail_link_text=>'<span role="img" aria-label="&#x7F16;&#x8F91;" class="fa fa-edit" title="&#x7F16;&#x8F91;"></span>'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>3737366794787110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167023357900958022)
,p_db_column_name=>'TENANT_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Tenant Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167023497376958023)
,p_db_column_name=>'EXT_USER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Ext User Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167023549457958024)
,p_db_column_name=>'NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\59D3\540D')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167023675154958025)
,p_db_column_name=>'LABEL_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\6807\7B7E\540D\79F0')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2167178508023965422)
,p_db_column_name=>'LABEL_LIBRARY_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Label Library Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2167059210328997563)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'37733'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TENANT_ID:EXT_USER_ID:NAME:LABEL_NAME:LABEL_LIBRARY_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2166746506592232447)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2166746328981232446)
,p_button_name=>unistr('\6DFB\52A0\5458\5DE5\6280\80FD\6807\7B7E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0\5458\5DE5\6280\80FD\6807\7B7E')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:CR,103::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166405353649300518)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166405444758300519)
,p_event_id=>wwv_flow_imp.id(2166405353649300518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',84,''\6280\80FD\6863\6848'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166726188002354539)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2258297134652590873)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166726283002354540)
,p_event_id=>wwv_flow_imp.id(2166726188002354539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2166747821766232460)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166726391906354541)
,p_event_id=>wwv_flow_imp.id(2166726188002354539)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2258297134652590873)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2166747165267232454)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APEX_PROC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    HTML VARCHAR2(100):='''';',
'    BEGIN',
'     HTML:= APEX_USER_SKILL_FUN(apex_application.g_x01,apex_application.g_x02,apex_application.g_x03);',
'      htp.prn(HTML);',
'',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41184024696447598
);
wwv_flow_imp.component_end;
end;
/
