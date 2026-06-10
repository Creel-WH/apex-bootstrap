prompt --application/pages/page_00210
begin
--   Manifest
--     PAGE: 00210
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
 p_id=>210
,p_name=>unistr('\73ED\6B21\6570\636E\7EDF\8BA1\8868')
,p_alias=>unistr('\73ED\6B21\6570\636E\7EDF\8BA1\8868')
,p_step_title=>unistr('\73ED\6B21\6570\636E\7EDF\8BA1\8868')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2166254467680890640)
,p_plug_name=>unistr('\73ED\6B21\6253\5361\56FE\8868')
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2166254547156890641)
,p_region_id=>wwv_flow_imp.id(2166254467680890640)
,p_chart_type=>'combo'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_fill_multi_series_gaps=>false
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2166254596734890642)
,p_chart_id=>wwv_flow_imp.id(2166254547156890641)
,p_seq=>10
,p_name=>unistr('\7EC4\4EF6\4E00\5382\767D\73ED')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM (',
'SELECT B.NAME ||CASE ',
unistr('WHEN A.WORK_SHIFT=''DAY_SHIFT'' THEN ''\767D\73ED'''),
unistr('  ELSE ''\591C\73ED'' END FAB_NAME,TO_CHAR(A.WORK_DATE,''YYYY-MM-DD'') WORK_DATE,'),
'    CASE ',
'     WHEN (:P210_STATUS=''DUTY_USER_COUNT'') THEN SUM(A.DUTY_USER_COUNT) ',
'       WHEN (:P210_STATUS=''MAIN_WORKER_COUNT'') THEN SUM(A.MAIN_WORKER_COUNT)',
'        WHEN (:P210_STATUS=''NOT_DUTY_USER_COUNT'') THEN SUM(A.NOT_DUTY_USER_COUNT)',
'          WHEN (:P210_STATUS=''NOT_ARRIVE_COUNT'') THEN SUM(A.NOT_ARRIVE_COUNT )',
'             ELSE   SUM(A.DUTY_USER_COUNT) END TOTAL_COUNT FROM TENANT_HISTORY_FACTORY_ATTENDANCE_RECORD_COUNT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.WORK_DATE>= TO_DATE(:P210_BEGIN,''YYYY-MM-DD'') AND A.WORK_DATE< TO_DATE(:P210_END,''YYYY-MM-DD'') + 1 AND A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID',
'GROUP BY B.NAME,A.WORK_SHIFT,TO_CHAR(A.WORK_DATE,''YYYY-MM-DD'')',
'ORDER BY A.WORK_SHIFT ASC',
unistr(') PIVOT ( SUM(TOTAL_COUNT) FOR FAB_NAME IN (''\7EC4\4EF6\4E00\5382\767D\73ED''))'),
'ORDER BY WORK_DATE ASC;'))
,p_ajax_items_to_submit=>'P210_BEGIN,P210_END,P210_STATUS'
,p_series_type=>'line'
,p_items_value_column_name=>unistr('''\7EC4\4EF6\4E00\5382\767D\73ED''')
,p_items_label_column_name=>'WORK_DATE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2166255012906890646)
,p_chart_id=>wwv_flow_imp.id(2166254547156890641)
,p_seq=>20
,p_name=>unistr('\7EC4\4EF6\4E00\5382\591C\73ED')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM (',
'SELECT B.NAME ||CASE ',
unistr('WHEN A.WORK_SHIFT=''DAY_SHIFT'' THEN ''\767D\73ED'''),
unistr('  ELSE ''\591C\73ED'' END FAB_NAME,TO_CHAR(A.WORK_DATE,''YYYY-MM-DD'') WORK_DATE,'),
'    CASE ',
'     WHEN (:P210_STATUS=''DUTY_USER_COUNT'') THEN SUM(A.DUTY_USER_COUNT) ',
'       WHEN (:P210_STATUS=''MAIN_WORKER_COUNT'') THEN SUM(A.MAIN_WORKER_COUNT)',
'        WHEN (:P210_STATUS=''NOT_DUTY_USER_COUNT'') THEN SUM(A.NOT_DUTY_USER_COUNT)',
'          WHEN (:P210_STATUS=''NOT_ARRIVE_COUNT'') THEN SUM(A.NOT_ARRIVE_COUNT )',
'             ELSE   SUM(A.DUTY_USER_COUNT) END TOTAL_COUNT FROM TENANT_HISTORY_FACTORY_ATTENDANCE_RECORD_COUNT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.WORK_DATE>= TO_DATE(:P210_BEGIN,''YYYY-MM-DD'') AND A.WORK_DATE< TO_DATE(:P210_END,''YYYY-MM-DD'') + 1 AND A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID',
'GROUP BY B.NAME,A.WORK_SHIFT,TO_CHAR(A.WORK_DATE,''YYYY-MM-DD'')',
'ORDER BY A.WORK_SHIFT ASC',
unistr(') PIVOT ( SUM(TOTAL_COUNT) FOR FAB_NAME IN (''\7EC4\4EF6\4E00\5382\591C\73ED''))'),
'ORDER BY WORK_DATE ASC;'))
,p_ajax_items_to_submit=>'P210_BEGIN,P210_END,P210_STATUS'
,p_series_type=>'line'
,p_items_value_column_name=>unistr('''\7EC4\4EF6\4E00\5382\591C\73ED''')
,p_items_label_column_name=>'WORK_DATE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2166255099874890647)
,p_chart_id=>wwv_flow_imp.id(2166254547156890641)
,p_seq=>30
,p_name=>unistr('\7EC4\4EF6\4E8C\5382\767D\73ED')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM (',
'SELECT B.NAME ||CASE ',
unistr('WHEN A.WORK_SHIFT=''DAY_SHIFT'' THEN ''\767D\73ED'''),
unistr('  ELSE ''\591C\73ED'' END FAB_NAME,TO_CHAR(A.WORK_DATE,''YYYY-MM-DD'') WORK_DATE,'),
'    CASE ',
'     WHEN (:P210_STATUS=''DUTY_USER_COUNT'') THEN SUM(A.DUTY_USER_COUNT) ',
'       WHEN (:P210_STATUS=''MAIN_WORKER_COUNT'') THEN SUM(A.MAIN_WORKER_COUNT)',
'        WHEN (:P210_STATUS=''NOT_DUTY_USER_COUNT'') THEN SUM(A.NOT_DUTY_USER_COUNT)',
'          WHEN (:P210_STATUS=''NOT_ARRIVE_COUNT'') THEN SUM(A.NOT_ARRIVE_COUNT )',
'             ELSE   SUM(A.DUTY_USER_COUNT) END TOTAL_COUNT FROM TENANT_HISTORY_FACTORY_ATTENDANCE_RECORD_COUNT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.WORK_DATE>= TO_DATE(:P210_BEGIN,''YYYY-MM-DD'') AND A.WORK_DATE< TO_DATE(:P210_END,''YYYY-MM-DD'') + 1 AND A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID',
'GROUP BY B.NAME,A.WORK_SHIFT,TO_CHAR(A.WORK_DATE,''YYYY-MM-DD'')',
'ORDER BY A.WORK_SHIFT ASC',
unistr(') PIVOT ( SUM(TOTAL_COUNT) FOR FAB_NAME IN (''\7EC4\4EF6\4E8C\5382\767D\73ED''))'),
'ORDER BY WORK_DATE ASC;'))
,p_ajax_items_to_submit=>'P210_BEGIN,P210_END,P210_STATUS'
,p_series_type=>'line'
,p_items_value_column_name=>unistr('''\7EC4\4EF6\4E8C\5382\767D\73ED''')
,p_items_label_column_name=>'WORK_DATE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2166255202572890648)
,p_chart_id=>wwv_flow_imp.id(2166254547156890641)
,p_seq=>40
,p_name=>unistr('\7EC4\4EF6\4E8C\5382\591C\73ED')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM (',
'SELECT B.NAME ||CASE ',
unistr('WHEN A.WORK_SHIFT=''DAY_SHIFT'' THEN ''\767D\73ED'''),
unistr('  ELSE ''\591C\73ED'' END FAB_NAME,TO_CHAR(A.WORK_DATE,''YYYY-MM-DD'') WORK_DATE,'),
'    CASE ',
'     WHEN (:P210_STATUS=''DUTY_USER_COUNT'') THEN SUM(A.DUTY_USER_COUNT) ',
'       WHEN (:P210_STATUS=''MAIN_WORKER_COUNT'') THEN SUM(A.MAIN_WORKER_COUNT)',
'        WHEN (:P210_STATUS=''NOT_DUTY_USER_COUNT'') THEN SUM(A.NOT_DUTY_USER_COUNT)',
'          WHEN (:P210_STATUS=''NOT_ARRIVE_COUNT'') THEN SUM(A.NOT_ARRIVE_COUNT )',
'             ELSE   SUM(A.DUTY_USER_COUNT) END TOTAL_COUNT FROM TENANT_HISTORY_FACTORY_ATTENDANCE_RECORD_COUNT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.WORK_DATE>= TO_DATE(:P210_BEGIN,''YYYY-MM-DD'') AND A.WORK_DATE< TO_DATE(:P210_END,''YYYY-MM-DD'') + 1 AND A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID',
'GROUP BY B.NAME,A.WORK_SHIFT,TO_CHAR(A.WORK_DATE,''YYYY-MM-DD'')',
'ORDER BY A.WORK_SHIFT ASC',
unistr(') PIVOT ( SUM(TOTAL_COUNT) FOR FAB_NAME IN (''\7EC4\4EF6\4E8C\5382\591C\73ED''))'),
'ORDER BY WORK_DATE ASC;'))
,p_ajax_items_to_submit=>'P210_BEGIN,P210_END,P210_STATUS'
,p_series_type=>'line'
,p_items_value_column_name=>unistr('''\7EC4\4EF6\4E8C\5382\591C\73ED''')
,p_items_label_column_name=>'WORK_DATE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2166254812330890644)
,p_chart_id=>wwv_flow_imp.id(2166254547156890641)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2166254767812890643)
,p_chart_id=>wwv_flow_imp.id(2166254547156890641)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2181698157501632722)
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
 p_id=>wwv_flow_imp.id(2181698750748632720)
