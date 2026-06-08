prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>unistr('\4E3B\9875')
,p_alias=>unistr('\4E3B\9875')
,p_step_title=>unistr('\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/echarts.min.js',
'#WORKSPACE_IMAGES#static/js/echarts-wordcloud.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$(function () {',
unistr('    $(''.container .row:eq(2)'').append(''<div class="col col-6  apex-col-auto col-end"><div role="region" aria-label="\5C0F\7C7B\8BCD\4E91" class="t-Region t-Region--scrollBody lto7245522231536644_0 js-apex-region"><div class="t-Region-header"><div class="t-Region-hea')
||unistr('derItems t-Region-headerItems--title"><span class="t-Region-headerIcon"><span class="t-Icon " aria-hidden="true"></span></span><h2 class="t-Region-title" data-apex-heading="">\9891\53D1\4E8B\4EF6\8BCD\4E91</h2></div><div class="t-Region-headerItems t-Region-headerItems--but')
||'tons"><span class="js-maximizeButtonContainer"></span></div></div><div class="t-Region-bodyWrap"><div class="t-Region-buttons t-Region-buttons--top"><div class="t-Region-buttons-left"></div><div class="t-Region-buttons-right"></div></div><div class="'
||'t-Region-body"><div id="container" class="oj-dvtbase oj-chart oj-component-initnode" role="application" tabindex="0" style="width: 100%; max-width: 100%; height: 300px; min-width: 50px; -webkit-tap-highlight-color: transparent; user-select: none; pos'
||'ition: relative;" aria-activedescendant="_dvtActiveElement765793785" _echarts_instance_="ec_1636364655380"><div class="oj-helper-detect-expansion"><div id="apex_test_sy" style="position: relative; width: 836px; height: 300px; padding: 0px; margin: 0p'
||'x; border-width: 0px; cursor: default;"></div></div></div></div><div class="t-Region-buttons t-Region-buttons--bottom"><div class="t-Region-buttons-left"></div><div class="t-Region-buttons-right"></div></div></div></div></div>'');',
unistr('    $(''#R8797056526966601_toolbar'').prepend(''<h2 class="t-Region-title" data-apex-heading style="font-size:16px;margin:8px 0;padding-left:8px;">\5728\9014\5DE5\5355\5217\8868</h2>'');'),
'})',
'',
'function onload(data) {',
'    var data = {',
'        value: data,',
unistr('        //\5C0F\9E1F\56FE\7247'),
'        image: "data:image/png;base64,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"',
'    }',
'    // console.log(data);',
'    var myChart = echarts.init(document.getElementById(''container''));',
'    var maskImage = new Image();',
'    maskImage.src = data.image',
'    maskImage.onload = function () {',
'        myChart.setOption({',
'            backgroundColor: ''#fff'',',
'            tooltip: {',
'                show: true',
'            },',
'            series: [{',
'                type: ''wordCloud'',',
unistr('                // \8BCD\4E91\6587\672C\4E4B\95F4\7684\8DDD\79BB, \8DDD\79BB\8D8A\5927\FF0C\5355\8BCD\4E4B\95F4\7684\95F4\8DDD\8D8A\5927, \5355\4F4D\50CF\7D20'),
'                gridSize: 5,',
unistr('                //\8BCD\4E91\6587\672C\5927\5C0F\8303\56F4,  \9ED8\8BA4\4E3A\6700\5C0F12\50CF\7D20\FF0C\6700\592760\50CF\7D20\3002'),
'                sizeRange: [15, 60],',
unistr('                // \8BCD\4E91\6587\5B57\65CB\8F6C\8303\56F4\548C\6B65\957F\3002 \6587\672C\5C06\901A\8FC7\65CB\8F6C\5728[-90\FF0C90]\8303\56F4\5185\968F\673A\65CB\8F6C\6B65\957F45\FF0C\5982\679C\90FD\8BBE\7F6E\4E3A 0 , \5219\662F\6C34\5E73\663E\793A'),
'                rotationRange: [-90, 90],',
'                rotationStep: 45,',
unistr('                //\8BBE\7F6E\4E3Atrue\53EF\4EE5\4F7F\5355\8BCD\90E8\5206\5728\753B\5E03\4E4B\5916\7ED8\5236, \5141\8BB8\7ED8\5236\5927\4E8E\753B\5E03\5927\5C0F\7684\5355\8BCD'),
'                drawOutOfBound: false,',
unistr('                //\81EA\5B9A\4E49\56FE\5F62\56FE\7247\FF0Cbase64\683C\5F0F'),
'                maskImage: maskImage,',
unistr('                // \6587\672C\6837\5F0F'),
'                textStyle: {',
unistr('                    //\56DE\8C03\51FD\6570\FF0C\8BBE\7F6E\968F\673A\989C\8272'),
'                    color: function () {',
'                        return ''rgb('' + [',
'                            Math.round(Math.random() * 255),',
'                            Math.round(Math.random() * 255),',
'                            Math.round(Math.random() * 255)',
'                        ].join('','') + '')'';',
'                    },',
unistr('                    // \9F20\6807hover\7684\7279\6548\6837\5F0F'),
'                    emphasis: {',
'                        shadowBlur: 10,',
'                        shadowColor: ''#333''',
'                    }',
'                },',
unistr('                // \8BCD\4E91\6574\4E2A\56FE\8868\653E\7F6E\7684\4F4D\7F6E \548C \5C3A\5BF8\5927\5C0F'),
'                left: ''center'',',
'                top: ''center'',',
'                width: ''80%'',',
'                height: ''90%'',',
'                right: null,',
'                bottom: null,',
unistr('                // data \6570\7EC4\683C\5F0F, \5FC5\987B\6709name\548Cvalue\5C5E\6027, '),
'                data: data.value',
'',
'            }]',
'        })',
'    }',
'}',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#apex_test_sy{',
'    width: 836px !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2228292439425006648)
,p_plug_name=>unistr('\4E2A\4EBA\80FD\529B')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>6
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2228292549491006649)
,p_region_id=>wwv_flow_imp.id(2228292439425006648)
,p_chart_type=>'bubble'
,p_height=>'300'
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
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
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
 p_id=>wwv_flow_imp.id(2228292638456006650)
