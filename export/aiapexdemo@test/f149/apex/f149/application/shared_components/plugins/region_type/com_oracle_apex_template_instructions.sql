prompt --application/shared_components/plugins/region_type/com_oracle_apex_template_instructions
begin
--   Manifest
--     PLUGIN: COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS
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
 p_id=>wwv_flow_imp.id(1198400498479719114)
,p_plugin_type=>'REGION TYPE'
,p_name=>'COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_display_name=>unistr('Component \8BF4\660E')
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('REGION TYPE','COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'),'')
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'c_workspace constant varchar2(100) := apex_util.find_workspace(:workspace_id);',
'',
'subtype t_region_type is varchar2(40);',
'c_region_type_list       constant t_region_type := ''NATIVE_LIST'';',
'c_region_type_breadcrumb constant t_region_type := ''NATIVE_BREADCRUMB'';',
'c_region_type_report     constant t_region_type := ''NATIVE_SQL_REPORT'';',
'',
'function render (',
'    p_region              in apex_plugin.t_region,',
'    p_plugin              in apex_plugin.t_plugin,',
'    p_is_printer_friendly in boolean )',
'    return apex_plugin.t_region_render_result',
'is',
'',
'    c_component_type                constant varchar2(1000) := p_region.attribute_01;',
'    c_component_static_id           constant varchar2(1000) := p_region.attribute_02;',
'    c_component_text                constant varchar2(4000) := p_region.attribute_03;',
'',
'begin',
'',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_region ( ',
'            p_plugin => p_plugin, ',
'            p_region => p_region );',
'    end if;',
'',
'    if c_component_type = ''REGION'' then',
'        for i in ( select * from apex_application_page_regions where workspace = c_workspace and application_id = :app_id and page_id = :app_page_id and static_id =  c_component_static_id ) loop',
'            sys.htp.p( ''<ol>',
'                    <li>In <strong>Page Designer</strong>, select a <strong>region</strong></li>',
'                    <li>Go to the <strong>Property Editor</strong></li>',
'                    <li>Under the <strong>Region</strong> tab',
'                        <ol class="margin-top-none margin-bottom-none">'' );',
'',
'            if i.source_type_plugin_name = c_region_type_report then',
'                sys.htp.p( ''',
unistr('                    <li>Find <strong>Identification \2192 Type</strong>, use <strong>''||apex_lang.message(''CLASSIC_REPORT'')||''</strong></li>'' );'),
'            elsif i.source_type_plugin_name = ''NATIVE_SEARCH_REGION'' then',
'                sys.htp.p( ''',
unistr('                    <li>Find <strong>Identification \2192 Type</strong>, use <strong>''||apex_lang.message(''SEARCH'')||''</strong></li>'' );'),
'            else',
'                sys.htp.p( ''',
unistr('                    <li>Find <strong>Identification \2192 Type</strong>, use <strong>''||apex_lang.message(''REGION_NAME.''||i.source_type_plugin_name)||''</strong></li>'' );'),
'            end if;',
'',
'            if i.source_type_plugin_name not in ( c_region_type_list, c_region_type_breadcrumb, c_region_type_report ) and ',
'               i.template != ''No Template'' ',
'            then',
'                sys.htp.p( ''',
unistr('                    <li>Find <strong>Appearance \2192 Template</strong>, use <strong>''||i.template||''</strong></li>'' );'),
'            end if;',
'                ',
'            sys.htp.p( ''</ol></li>'' );   ',
'',
'            if i.source_type_plugin_name = c_region_type_report then',
'                sys.htp.p( ''',
'                    <li>Under the <strong>Attributes</strong> tab',
'                        <ol class="margin-top-none margin-bottom-none">',
unistr('                            <li>Find <strong>Appearance \2192 Template</strong>, use <strong>''||i.report_template||''</strong></li>'),
'                        </ol>',
'                    </li>'' );',
'            elsif i.source_type_plugin_name = c_region_type_list then',
'                sys.htp.p( ''',
'                    <li>Under the <strong>Attributes</strong> tab',
'                        <ol class="margin-top-none margin-bottom-none">',
unistr('                            <li>Find <strong>Appearance \2192 Template</strong>, use <strong>''||i.list_template_override||''</strong></li>'),
'                        </ol>',
'                    </li>'' );',
'            elsif i.source_type_plugin_name = c_region_type_breadcrumb then',
'                sys.htp.p( ''',
'                    <li>Under the <strong>Attributes</strong> tab',
'                        <ol class="margin-top-none margin-bottom-none">',
unistr('                            <li>Find <strong>Appearance \2192 Template</strong>, use <strong>''||i.breadcrumb_template||''</strong></li>'),
'                        </ol>',
'                    </li>'' );',
'            end if;',
'',
'            sys.htp.p( ''</ol>'' );',
'        end loop;',
'    elsif c_component_type = ''ITEM'' then',
'        for i in ( select * from apex_application_page_items where workspace = c_workspace and application_id = :app_id and page_id = :app_page_id and item_name =  c_component_static_id ) loop',
'            sys.htp.p( ''<ol>',
'                <li>In <strong>Page Designer</strong>, select an <strong>item</strong></li>',
'                <li>Go to the <strong>Property Editor</strong></li>',
unistr('                <li>Find <strong>Identification \2192 Type</strong>, use <strong>''||apex_lang.message(''ITEM_NAME.''||i.display_as_code)||''</strong></li>'),
unistr('                <li>Find <strong>Appearance \2192 Template</strong>, use <strong>''||i.item_label_template||''</strong></li>'),
'                </ol>'' );',
'        end loop;',
'    elsif c_component_type = ''BUTTON'' then',
'        for i in ( select * from apex_application_page_buttons where workspace = c_workspace and application_id = :app_id and page_id = :app_page_id and ( button_name = c_component_static_id or button_static_id = c_component_static_id ) ) loop',
'            sys.htp.p( ''<ol>',
'                <li>In <strong>Page Designer</strong>, select a <strong>button</strong></li>',
'                <li>Go to the <strong>Property Editor</strong></li>',
unistr('                <li>Find <strong>Appearance \2192 Template</strong>, use <strong>''||i.button_template||''</strong></li>'),
'                ''||case when i.button_is_hot = ''Yes'' then ''<li>Activate option <strong>Hot</strong></li>'' end ||''',
'                </ol>'' );',
'        end loop;',
'    end if;',
'',
'    if c_component_text is not null then',
'        sys.htp.p( ''<div class="margin-md">''||c_component_text||''</div>'' );',
'    end if;',
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
 p_id=>wwv_flow_imp.id(1198400715784719112)
,p_plugin_id=>wwv_flow_imp.id(1198400498479719114)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_static_id=>'attribute_01'
,p_prompt=>'Component Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'REGION'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1198402043827719082)
,p_plugin_attribute_id=>wwv_flow_imp.id(1198400715784719112)
,p_display_sequence=>10
,p_display_value=>'Region'
,p_return_value=>'REGION'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1198401093521719108)
,p_plugin_attribute_id=>wwv_flow_imp.id(1198400715784719112)
,p_display_sequence=>20
,p_display_value=>'Item'
,p_return_value=>'ITEM'
);
wwv_flow_imp_shared.create_plugin_attr_value(
 p_id=>wwv_flow_imp.id(1198401591240719093)
,p_plugin_attribute_id=>wwv_flow_imp.id(1198400715784719112)
,p_display_sequence=>30
,p_display_value=>unistr('\6309\94AE')
,p_return_value=>'BUTTON'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1198402608587719081)
,p_plugin_id=>wwv_flow_imp.id(1198400498479719114)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_static_id=>'attribute_02'
,p_prompt=>'Static ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>For regions and buttons, provide their Static ID.</p>',
'<p>For items, provide their regular names.</p>'))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(1233268684693654477)
,p_plugin_id=>wwv_flow_imp.id(1198400498479719114)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_static_id=>'attribute_03'
,p_prompt=>'Additional Text'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>true
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
