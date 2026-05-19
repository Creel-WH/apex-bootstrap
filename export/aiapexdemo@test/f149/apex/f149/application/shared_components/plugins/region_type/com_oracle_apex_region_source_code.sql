prompt --application/shared_components/plugins/region_type/com_oracle_apex_region_source_code
begin
--   Manifest
--     PLUGIN: COM.ORACLE.APEX.REGION_SOURCE_CODE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(1199108694994654492)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.REGION_SOURCE_CODE'
,p_display_name=>'Region Source Code'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.REGION_SOURCE_CODE'),'')
,p_javascript_file_urls=>'#PRISMJS_DIRECTORY#prism.js'
,p_css_file_urls=>'#PRISMJS_DIRECTORY#prism.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'c_workspace constant varchar2(100) := apex_util.find_workspace(:workspace_id);',
'',
'subtype t_region_type is varchar2(40);',
'c_region_type_list       constant t_region_type := ''NATIVE_LIST'';',
'c_region_type_breadcrumb constant t_region_type := ''NATIVE_BREADCRUMB'';',
'c_region_type_report     constant t_region_type := ''NATIVE_SQL_REPORT'';',
'c_region_type_calendar   constant t_region_type := ''NATIVE_CSS_CALENDAR'';',
'',
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'    c_component_static_id constant varchar2(1000) := p_region.attribute_01;',
'begin',
'',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_region ( ',
'            p_plugin => p_plugin, ',
'            p_region => p_region );',
'    end if;',
'',
'    for i in ( select *',
'                 from apex_application_page_regions',
'                where workspace      = c_workspace',
'                  and application_id = :app_id',
'                  and page_id        = :app_page_id',
'                  and static_id      = c_component_static_id )',
'    loop',
'        if i.region_source is not null then',
'            sys.htp.p( ''<pre class="lang-sql" tabindex="-1" style="margin: 1rem;"><code>'' || i.region_source || ''</code></pre>'' );',
'        end if;',
'    end loop;',
'',
'    return null;',
'end render;'))
,p_api_version=>1
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_version_scn=>1
,p_subscribe_plugin_settings=>false
,p_version_identifier=>'1.0'
,p_files_version=>155
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1199110748019654465)
,p_plugin_id=>wwv_flow_imp.id(1199108694994654492)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Region Static ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'<p>Provide the Region Static ID.</p>'
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