,p_chart_id=>wwv_flow_imp.id(2228292549491006649)
,p_seq=>10
,p_name=>unistr('\6C14\6CE1\56FE')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT USER_NAME,SCORE,TOTAL,USE_TIME',
'  FROM (SELECT USER_NAME, SUM(SCORE) SCORE, COUNT(DISTINCT EVENT_ID) TOTAL,ROUND(SUM(USE_TIME)/COUNT(DISTINCT EVENT_ID),2) USE_TIME',
'          FROM (SELECT (SELECT NAME FROM MPF_SHARE_USER_V C WHERE C.EXT_USER_ID = A.EXT_USER_ID) USER_NAME,A.OPERATION,A.EVENT_ID,',
unistr('                       CASE WHEN A.OPERATION = ''\4E8B\4EF6\5B8C\6210'' AND A.SCORE < 0 THEN 0 ELSE A.SCORE END SCORE,'),
unistr('                       CASE WHEN A.OPERATION = ''\4E8B\4EF6\5B8C\6210'' THEN ROUND((D.END_TIME - D.CREATION_DATE) * 24, 2) ELSE 0 END USE_TIME'),
'                  FROM TENANT_POINT A,',
'                       TENANT_EVENT D',
'                 WHERE A.EVENT_ID = D.EVENT_ID ',
unistr('                   AND A.OPERATION IN (''\4E8B\4EF6\5B8C\6210'',''\4EBA\5DE5\6838\9500'')'),
'                   AND A.TENANT_ID = :USERTENANT',
'                   AND D.CREATION_DATE >= NVL(TO_DATE(:P1_START_TIME,''YYYY-MM-DD''),TRUNC(SYSDATE - 7))',
'                   AND D.CREATION_DATE < NVL(TO_DATE(:P1_END_TIME,''YYYY-MM-DD''),TRUNC(SYSDATE - 1)) + 1',
'                   AND A.BASE_DEPT_ID=:BASE_DEPT_ID',
'                   AND A.EXT_ORG_ID = NVL(:P1_ORG,:USERDEPT)',
'                   AND A.BASE_DEPT_ID=:BASE_DEPT_ID',
'                   )',
'         GROUP BY USER_NAME',
'         ORDER BY  TOTAL DESC,SCORE DESC)',
' WHERE ROWNUM <= 15'))
,p_ajax_items_to_submit=>'P1_START_TIME,P1_END_TIME,P1_ORG'
,p_series_name_column_name=>'USER_NAME'
,p_items_x_column_name=>'USE_TIME'
,p_items_y_column_name=>'TOTAL'
,p_items_z_column_name=>'SCORE'
,p_group_short_desc_column_name=>'USER_NAME'
,p_items_label_column_name=>'USER_NAME'
,p_custom_column_name=>'USER_NAME'
,p_line_style=>'solid'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2228292780354006651)
,p_chart_id=>wwv_flow_imp.id(2228292549491006649)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>unistr('\5DE5\5355\65F6\957F(\5C0F\65F6)')
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_numeric_pattern=>'##.#'
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
 p_id=>wwv_flow_imp.id(2228292840646006652)
