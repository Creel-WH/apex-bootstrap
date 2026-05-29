prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
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
 p_id=>59
,p_name=>unistr('\4E8B\4EF6\8D70\52BF\56FE')
,p_alias=>unistr('\4E8B\4EF6\8D70\52BF\56FE')
,p_step_title=>unistr('\4E8B\4EF6\8D70\52BF\56FE')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2156854876260282491)
,p_plug_name=>unistr('\65B0\5EFA')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2286629353441554723)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2286748345485554784)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2237228080816376607)
,p_plug_name=>unistr('\67E5\8BE2')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2237972071883648900)
,p_plug_name=>unistr('\4E8B\4EF6\8D70\52BF\56FE')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2237972489602648901)
,p_region_id=>wwv_flow_imp.id(2237972071883648900)
,p_chart_type=>'line'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>1
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2237974150355648902)
,p_chart_id=>wwv_flow_imp.id(2237972489602648901)
,p_static_id=>'barchart'
,p_seq=>10
,p_name=>unistr('\8D70\52BF\56FE')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(BEGIN_TIME,''yyyy-MM-dd'') as label,COUNT(*) as value from tenant_event where BEGIN_TIME>to_date(:P59_BEGIN,''yyyy-MM-dd'')',
'AND  BEGIN_TIME<to_date(:P59_END,''yyyy-MM-dd'')+1 AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID=:BASE_DEPT_ID',
'group by to_char(BEGIN_TIME,''yyyy-MM-dd'') ',
'order by to_char(BEGIN_TIME,''yyyy-MM-dd'') asc ;'))
,p_items_value_column_name=>'VALUE'
,p_group_short_desc_column_name=>'LABEL'
,p_items_label_column_name=>'LABEL'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2237973635450648901)
,p_chart_id=>wwv_flow_imp.id(2237972489602648901)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2237972946357648901)
,p_chart_id=>wwv_flow_imp.id(2237972489602648901)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>true
,p_zoom_order_weeks=>true
,p_zoom_order_months=>true
,p_zoom_order_quarters=>true
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2238008490735112378)
,p_plug_name=>unistr('\62A5\8868')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
unistr('A.EVENT_ID AS \95EE\9898ID,'),
unistr('D.NAME AS \4E0A\62A5\4EBA,'),
unistr('D.ext_org_name AS \4E0A\62A5\90E8\95E8,'),
unistr('A.description \95EE\9898\63CF\8FF0,'),
unistr('( CASE WHEN A.STATUS=''WAIT_RESOLVE'' THEN ''\7B49\5F85\89E3\51B3'''),
unistr('       WHEN A.STATUS=''FOLLOW'' THEN ''\8DDF\8FDB\95EE\9898'''),
unistr('         WHEN A.STATUS=''CLOSED'' THEN ''\95EE\9898\53D6\6D88'''),
unistr('           WHEN A.STATUS=''RESOLVED'' THEN ''\95EE\9898\89E3\51B3''  END ) \95EE\9898\72B6\6001,'),
unistr('C.NAME AS \8DDF\8FDB\4EBA,'),
unistr('C.ext_org_name AS \8DDF\8FDB\90E8\95E8,'),
'case ',
unistr('  WHEN a.affected_range=''ALL_LINES'' THEN  ''\6240\6709\4EA7\7EBF'''),
unistr('    WHEN A.AFFECTED_RANGE = ''CURRENT_LINE''  THEN ''\5F53\524D\4EA7\7EBF'''),
unistr('      WHEN A.AFFECTED_RANGE = ''CURRENT_SEAT'' THEN ''\5F53\524D\5C97\4F4D'''),
unistr('        WHEN A.AFFECTED_RANGE = ''ALL_SAME_SEAT'' THEN ''\8DE8\7EBF\540C\5C97'''),
unistr('          END \5F71\54CD\8303\56F4,'),
unistr('E.fab_name \4E0A\62A5\5382\533A,'),
unistr('E.map_area_x_name AS \4E0A\62A5\5DE5\5E8F,'),
unistr('E.MAP_AREA_Y_NAME AS \4E0A\62A5\5382\7EBF,'),
unistr('F.first_EVENT_CATEGORY_NAME \5927\7C7B,'),
unistr('F.second_EVENT_CATEGORY_NAME \5C0F\7C7B,'),
unistr('F.EVENT_PHENOMENON_NAME \95EE\9898\73B0\8C61,'),
unistr('B.EVENT_CAUSE \95EE\9898\539F\56E0,'),
unistr('B.EVENT_SOLUTION_SCHEME \89E3\51B3\65B9\6848,'),
unistr(''''' \89C4\907F\65B9\6848,'),
unistr('TO_CHAR(A.BEGIN_TIME,''yyyy-MM-dd hh24:mi:ss'')  \53D1\8D77\65F6\95F4,'),
unistr('TO_CHAR(A.END_TIME,''yyyy-MM-dd hh24:mi:ss'') \5B8C\7ED3\65F6\95F4,'),
'(',
'CASE',
' WHEN NVL(A.END_TIME,'''')='''' THEN ''0''',
'   ELSE ',
'      CASE',
'        WHEN ((apex_date_to_unix_ts(a.end_time)-apex_date_to_unix_ts(A.BEGIN_TIME))/3600) < 1 THEN ''0''||ROUND((apex_date_to_unix_ts(a.end_time)-apex_date_to_unix_ts(A.BEGIN_TIME))/3600 ,2)',
'          ELSE',
'          ''''||ROUND((apex_date_to_unix_ts(a.end_time)-apex_date_to_unix_ts(A.BEGIN_TIME))/3600 ,2)',
'          END',
'     END',
unistr(') \603B\7528\65F6'),
'',
'FROM TENANT_EVENT A',
'LEFT JOIN TENANT_EVENT_FOLLOW_USERS_ASSO_V B ON A.EVENT_ID = B.EVENT_ID',
'LEFT JOIN TENANT_EXT_USERS_ORG_MAIN_ASSO_V C ON B.EXT_USER_ID =C.EXT_USER_ID',
'LEFT JOIN TENANT_EXT_USERS_ORG_MAIN_ASSO_V D ON A.SUBMIT_USER_ID =D.EXT_USER_ID',
'LEFT JOIN FND_MAPS_AREAS_ASSO_V E ON A.MAP_ID = E.MAP_ID',
'LEFT JOIN TENANT_EVENT_LIBRARY_V F ON A.FIRST_EVENT_CODE = F.first_EVENT_CATEGORY_CODE AND A.SECOND_EVENT_CODE = F.second_EVENT_CATEGORY_CODE AND A.PHENOMENON_CODE = F.EVENT_PHENOMENON_CODE',
'--LEFT JOIN TENANT_EVENT_LIBRARY_V G ON A.SECOND_EVENT_CODE = G.second_EVENT_CATEGORY_CODE',
'--LEFT JOIN TENANT_EVENT_LIBRARY_V H ON A.PHENOMENON_CODE = H.EVENT_PHENOMENON_CODE',
'',
'WHERE A.BEGIN_TIME>to_date(:P59_BEGIN,''yyyy-MM-dd'')',
'AND  A.BEGIN_TIME<to_date(:P59_END,''yyyy-MM-dd'')+1 AND A.TENANT_ID = :USERTENANT',
'ORDER BY A.EVENT_ID DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\62A5\8868')
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
 p_id=>wwv_flow_imp.id(2238008585722112379)
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
,p_internal_uid=>90083744192222913
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238008666049112380)
,p_db_column_name=>unistr('\95EE\9898ID')
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\95EE\9898id')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238008833512112381)
,p_db_column_name=>unistr('\4E0A\62A5\4EBA')
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\4E0A\62A5\4EBA')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238008882866112382)
,p_db_column_name=>unistr('\4E0A\62A5\90E8\95E8')
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\4E0A\62A5\90E8\95E8')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009028629112383)
,p_db_column_name=>unistr('\95EE\9898\63CF\8FF0')
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\95EE\9898\63CF\8FF0')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009102009112384)
,p_db_column_name=>unistr('\95EE\9898\72B6\6001')
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>unistr('\95EE\9898\72B6\6001')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009145447112385)
,p_db_column_name=>unistr('\8DDF\8FDB\4EBA')
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>unistr('\8DDF\8FDB\4EBA')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009289076112386)
,p_db_column_name=>unistr('\8DDF\8FDB\90E8\95E8')
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('\8DDF\8FDB\90E8\95E8')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009349074112387)
,p_db_column_name=>unistr('\4E0A\62A5\5382\533A')
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>unistr('\4E0A\62A5\5382\533A')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009504081112388)
,p_db_column_name=>unistr('\4E0A\62A5\5DE5\5E8F')
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>unistr('\4E0A\62A5\5DE5\5E8F')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009574318112389)
,p_db_column_name=>unistr('\4E0A\62A5\5382\7EBF')
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('\4E0A\62A5\5382\7EBF')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009713351112390)
,p_db_column_name=>unistr('\5927\7C7B')
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('\5927\7C7B')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009835652112391)
,p_db_column_name=>unistr('\5C0F\7C7B')
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('\5C0F\7C7B')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009916284112392)
,p_db_column_name=>unistr('\95EE\9898\73B0\8C61')
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>unistr('\95EE\9898\73B0\8C61')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238009963208112393)
,p_db_column_name=>unistr('\95EE\9898\539F\56E0')
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('\95EE\9898\539F\56E0')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238010057631112394)
,p_db_column_name=>unistr('\89E3\51B3\65B9\6848')
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>unistr('\89E3\51B3\65B9\6848')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238010145482112395)
,p_db_column_name=>unistr('\89C4\907F\65B9\6848')
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>unistr('\89C4\907F\65B9\6848')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238010320841112396)
,p_db_column_name=>unistr('\53D1\8D77\65F6\95F4')
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>unistr('\53D1\8D77\65F6\95F4')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238010373376112397)
,p_db_column_name=>unistr('\5B8C\7ED3\65F6\95F4')
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>unistr('\5B8C\7ED3\65F6\95F4')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238010492961112398)
,p_db_column_name=>unistr('\603B\7528\65F6')
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>unistr('\603B\7528\65F6')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2151661517663676569)
,p_db_column_name=>unistr('\5F71\54CD\8303\56F4')
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>unistr('\5F71\54CD\8303\56F4')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2238146792029367028)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'902220'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('\95EE\9898ID:\4E0A\62A5\4EBA:\4E0A\62A5\90E8\95E8:\95EE\9898\63CF\8FF0:\95EE\9898\72B6\6001:\8DDF\8FDB\4EBA:\8DDF\8FDB\90E8\95E8:\4E0A\62A5\5382\533A:\4E0A\62A5\5DE5\5E8F:\4E0A\62A5\5382\7EBF:\5927\7C7B:\5C0F\7C7B:\95EE\9898\73B0\8C61:\95EE\9898\539F\56E0:\89E3\51B3\65B9\6848:\89C4\907F\65B9\6848:\53D1\8D77\65F6\95F4:\5B8C\7ED3\65F6\95F4:\603B\7528\65F6:\5F71\54CD\8303\56F4')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2238010570620112399)
,p_plug_name=>unistr('\603B\6570')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''\95EE\9898\4E8B\4EF6\603B\6570'' \7EDF\8BA1 ,COUNT(*) as \7EDF\8BA1\6570\91CF from tenant_event where BEGIN_TIME>to_date(:P59_BEGIN,''yyyy-MM-dd'')'),
'AND  BEGIN_TIME<to_date(:P59_END,''yyyy-MM-dd'')+1 AND TENANT_ID = :USERTENANT  AND BASE_DEPT_ID=:BASE_DEPT_ID',
'order by to_char(BEGIN_TIME,''yyyy-MM-dd'') asc ;'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\603B\6570')
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
 p_id=>wwv_flow_imp.id(2238010678813112400)
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
,p_internal_uid=>90085837283222934
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238010798541112401)
,p_db_column_name=>unistr('\7EDF\8BA1')
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\7EDF\8BA1')
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2238010898514112402)
,p_db_column_name=>unistr('\7EDF\8BA1\6570\91CF')
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\7EDF\8BA1\6570\91CF')
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2238149550089453833)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'902248'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('\7EDF\8BA1:\7EDF\8BA1\6570\91CF')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2237228427533376610)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2237228080816376607)
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2237228171961376608)
,p_name=>'P59_BEGIN'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2237228080816376607)
,p_prompt=>unistr('\5F00\59CB\65E5\671F')
,p_format_mask=>'yyyy-mm-dd'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2237228242743376609)
,p_name=>'P59_END'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2237228080816376607)
,p_prompt=>unistr('\622A\6B62\65E5\671F')
,p_format_mask=>'yyyy-mm-dd'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2151063893535114069)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151063969726114070)
,p_event_id=>wwv_flow_imp.id(2151063893535114069)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',59,''\4E8B\4EF6\8D70\52BF\56FE'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