,p_plug_name=>unistr('\73ED\6B21\6570\636E\7EDF\8BA1\8868')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330924417379485748)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM (',
'SELECT B.NAME ||CASE ',
unistr('WHEN A.WORK_SHIFT=''DAY_SHIFT'' THEN ''\767D\73ED'''),
unistr('  ELSE ''\591C\73ED'' END FAB_NAME,TO_CHAR(A.WORK_DATE,''YYYY-MM-DD'') WORK_DATE,'),
'    CASE ',
'     WHEN (:P210_STATUS=''DUTY_USER_COUNT'') THEN SUM(A.DUTY_USER_COUNT) ',
'       WHEN (:P210_STATUS=''MAIN_WORKER_COUNT'') THEN SUM(A.MAIN_WORKER_COUNT)',
'        WHEN (:P210_STATUS=''NOT_DUTY_USER_COUNT'') THEN SUM(A.NOT_DUTY_USER_COUNT)',
'          WHEN (:P210_STATUS=''NOT_ARRIVE_COUNT'') THEN SUM(A.NOT_ARRIVE_COUNT )',
'             ELSE   SUM(A.DUTY_USER_COUNT) END TOTAL_COUNT FROM TENANT_HISTORY_FACTORY_ATTENDANCE_RECORD_COUNT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.WORK_DATE>= TO_DATE(:P210_BEGIN,''YYYY-MM-DD'') AND A.WORK_DATE<TO_DATE(:P210_END,''YYYY-MM-DD'') + 1 AND A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID',
'GROUP BY B.NAME,A.WORK_SHIFT,TO_CHAR(A.WORK_DATE,''YYYY-MM-DD'')',
'ORDER BY A.WORK_SHIFT ASC',
unistr(') PIVOT ( SUM(TOTAL_COUNT) FOR FAB_NAME IN (''\7EC4\4EF6\4E00\5382\767D\73ED'',''\7EC4\4EF6\4E00\5382\591C\73ED'',''\7EC4\4EF6\4E8C\5382\767D\73ED'',''\7EC4\4EF6\4E8C\5382\591C\73ED''))'),
'ORDER BY WORK_DATE ASC;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P210_BEGIN,P210_END,P210_STATUS'
,p_prn_page_header=>unistr('\73ED\6B21\6570\636E\7EDF\8BA1\8868')
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2181698818925632720)
,p_name=>unistr('\73ED\6B21\6570\636E\7EDF\8BA1\8868')
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
,p_internal_uid=>27254947263198315
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2181699634817632712)
,p_db_column_name=>unistr('''\7EC4\4EF6\4E00\5382\767D\73ED''')
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('\7EC4\4EF6\4E00\5382\767D\73ED')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2181700435521632711)
,p_db_column_name=>unistr('''\7EC4\4EF6\4E8C\5382\767D\73ED''')
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('\7EC4\4EF6\4E8C\5382\767D\73ED')
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2166255466247890650)
,p_db_column_name=>unistr('''\7EC4\4EF6\4E00\5382\591C\73ED''')
,p_display_order=>14
,p_column_identifier=>'F'
,p_column_label=>unistr('\7EC4\4EF6\4E00\5382\591C\73ED')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2166255515189890651)
,p_db_column_name=>unistr('''\7EC4\4EF6\4E8C\5382\591C\73ED''')
,p_display_order=>24
,p_column_identifier=>'G'
,p_column_label=>unistr('\7EC4\4EF6\4E8C\5382\591C\73ED')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2166255826388890654)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>34
,p_column_identifier=>'H'
,p_column_label=>unistr(' \65E5\671F')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2181704683130617134)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'272609'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('WORK_DATE:''\7EC4\4EF6\4E00\5382\767D\73ED'':''\7EC4\4EF6\4E8C\5382\767D\73ED'':''\7EC4\4EF6\4E00\5382\591C\73ED'':''\7EC4\4EF6\4E8C\5382\591C\73ED'':')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2166254361136890639)
,p_button_sequence=>50
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2166254171040890637)
,p_name=>'P210_BEGIN'
,p_item_sequence=>10
,p_item_default=>'SYSDATE-6'
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
 p_id=>wwv_flow_imp.id(2166254250990890638)
,p_name=>'P210_END'
,p_item_sequence=>30
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\622A\81F3\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2166255609040890652)
,p_name=>'P210_STATUS'
,p_item_sequence=>40
,p_item_default=>'DUTY_USER_COUNT'
,p_prompt=>unistr('\7EDF\8BA1\7C7B\578B')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\5B9E\9645\5230\5C97\4EBA\6570;DUTY_USER_COUNT,\4E00\7EBF\6253\5361\4EBA\6570;MAIN_WORKER_COUNT,\7F3A\5C97\4EBA\6570;NOT_DUTY_USER_COUNT,\672A\914D\7F6E\5C97\4F4D\4EBA\6570;NOT_ARRIVE_COUNT')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2174060950294517249)
,p_name=>unistr('\67E5\8BE2')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2166254361136890639)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174061047652517250)
,p_event_id=>wwv_flow_imp.id(2174060950294517249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2166254467680890640)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174061090251517251)
,p_event_id=>wwv_flow_imp.id(2174060950294517249)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2181698750748632720)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