,p_chart_id=>wwv_flow_imp.id(2228292549491006649)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>unistr('\5DE5\5355\91CF')
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
 p_id=>wwv_flow_imp.id(2228292912238006653)
,p_plug_name=>unistr('\5DE5\5355\7EDF\8BA1')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>6
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CREATION_DATE,COUNT(EVENT_ID) TOTAL,',
'       ROUND(SUM(USE_TIME)/COUNT(EVENT_ID),2) ALL_TIME,',
'       CASE WHEN COUNT(DECODE(FLAG,1,EVENT_ID,NULL)) = 0 THEN 0 ELSE ROUND(SUM(DECODE(FLAG,1,USE_TIME,0))/COUNT(DECODE(FLAG,1,EVENT_ID,NULL)),2) END USER_TIME',
'  FROM (SELECT TO_CHAR(D.BEGIN_TIME,''YYYY-MM-DD'') CREATION_DATE,D.EVENT_ID,A.EVENT_ID FLAG_ID,',
'               ROUND((D.END_TIME - D.BEGIN_TIME) * 24, 2) USE_TIME,',
'               (SELECT B.IS_FINAL_HANDLER FROM TENANT_EVENT_FOLLOW_USERS_ASSO_V B WHERE D.EVENT_ID = B.EVENT_ID AND B.IS_FINAL_HANDLER = 1 AND B.EXT_ORG_ID = NVL(:P1_ORG,:USERDEPT)) FLAG',
'          FROM TENANT_EVENT D',
'          LEFT JOIN TENANT_POINT A',
'            ON D.EVENT_ID = A.EVENT_ID',
unistr('           AND A.OPERATION = ''\4E8B\4EF6\5B8C\6210'''),
'           AND A.EXT_ORG_ID = NVL(:P1_ORG,:USERDEPT)',
'           AND A.BASE_DEPT_ID=:BASE_DEPT_ID',
'         WHERE D.BEGIN_TIME >= NVL(TO_DATE(:P1_START_TIME,''YYYY-MM-DD''),TRUNC(SYSDATE - 7))',
'           AND D.BEGIN_TIME < NVL(TO_DATE(:P1_END_TIME,''YYYY-MM-DD''),TRUNC(SYSDATE - 1)) + 1',
'           AND D.TENANT_ID = :USERTENANT AND D.BASE_DEPT_ID=:BASE_DEPT_ID)',
' WHERE FLAG_ID > 0 ',
' GROUP BY CREATION_DATE'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1_ORG,P1_START_TIME,P1_END_TIME'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2228293053257006654)
,p_region_id=>wwv_flow_imp.id(2228292912238006653)
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
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
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
 p_id=>wwv_flow_imp.id(2228293091536006655)
