prompt --application/pages/page_00095
begin
--   Manifest
--     PAGE: 00095
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
 p_id=>95
,p_name=>unistr('\6676\8C79\56FE\8868\6C47\603B')
,p_alias=>unistr('\6676\8C79\56FE\8868\6C47\603B')
,p_step_title=>unistr('\6676\8C79\56FE\8868\6C47\603B')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2156855296648282495)
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
 p_id=>wwv_flow_imp.id(2243773595503948415)
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
 p_id=>wwv_flow_imp.id(2244329376813588929)
,p_plug_name=>unistr('\4E8B\4EF6\8DDF\8FDB\90E8\95E8\6392\884C')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>30
,p_plug_display_column=>1
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2244329775443588929)
,p_region_id=>wwv_flow_imp.id(2244329376813588929)
,p_chart_type=>'bar'
,p_title=>unistr('\4E8B\4EF6\8DDF\8FDB\90E8\95E8\6392\884C')
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2244331502372588930)
,p_chart_id=>wwv_flow_imp.id(2244329775443588929)
,p_seq=>10
,p_name=>unistr('\7CFB\5217 1')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ext_org_id,EXT_ORG_NAME,COUNT(*) COUNT FROM V_EVENT_FOLLOW_DEP where to_date(create_date,''yyyy-MM-dd'')>to_date(:P95_BEGIN,''yyyy-MM-dd'') AND to_date(create_date,''yyyy-MM-dd'')<to_date(:P95_END,''yyyy-MM-dd'')+1',
'AND TENANT_ID = :USERTENANT',
'-- AND BASE_DEPT_ID = :BASE_DEPT_ID',
'GROUP BY ext_org_id,EXT_ORG_NAME ',
'ORDER BY COUNT(*) DESC;'))
,p_items_value_column_name=>'COUNT'
,p_group_short_desc_column_name=>'EXT_ORG_NAME'
,p_items_label_column_name=>'EXT_ORG_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::P80_BEGIN,P80_END,P80_ORG_ID:&P95_BEGIN.,&P95_END.,&EXT_ORG_ID.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2244330336395588930)
,p_chart_id=>wwv_flow_imp.id(2244329775443588929)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2244330856016588930)
,p_chart_id=>wwv_flow_imp.id(2244329775443588929)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2244332580885591572)
,p_plug_name=>unistr('\4E8B\4EF6\4E0A\62A5\90E8\95E8\6392\884C')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>1
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2244332734149591573)
,p_region_id=>wwv_flow_imp.id(2244332580885591572)
,p_chart_type=>'bar'
,p_title=>unistr('\4E8B\4EF6\4E0A\62A5\90E8\95E8\6392\884C')
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2244332832776591574)
,p_chart_id=>wwv_flow_imp.id(2244332734149591573)
,p_seq=>10
,p_name=>unistr('\7CFB\52172')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ext_org_id,EXT_ORG_NAME,COUNT(*) COUNT FROM V_EVENT_SUBMIT_DEP where to_date(create_date,''yyyy-MM-dd'')>to_date(:P95_BEGIN,''yyyy-MM-dd'') AND to_date(create_date,''yyyy-MM-dd'')<to_date(:P95_END,''yyyy-MM-dd'')+1',
'AND TENANT_ID = :USERTENANT',
'-- AND BASE_DEPT_ID = :BASE_DEPT_ID',
'GROUP BY ext_org_id,EXT_ORG_NAME ',
'ORDER BY COUNT(*) DESC ;'))
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'EXT_ORG_NAME'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.::P82_BEGIN,P82_END,P82_ORG_ID:&P95_BEGIN.,&P95_END.,&EXT_ORG_ID.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2244332853784591575)
,p_chart_id=>wwv_flow_imp.id(2244332734149591573)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2244333008510591576)
,p_chart_id=>wwv_flow_imp.id(2244332734149591573)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2244333068326591577)
,p_plug_name=>unistr('\6676\8C79\4E8B\4EF6\8D70\52BF\56FE')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2244333210997591578)
,p_region_id=>wwv_flow_imp.id(2244333068326591577)
,p_chart_type=>'combo'
,p_title=>unistr('\6676\8C79\4E8B\4EF6\8D70\52BF\56FE')
,p_height=>'400'
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'smooth'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
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
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2244333288315591579)
,p_chart_id=>wwv_flow_imp.id(2244333210997591578)
,p_seq=>10
,p_name=>unistr('\7CFB\52173')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CREATE_DATE ,COUNT(*) COUNT  FROM v_event_step',
'WHERE FAB_NAME =:P95_FAB AND to_date(create_date,''yyyy-MM-dd'')>to_date(:P95_BEGIN,''yyyy-MM-dd'') AND to_date(create_date,''yyyy-MM-dd'')<to_date(:P95_END,''yyyy-MM-dd'')+1',
'AND TENANT_ID = :USERTENANT',
'-- AND BASE_DEPT_ID = :BASE_DEPT_ID',
'GROUP BY CREATE_DATE',
'ORDER BY to_date(create_date,''yyyy-MM-dd'') ASC;'))
,p_series_type=>'bar'
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'CREATE_DATE'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_items_label_font_color=>'#FFFCFF'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2244335437296591600)
,p_chart_id=>wwv_flow_imp.id(2244333210997591578)
,p_seq=>20
,p_name=>unistr('\6298\7EBF\56FE')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CREATE_DATE ,COUNT(*) COUNT  FROM v_event_step',
'WHERE FAB_NAME =:P95_FAB AND to_date(create_date,''yyyy-MM-dd'')>to_date(:P95_BEGIN,''yyyy-MM-dd'') AND to_date(create_date,''yyyy-MM-dd'')<to_date(:P95_END,''yyyy-MM-dd'')+1',
'AND TENANT_ID = :USERTENANT',
'-- AND BASE_DEPT_ID = :BASE_DEPT_ID',
'GROUP BY CREATE_DATE',
'ORDER BY to_date(create_date,''yyyy-MM-dd'') ASC;'))
,p_series_type=>'line'
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'CREATE_DATE'
,p_color=>'#26E61C'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2244333395977591580)
,p_chart_id=>wwv_flow_imp.id(2244333210997591578)
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
,p_tick_label_font_style=>'normal'
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
 p_id=>wwv_flow_imp.id(2244333468637591581)
