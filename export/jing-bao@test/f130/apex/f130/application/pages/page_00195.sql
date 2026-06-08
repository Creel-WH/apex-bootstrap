prompt --application/pages/page_00195
begin
--   Manifest
--     PAGE: 00195
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
 p_id=>195
,p_name=>unistr('\4E8B\4EF6\5C0F\7C7B\5DE5\5355\56FE\8868')
,p_alias=>unistr('\4E8B\4EF6\5C0F\7C7B\5DE5\5355\56FE\8868')
,p_step_title=>unistr('\4E8B\4EF6\5C0F\7C7B\5DE5\5355\56FE\8868')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2225227625381167616)
,p_plug_name=>unistr('\4E8B\4EF6\5C0F\7C7B\5DE5\5355\56FE\8868')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2225228054620167616)
,p_region_id=>wwv_flow_imp.id(2225227625381167616)
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
,p_legend_position=>'bottom'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2225149347501219315)
,p_chart_id=>wwv_flow_imp.id(2225228054620167616)
,p_seq=>10
,p_name=>unistr('\5DE5\5355\91CF')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT AA.FAB_ID,AA.FAB_NAME,AA.FIRST_EVENT_CODE,AA.FIRST_NAME,AA.SECOND_EVENT_CODE,AA.SECOND_NAME,AA.COUNTS,ROUND(AA.COUNTS/BB.TCOUNTS,2)*100 PERS FROM ',
'(SELECT A.FAB_ID,B.NAME FAB_NAME,A.FIRST_EVENT_CODE,C.NAME FIRST_NAME,A.SECOND_EVENT_CODE,F.NAME SECOND_NAME,COUNT(*) COUNTS FROM TENANT_EVENT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'LEFT JOIN TENANT_EVENT_CATEGORY C ON A.FIRST_EVENT_CODE = C.CODE AND C.TENANT_ID = :USERTENANT AND C.BASE_DEPT_ID =:BASE_DEPT_ID',
'LEFT JOIN TENANT_EVENT_CATEGORY F ON A.SECOND_EVENT_CODE = F.CODE AND F.TENANT_ID = :USERTENANT AND F.BASE_DEPT_ID =:BASE_DEPT_ID',
' WHERE A.FAB_ID = :P195_FAB  AND A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID =:BASE_DEPT_ID AND A.FIRST_EVENT_CODE = :P195_FC_CODE ',
' GROUP BY  A.FAB_ID,B.NAME ,A.FIRST_EVENT_CODE,C.NAME,A.SECOND_EVENT_CODE,F.NAME ',
' ORDER BY COUNT(*) DESC) AA',
' LEFT JOIN (SELECT E.FAB_ID,E.FIRST_EVENT_CODE, COUNT(*) TCOUNTS FROM TENANT_EVENT E WHERE  E.TENANT_ID = :USERTENANT AND E.BASE_DEPT_ID =:BASE_DEPT_ID AND E.FIRST_EVENT_CODE=:P195_FC_CODE GROUP BY E.FAB_ID ,E.FIRST_EVENT_CODE) BB ON AA.FAB_ID = BB.F'
||'AB_ID AND AA.FIRST_EVENT_CODE = BB.FIRST_EVENT_CODE',
' WHERE ROWNUM <16;'))
,p_series_type=>'bar'
,p_items_value_column_name=>'COUNTS'
,p_items_label_column_name=>'SECOND_NAME'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:191:&SESSION.::&DEBUG.:191:P191_FAB,P191_FC_CODE,P191_SC_CODE:&FAB_ID.,&FIRST_EVENT_CODE.,&SECOND_EVENT_CODE.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2225148912682219311)
,p_chart_id=>wwv_flow_imp.id(2225228054620167616)
,p_seq=>20
,p_name=>unistr('\5360\6BD4\FF08%\FF09')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT AA.FAB_ID,AA.FAB_NAME,AA.FIRST_EVENT_CODE,AA.FIRST_NAME,AA.SECOND_EVENT_CODE,AA.SECOND_NAME,AA.COUNTS,ROUND(AA.COUNTS/BB.TCOUNTS,2)*100 PERS FROM ',
'(SELECT A.FAB_ID,B.NAME FAB_NAME,A.FIRST_EVENT_CODE,C.NAME FIRST_NAME,A.SECOND_EVENT_CODE,F.NAME SECOND_NAME,COUNT(*) COUNTS FROM TENANT_EVENT A',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'LEFT JOIN TENANT_EVENT_CATEGORY C ON A.FIRST_EVENT_CODE = C.CODE AND C.TENANT_ID = :USERTENANT AND C.BASE_DEPT_ID =:BASE_DEPT_ID',
'LEFT JOIN TENANT_EVENT_CATEGORY F ON A.SECOND_EVENT_CODE = F.CODE AND F.TENANT_ID = :USERTENANT AND F.BASE_DEPT_ID =:BASE_DEPT_ID',
' WHERE A.FAB_ID = :P195_FAB  AND A.TENANT_ID = :USERTENANT AND A.BASE_DEPT_ID=:BASE_DEPT_ID AND A.FIRST_EVENT_CODE = :P195_FC_CODE',
' GROUP BY  A.FAB_ID,B.NAME ,A.FIRST_EVENT_CODE,C.NAME,A.SECOND_EVENT_CODE,F.NAME ',
' ORDER BY COUNT(*) DESC) AA',
' LEFT JOIN (SELECT E.FAB_ID,E.FIRST_EVENT_CODE, COUNT(*) TCOUNTS FROM TENANT_EVENT E WHERE  E.TENANT_ID = :USERTENANT AND E.BASE_DEPT_ID =:BASE_DEPT_ID AND E.FIRST_EVENT_CODE=:P195_FC_CODE GROUP BY E.FAB_ID ,E.FIRST_EVENT_CODE) BB ON AA.FAB_ID = BB.F'
||'AB_ID AND AA.FIRST_EVENT_CODE = BB.FIRST_EVENT_CODE',
' WHERE ROWNUM <16;'))
,p_series_type=>'line'
,p_items_value_column_name=>'PERS'
,p_items_label_column_name=>'SECOND_NAME'
,p_color=>'#f47804'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
,p_link_target=>'f?p=&APP_ID.:191:&SESSION.::&DEBUG.:191:P191_FAB,P191_FC_CODE,P191_SC_CODE:&FAB_ID.,&FIRST_EVENT_CODE.,&SECOND_EVENT_CODE.'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2225228555570167615)
,p_chart_id=>wwv_flow_imp.id(2225228054620167616)
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
 p_id=>wwv_flow_imp.id(2225149000867219312)
,p_chart_id=>wwv_flow_imp.id(2225228054620167616)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
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
 p_id=>wwv_flow_imp.id(2225229141298167614)
,p_chart_id=>wwv_flow_imp.id(2225228054620167616)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225149146261219313)
,p_name=>'P195_FC_CODE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225149263469219314)
,p_name=>'P195_FAB'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/