,p_chart_id=>wwv_flow_imp.id(2228293053257006654)
,p_seq=>10
,p_name=>unistr('\5DE5\5355\91CF')
,p_location=>'REGION_SOURCE'
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL'
,p_group_short_desc_column_name=>'CREATION_DATE'
,p_items_label_column_name=>'CREATION_DATE'
,p_custom_column_name=>'CREATION_DATE'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2228293432506006658)
,p_chart_id=>wwv_flow_imp.id(2228293053257006654)
,p_seq=>20
,p_name=>unistr('\53C2\4E0E\65F6\957F')
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'ALL_TIME'
,p_group_short_desc_column_name=>'CREATION_DATE'
,p_items_label_column_name=>'CREATION_DATE'
,p_custom_column_name=>'CREATION_DATE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2229846033947436626)
,p_chart_id=>wwv_flow_imp.id(2228293053257006654)
,p_seq=>30
,p_name=>unistr('\4E3B\8D23\65F6\957F')
,p_location=>'REGION_SOURCE'
,p_series_type=>'line'
,p_items_value_column_name=>'USER_TIME'
,p_group_short_desc_column_name=>'CREATION_DATE'
,p_items_label_column_name=>'CREATION_DATE'
,p_custom_column_name=>'CREATION_DATE'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'off'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'on'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2228293581600006659)
,p_chart_id=>wwv_flow_imp.id(2228293053257006654)
,p_axis=>'y2'
,p_is_rendered=>'on'
,p_title=>unistr('\5DE5\5355\65F6\957F(\5C0F\65F6)')
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_numeric_pattern=>'##.#'
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
 p_id=>wwv_flow_imp.id(2228293219586006656)
,p_chart_id=>wwv_flow_imp.id(2228293053257006654)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>unistr('\65E5\671F')
,p_format_type=>'date-long'
,p_numeric_pattern=>'MMM'
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
 p_id=>wwv_flow_imp.id(2228293351281006657)
,p_chart_id=>wwv_flow_imp.id(2228293053257006654)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>unistr('\5DE5\5355\91CF')
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_numeric_pattern=>'##.#'
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
 p_id=>wwv_flow_imp.id(2229844446533436610)
,p_plug_name=>unistr('\5728\9014\5DE5\5355')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_column=>7
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BASE_NAME,FAB_NAME,MAP_AREA_Y_NAME,MAP_AREA_X_NAME,SUBMIT_NAME,SUBMIT_EXT_ORG_NAME,EVENT_ID,CREATION_DATE,CONTINUE_TIME,FIRST_EVENT_CATEGORY_NAME,SECOND_EVENT_CATEGORY_NAME,EVENT_PHENOMENON_NAME,',
unistr('       LISTAGG(NAME,''\FF0C'') WITHIN GROUP(ORDER BY TT) NAME,'),
unistr('       LISTAGG(EXT_ORG_NAME,''\FF0C'') WITHIN GROUP(ORDER BY TT) EXT_ORG_NAME'),
'  FROM (SELECT B.BASE_NAME,B.FAB_NAME,B.MAP_AREA_Y_NAME,B.MAP_AREA_X_NAME,B.SUBMIT_NAME,B.SUBMIT_EXT_ORG_NAME,A.EVENT_ID,A.BEGIN_TIME CREATION_DATE,B.NAME,B.EXT_ORG_NAME,ROUND((SYSDATE-A.BEGIN_TIME)*24,2) CONTINUE_TIME,',
'               F.FIRST_EVENT_CATEGORY_NAME,F.SECOND_EVENT_CATEGORY_NAME,F.EVENT_PHENOMENON_NAME,B.CREATION_DATE TT',
'          FROM TENANT_EVENT A',
'          LEFT JOIN TENANT_EVENT_FOLLOW_USERS_ASSO_V B',
'            ON A.EVENT_ID = B.EVENT_ID',
'          LEFT JOIN FND_MAPS_AREAS_ASSO_V E',
'            ON A.MAP_ID = E.MAP_ID',
'          LEFT JOIN TENANT_EVENT_LIBRARY_V F',
'            ON A.FIRST_EVENT_CODE = F.FIRST_EVENT_CATEGORY_CODE',
'           AND A.SECOND_EVENT_CODE = F.SECOND_EVENT_CATEGORY_CODE',
'           AND A.PHENOMENON_CODE = F.EVENT_PHENOMENON_CODE',
'           AND A.TENANT_ID = F.TENANT_ID',
'         WHERE A.BEGIN_TIME >= NVL(TO_DATE(:P1_START_TIME,''YYYY-MM-DD''),TRUNC(SYSDATE - 7))',
'           AND A.BEGIN_TIME < NVL(TO_DATE(:P1_END_TIME,''YYYY-MM-DD''),TRUNC(SYSDATE)) + 1',
'           AND A.STATUS IN (''WAIT_RESOLVE'',''FOLLOW'')',
'           AND A.TENANT_ID = :USERTENANT',
'           AND A.BASE_DEPT_ID=:BASE_DEPT_ID',
'           AND (B.EXT_ORG_ID = NVL(:P1_ORG,:USERDEPT) OR A.SUBMIT_EXT_ORG_ID = NVL(:P1_ORG,:USERDEPT)))',
' GROUP BY BASE_NAME,FAB_NAME,MAP_AREA_Y_NAME,MAP_AREA_X_NAME,SUBMIT_NAME,SUBMIT_EXT_ORG_NAME,EVENT_ID,CREATION_DATE,CONTINUE_TIME,FIRST_EVENT_CATEGORY_NAME,SECOND_EVENT_CATEGORY_NAME,EVENT_PHENOMENON_NAME'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\5728\9014\5DE5\5355')
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
 p_id=>wwv_flow_imp.id(2229844558166436611)