,p_chart_id=>wwv_flow_imp.id(2244333210997591578)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2244333569348591582)
,p_plug_name=>unistr('\4E8B\4EF6\5355\4EBA/\591A\4EBA\8DDF\8FDB\7387')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2244333711824591583)
,p_region_id=>wwv_flow_imp.id(2244333569348591582)
,p_chart_type=>'pie'
,p_title=>unistr('\4E8B\4EF6\5355\4EBA/\591A\4EBA\8DDF\8FDB\7387')
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2244333760062591584)
,p_chart_id=>wwv_flow_imp.id(2244333711824591583)
,p_seq=>10
,p_name=>unistr('\8DDF\8FDB\7387')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT FAB_NAME||''/\5355\4EBA\8DDF\8FDB\7387'' AS LABEL,S_COUNT COUNT FROM('),
'SELECT COUNT(*) S_COUNT,FAB_NAME FROM V_EVENT_FOLLOW_PER WHERE COUNT<=1 AND FAB_NAME=:P95_FAB ',
'-- AND BASE_DEPT_ID = :BASE_DEPT_ID',
'AND CREATE_DATE>to_date(:P95_BEGIN,''yyyy-MM-dd'') AND CREATE_DATE<to_date(:P95_END,''yyyy-MM-dd'')+1',
'AND TENANT_ID = :USERTENANT',
'GROUP BY FAB_NAME',
' )',
' UNION ALL',
unistr(' SELECT FAB_NAME||''/\591A\4EBA\8DDF\8FDB\7387'' AS LABEL,S_COUNT COUNT FROM('),
'SELECT COUNT(*) S_COUNT,FAB_NAME FROM V_EVENT_FOLLOW_PER WHERE COUNT>1 AND FAB_NAME=:P95_FAB',
'-- AND BASE_DEPT_ID = :BASE_DEPT_ID',
' AND CREATE_DATE>to_date(:P95_BEGIN,''yyyy-MM-dd'') AND CREATE_DATE<to_date(:P95_END,''yyyy-MM-dd'')+1',
'AND TENANT_ID = :USERTENANT',
'GROUP BY FAB_NAME',
' );'))
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2244334090366591587)
,p_plug_name=>unistr('\4E8B\4EF6\53D6\6D88/\89E3\51B3\7387')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2244334204655591588)
,p_region_id=>wwv_flow_imp.id(2244334090366591587)
,p_chart_type=>'pie'
,p_title=>unistr('\4E8B\4EF6\53D6\6D88/\89E3\51B3\7387')
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2244334252991591589)
,p_chart_id=>wwv_flow_imp.id(2244334204655591588)
,p_seq=>10
,p_name=>unistr('\89E3\51B3\7387')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT FAB_NAME||''/\4E8B\4EF6\53D6\6D88\7387'' AS LABEL,S_COUNT COUNT FROM('),
'SELECT COUNT(*) S_COUNT,FAB_NAME FROM V_EVENT_RESOLVE_PER WHERE STATUS=''CLOSED'' AND FAB_NAME=:P95_FAB',
'-- AND BASE_DEPT_ID = :BASE_DEPT_ID',
' AND CREATE_DATE>to_date(:P95_BEGIN,''yyyy-MM-dd'') AND CREATE_DATE<to_date(:P95_END,''yyyy-MM-dd'')+1',
'AND TENANT_ID = :USERTENANT',
'GROUP BY FAB_NAME',
' )',
' UNION ALL',
unistr(' SELECT FAB_NAME||''/\4E8B\4EF6\89E3\51B3\7387'' AS LABEL,S_COUNT COUNT FROM('),
'SELECT COUNT(*) S_COUNT,FAB_NAME FROM V_EVENT_RESOLVE_PER WHERE STATUS=''RESOLVED'' AND FAB_NAME=:P95_FAB',
'-- AND BASE_DEPT_ID = :BASE_DEPT_ID',
' AND CREATE_DATE>to_date(:P95_BEGIN,''yyyy-MM-dd'') AND CREATE_DATE<to_date(:P95_END,''yyyy-MM-dd'')+1',
'AND TENANT_ID = :USERTENANT',
'GROUP BY FAB_NAME',
' );'))
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2244334601768591592)
,p_plug_name=>unistr('\4E8B\4EF6\95EE\9898\7C7B\578B\7EDF\8BA1')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2244334711313591593)
,p_region_id=>wwv_flow_imp.id(2244334601768591592)
,p_chart_type=>'pie'
,p_title=>unistr('\4E8B\4EF6\95EE\9898\7C7B\578B\7EDF\8BA1')
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
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
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2244334802587591594)
,p_chart_id=>wwv_flow_imp.id(2244334711313591593)
,p_seq=>10
,p_name=>unistr('\7C7B\578B')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FIRST_EVENT_CODE, FAB_NAME || ''-'' || NAME, COUNT(*) COUNT',
'FROM V_EVENT_CALSS',
'WHERE CREATE_DATE > to_date(:P95_BEGIN, ''yyyy-MM-dd'')',
'  AND CREATE_DATE < to_date(:P95_END, ''yyyy-MM-dd'') + 1',
'  AND FAB_NAME = :P95_FAB',
'  AND TENANT_ID = :USERTENANT',
'-- AND BASE_DEPT_ID = :BASE_DEPT_ID',
'GROUP BY FIRST_EVENT_CODE, NAME, FAB_NAME;'))
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'FAB_NAME||''-''||NAME'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2244335103114591597)
,p_plug_name=>unistr('\4E8B\4EF6\70ED\529B\56FE')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BB.LINE_NAME x_axis_value, BB.OP_NAME y_axis_value, BB.COUNT heat_value',
'FROM (SELECT DISTINCT AA.LINE_NAME,',
'                      AA.OP_NAME,',
'                      (',
'                          CASE',
'                              WHEN GG.COUNT IS NULL THEN 0',
'                              ELSE GG.COUNT',
'                              END',
'                          ) COUNT,',
'                      GG.LINEID,',
'                      GG.OPID',
'      FROM (SELECT A.NAME OP_NAME, B.NAME LINE_NAME',
'            FROM (SELECT A.NAME, B.NAME FND_NAME, A.SORT_NUM',
'                  FROM FND_AREAS A',
'                           LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'                  WHERE A.TYPE = 1',
'                    AND B.NAME = :P95_FAB',
'                    AND A.BASE_DEPT_ID = :BASE_DEPT_ID',
'                    AND B.BASE_DEPT_ID = :BASE_DEPT_ID',
'                  ORDER BY A.SORT_NUM ASC) A,',
'                 (SELECT A.NAME, B.NAME FND_NAME, A.SORT_NUM',
'                  FROM FND_AREAS A',
'                           LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'                  WHERE A.TYPE = 2',
'                    AND B.NAME = :P95_FAB',
'                    AND A.BASE_DEPT_ID = :BASE_DEPT_ID',
'                    AND B.BASE_DEPT_ID = :BASE_DEPT_ID',
'                  ORDER BY A.SORT_NUM ASC) B) AA',
'               LEFT JOIN',
'           (SELECT F1.NAME     FND_NAME,',
'                   G1.NAME     OP_NAME,',
'                   G2.NAME     LINE_NAME,',
'                   G2.SORT_NUM LINEID,',
'                   G1.SORT_NUM OPID,',
'                   COUNT(*)    COUNT',
'            FROM TENANT_EVENT A1',
'                     LEFT JOIN FND_FAB F1 ON A1.FAB_ID = F1.FAB_ID',
'                     LEFT JOIN FND_AREAS G1 ON A1.MAP_AREA_X_ID = G1.AREA_ID AND G1.TYPE = 1 AND G1.DEL_FLAG = 0',
'                     LEFT JOIN FND_AREAS G2 ON A1.MAP_AREA_Y_ID = G2.AREA_ID AND G2.TYPE = 2 AND G2.DEL_FLAG = 0',
'            WHERE F1.NAME = :P95_FAB',
'              AND A1.BASE_DEPT_ID = :BASE_DEPT_ID',
'              AND F1.BASE_DEPT_ID = :BASE_DEPT_ID',
'              AND G1.BASE_DEPT_ID = :BASE_DEPT_ID',
'              AND G2.BASE_DEPT_ID = :BASE_DEPT_ID',
'              AND A1.BEGIN_TIME > TO_DATE(:P95_BEGIN, ''yyyy-MM-dd'')',
'              AND A1.BEGIN_TIME < TO_DATE(:P95_END, ''yyyy-MM-dd'') + 1',
'            GROUP BY F1.NAME, G1.NAME, G2.NAME, G2.SORT_NUM, G1.SORT_NUM) GG',
'           ON AA.OP_NAME = GG.OP_NAME AND AA.LINE_NAME = GG.LINE_NAME',
'      ORDER BY GG.LINEID ASC, GG.OPID ASC) BB',
'ORDER BY BB.LINEID, BB.OPID',
';'))
,p_plug_source_type=>'PLUGIN_ORCLKING.HEAT.MAP.CHART'
,p_required_patch=>-wwv_flow_imp.id(2130883247292644920)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '600',
  'attribute_02', '400',
  'attribute_03', unistr('\4E8B\4EF6\6C47\603B\70ED\529B\56FE'))).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244332404492591570)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2243773595503948415)
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
 p_id=>wwv_flow_imp.id(2244332225138591568)
,p_name=>'P95_BEGIN'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2243773595503948415)
,p_item_default=>'SYSDATE-7'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\5F00\59CB\65E5\671F')
,p_format_mask=>'yyyy-MM-dd'
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
 p_id=>wwv_flow_imp.id(2244332319346591569)
,p_name=>'P95_END'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2243773595503948415)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\622A\6B62\65E5\671F')
,p_format_mask=>'yyyy-MM-dd'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244335236404591598)
,p_name=>'P95_FAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2243773595503948415)
,p_item_default=>'SELECT NAME K,NAME V FROM FND_FAB WHERE TENANT_ID = :USERTENANT AND DEL_FLAG = 0 AND ROWNUM = 1 AND BASE_DEPT_ID = :BASE_DEPT_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT NAME K,NAME V FROM FND_FAB WHERE TENANT_ID = :USERTENANT AND DEL_FLAG = 0 AND BASE_DEPT_ID = :BASE_DEPT_ID'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2150904928420574403)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150904992508574404)
,p_event_id=>wwv_flow_imp.id(2150904928420574403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',95,''\6676\8C79\56FE\8868\6C47\603B'');'),
'end;'))
,p_attribute_02=>'P95_BEGIN,P95_END,P95_FAB'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/
