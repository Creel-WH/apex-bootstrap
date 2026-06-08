prompt --application/shared_components/plugins/region_type/orclking_heat_map_chart
begin
--   Manifest
--     PLUGIN: ORCLKING.HEAT.MAP.CHART
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(2524745252163532254)
,p_plugin_type=>'REGION TYPE'
,p_name=>'ORCLKING.HEAT.MAP.CHART'
,p_display_name=>'Heat Map Chart'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','ORCLKING.HEAT.MAP.CHART'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION render_google_heat_map_chart (p_region              IN apex_plugin.t_region, ',
'                                           p_plugin              IN apex_plugin.t_plugin, ',
'                                           p_is_printer_friendly IN BOOLEAN) ',
'RETURN apex_plugin.t_region_render_result ',
'AS ',
'  SUBTYPE plugin_attr IS VARCHAR2(32767); ',
'  l_column_value_list apex_plugin_util.t_column_value_list; ',
'  l_region            VARCHAR2(100); -- To keep region static id',
'  l_chart_width       NUMBER; -- To set chart width',
'  l_chart_height      NUMBER; -- To set chart height',
'  l_chart_title       VARCHAR2(60); -- To set chart title',
'  l_direction        VARCHAR2(10);',
'  l_data              CLOB := ''[''; -- To store column values',
'BEGIN ',
'    -- Debug information will be logged when application''s debug mode enabled',
'    IF apex_application.g_debug THEN ',
'      apex_plugin_util.Debug_region (p_plugin => p_plugin, p_region => p_region, ',
'      p_is_printer_friendly => p_is_printer_friendly); ',
'    END IF; ',
'',
'    -- Assign component plugin attributes ',
'    l_chart_width := p_region.attribute_01; ',
'    l_chart_height := p_region.attribute_02; ',
'    l_chart_title := p_region.attribute_03; ',
'   -- Get data from region source (sql query) ',
'    l_column_value_list := apex_plugin_util.get_data ( p_sql_statement => p_region.SOURCE, ',
'                                                       p_min_columns => 3, ',
'                                                       p_max_columns => 3, ',
'                                                       p_component_name => p_region.NAME); ',
'    ',
'    FOR i IN 1..l_column_value_list(1).count LOOP ',
'        l_data := l_data||''{x: "''||l_column_value_list(1)(i)',
'                        ||''", y: "''||l_column_value_list(2)(i)',
'                        ||''", heat:''||l_column_value_list(3)(i)||''},'';',
'    END LOOP;',
' l_data := substr(l_data,1,length(l_data)-1)||'']'';',
' dbms_output.put_line (l_data);',
'',
'    -- Get region static id ',
'    l_region := CASE ',
'                  WHEN p_region.static_id IS NOT NULL THEN p_region.static_id ',
'                  ELSE ''R'' ',
'                       ||p_region.id ',
'                END; ',
'                ',
'  htp.p(',
'    q''[<div id="anychart-embed-samples-bct-heat-map-chart-01" class="anychart-embed anychart-embed-samples-bct-heat-map-chart-01">',
'<script src="https://cdn.anychart.com/releases/8.10.0/js/anychart-base.min.js?hcode=a0c21fc77e1449cc86299c5faa067dc4"></script>',
'<script src="https://cdn.anychart.com/releases/8.10.0/js/anychart-heatmap.min.js?hcode=a0c21fc77e1449cc86299c5faa067dc4"></script>',
'<script src="https://cdn.anychart.com/releases/8.10.0/js/anychart-exports.min.js?hcode=a0c21fc77e1449cc86299c5faa067dc4"></script>',
'<script src="https://cdn.anychart.com/releases/8.10.0/js/anychart-ui.min.js?hcode=a0c21fc77e1449cc86299c5faa067dc4"></script>',
'<div id="ac_style_samples-bct-heat-map-chart-01" style="display:none;">',
'</div>',
'',
'<style> ',
'.anychart-credits-text, .anychart-credits-logo ',
'{display:none;} ',
'</style>',
'',
'<script>(function(){',
'function ac_add_to_head(el){',
'	var head = document.getElementsByTagName(''head'')[0];',
'	head.insertBefore(el,head.firstChild);',
'}',
'',
'function ac_add_link(url){',
'	var el = document.createElement(''link'');',
'	el.rel=''stylesheet'';el.type=''text/css'';el.media=''all'';el.href=url;',
'	ac_add_to_head(el);',
'}',
'',
'function ac_add_style(css){',
'	var ac_style = document.createElement(''style'');',
'	if (ac_style.styleSheet) ac_style.styleSheet.cssText = css;',
'	else ac_style.appendChild(document.createTextNode(css));',
'	ac_add_to_head(ac_style);',
'}',
'',
'ac_add_link(''https://cdn.anychart.com/releases/8.10.0/css/anychart-ui.min.css?hcode=a0c21fc77e1449cc86299c5faa067dc4'');',
'',
'ac_add_style(document.getElementById("ac_style_samples-bct-heat-map-chart-01").innerHTML);',
'',
'ac_add_style(".anychart-embed-samples-bct-heat-map-chart-01{width:600px;height:450px;}");',
'})();',
'</script>',
'',
'<script>',
'anychart.onDocumentReady(function () {]'');',
'',
' htp.p(''var data =''||l_data||'';'');',
'-- create a chart',
'  htp.p(''var chart = anychart.heatMap(data);'');',
'-- set the chart title',
'  htp.p(''chart.title("''||l_chart_title||''");'');',
'-- set the container id',
'  htp.p(''chart.container("heatmapchart_div_''||l_region||''");'');',
'--initiate drawing the chart',
'  htp.p(''chart.draw();',
'})',
'</script>'');',
'  ',
'    -- Display the chart inside the <div> element with <div id>',
'    sys.htp.P(''<div id="heatmapchart_div_''',
'               ||l_region  ',
'               ||''" style="width: ''',
'               ||l_chart_width||''px; height: ''',
'               ||l_chart_height||''px;"></div>''); ',
'    ',
'    RETURN NULL; ',
'END render_google_heat_map_chart; '))
,p_api_version=>1
,p_render_function=>'render_google_heat_map_chart'
,p_standard_attributes=>'SOURCE_SQL:NO_DATA_FOUND_MESSAGE'
,p_substitute_attributes=>true
,p_version_scn=>1
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'http://github.com/tkarkuvelraja/heat_map_chart_apex_plugin'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2524745706323525992)
,p_plugin_id=>wwv_flow_imp.id(2524745252163532254)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Chart Width'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'600'
,p_max_length=>3
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2524746008348523320)
,p_plugin_id=>wwv_flow_imp.id(2524745252163532254)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Chart Height'
,p_attribute_type=>'NUMBER'
,p_is_required=>true
,p_default_value=>'400'
,p_max_length=>3
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2524746353384520596)
,p_plugin_id=>wwv_flow_imp.id(2524745252163532254)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Chart Title'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'Heat Map Chart'
,p_max_length=>240
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(2317732964045842737)
,p_plugin_id=>wwv_flow_imp.id(2524745252163532254)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_static_id=>'attribute_04'
,p_prompt=>'Redirect Url'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_is_translatable=>false
);
wwv_flow_imp_shared.create_plugin_std_attribute(
 p_id=>wwv_flow_imp.id(2524745489110532078)
,p_plugin_id=>wwv_flow_imp.id(2524745252163532254)
,p_name=>'SOURCE_SQL'
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