,p_max_row_count=>'1000000'
,p_max_rows_per_page=>'5'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'SONGBINGXIAO'
,p_internal_uid=>8797168159966602
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229844683467436612)
,p_db_column_name=>'BASE_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>unistr('\57FA\5730')
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229844767129436613)
,p_db_column_name=>'FAB_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>unistr('\4E0A\62A5\4EA7\533A')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229844826114436614)
,p_db_column_name=>'MAP_AREA_Y_NAME'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>unistr('\4E0A\62A5\4EA7\7EBF')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229844944659436615)
,p_db_column_name=>'MAP_AREA_X_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>unistr('\4E0A\62A5\5DE5\6BB5')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229845157881436617)
,p_db_column_name=>'SUBMIT_EXT_ORG_NAME'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>unistr('\4E0A\62A5\90E8\95E8')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229845084823436616)
,p_db_column_name=>'SUBMIT_NAME'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>unistr('\4E0A\62A5\4EBA')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229845278562436618)
,p_db_column_name=>'EVENT_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>unistr('\5DE5\5355ID')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229845490356436621)
,p_db_column_name=>'FIRST_EVENT_CATEGORY_NAME'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>unistr('\5DE5\5355\5927\7C7B')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229845682803436622)
,p_db_column_name=>'SECOND_EVENT_CATEGORY_NAME'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>unistr('\5DE5\5355\5C0F\7C7B')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229845730657436623)
,p_db_column_name=>'EVENT_PHENOMENON_NAME'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>unistr('\5DE5\5355\73B0\8C61')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229845344290436619)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>130
,p_column_identifier=>'H'
,p_column_label=>unistr('\4E0A\62A5\65F6\95F4')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229845949067436625)
,p_db_column_name=>'EXT_ORG_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>unistr('\8DDF\8FDB\90E8\95E8')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229845824820436624)
,p_db_column_name=>'NAME'
,p_display_order=>150
,p_column_identifier=>'M'
,p_column_label=>unistr('\8DDF\8FDB\4EBA')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2229845478187436620)
,p_db_column_name=>'CONTINUE_TIME'
,p_display_order=>160
,p_column_identifier=>'I'
,p_column_label=>unistr('\6301\7EED\65F6\95F4(\5C0F\65F6)')
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2229854186043450653)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'88068'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BASE_NAME:FAB_NAME:MAP_AREA_Y_NAME:MAP_AREA_X_NAME:SUBMIT_NAME:SUBMIT_EXT_ORG_NAME:EVENT_ID:CREATION_DATE:CONTINUE_TIME:FIRST_EVENT_CATEGORY_NAME:SECOND_EVENT_CATEGORY_NAME:EVENT_PHENOMENON_NAME:NAME:EXT_ORG_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2229847027209436636)
,p_plug_name=>unistr('\6761\4EF6\9009\62E9')
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-useLocalStorage:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359792042793135293)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2229847328457436639)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2229847027209436636)
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2229847178542436637)
,p_name=>'P1_ORG'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2229847027209436636)
,p_prompt=>unistr('\90E8\95E8\540D\79F0')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT NAME,EXT_ORG_ID FROM MPF_SHARE_DEPT_V WHERE TENANT_ID = :USERTENANT AND PARENT_ID > 0 and BASE_DEPT_ID=:BASE_DEPT_ID ORDER BY EXT_ORG_ID DESC'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2229847234842436638)
,p_name=>'P1_START_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2229847027209436636)
,p_prompt=>unistr('\5F00\59CB\65F6\95F4')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2229847458744436640)
,p_name=>'P1_END_TIME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2229847027209436636)
,p_prompt=>unistr('\7ED3\675F\65F6\95F4')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2228292269924006646)
,p_name=>unistr('\52A0\8F7D\8BCD\4E91\6570\636E')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2228292359168006647)
,p_event_id=>wwv_flow_imp.id(2228292269924006646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''word_data'', {',
unistr('    // apex\4F20\53C2'),
'    x01: 1',
'',
'}, {',
'    dataType: ''json'',',
'    success: function (data) {',
'        console.log(data.data);',
'        if (data.data){',
'            onload(data.data);',
'        };',
'        ',
'        ',
'    },',
'    error: function (e) {',
'        alert(e);',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2228292131715006645)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'word_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TMP  CLOB;',
'BEGIN',
' SELECT json_object(key ''data'' value json_arrayagg(',
'    json_object(key ''name'' value F.SECOND_EVENT_CATEGORY_NAME ,',
'        key ''value'' value COUNT(DISTINCT A.EVENT_ID) )',
'    )) into V_TMP',
'  FROM TENANT_EVENT A',
'  LEFT JOIN TENANT_EVENT_LIBRARY_V F',
'    ON A.FIRST_EVENT_CODE = F.FIRST_EVENT_CATEGORY_CODE',
'   AND A.SECOND_EVENT_CODE = F.SECOND_EVENT_CATEGORY_CODE',
'   AND A.PHENOMENON_CODE = F.EVENT_PHENOMENON_CODE',
' WHERE A.BEGIN_TIME >= NVL(TO_DATE(:P1_START_TIME,''YYYY-MM-DD''),TRUNC(SYSDATE - 7))',
'   AND A.BEGIN_TIME < NVL(TO_DATE(:P1_END_TIME,''YYYY-MM-DD''),TRUNC(SYSDATE - 1)) + 1',
'   AND A.TENANT_ID = :USERTENANT',
'   AND A.BASE_DEPT_ID=:BASE_DEPT_ID',
'   AND EXISTS (SELECT 1 FROM TENANT_POINT D',
'                WHERE D.EVENT_ID = A.EVENT_ID ',
unistr('                  AND D.OPERATION = ''\4E8B\4EF6\5B8C\6210'''),
'                  AND D.EXT_ORG_ID = NVL(:P1_ORG,:USERDEPT) AND D.BASE_DEPT_ID=:BASE_DEPT_ID)',
'   AND F.SECOND_EVENT_CATEGORY_NAME IS NOT NULL',
' GROUP BY F.SECOND_EVENT_CATEGORY_NAME;',
unistr('    /* apex \6570\636E\4F20\5165\9875\9762 */'),
'    htp.prn(V_TMP);',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44967528960922691
);
wwv_flow_imp.component_end;
end;
/
