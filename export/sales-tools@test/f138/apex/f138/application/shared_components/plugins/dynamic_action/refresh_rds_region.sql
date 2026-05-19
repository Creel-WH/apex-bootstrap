prompt --application/shared_components/plugins/dynamic_action/refresh_rds_region
begin
--   Manifest
--     PLUGIN: REFRESH.RDS.REGION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(9102398096067184887)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'REFRESH.RDS.REGION'
,p_display_name=>'Refresh Region Display Selector Region'
,p_category=>'INIT'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','REFRESH.RDS.REGION'),'')
,p_javascript_file_urls=>'#PLUGIN_FILES#refreshRegionDisplaySelectorRegion.js'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'FUNCTION render(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                p_plugin         IN apex_plugin.t_plugin)',
'    RETURN apex_plugin.t_dynamic_action_render_result ',
'IS',
'  l_result       apex_plugin.t_dynamic_action_render_result;',
'BEGIN',
'  l_result.attribute_01 := p_dynamic_action.attribute_01;',
'  l_result.javascript_function := ''refreshRegionDisplaySelectorRegion.execute'';',
'',
'  RETURN l_result;',
'',
'END render;'))
,p_api_version=>2
,p_render_function=>'render'
,p_substitute_attributes=>true
,p_version_scn=>1
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'https://github.com/akilr/Refresh-RDS-Regions'
,p_files_version=>10
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(9102398355268190727)
,p_plugin_id=>wwv_flow_imp.id(9102398096067184887)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Region Static ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>true
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>For Single Region:</b> EMP<br>',
'<b>For Multiple Regions:</b> EMP,DEPT'))
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Please provide the Static ID of the region that has to be refreshed.<br>',
'If multiple regions has to be refreshed please provide the Static ID of the regions separated by comma.'))
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '7661722072656672657368526567696F6E446973706C617953656C6563746F72526567696F6E3D7B646F526566726573683A66756E6374696F6E2865297B2428222E617065782D72647322292E6461746128226F6E526567696F6E4368616E6765222C28';
wwv_flow_imp.g_varchar2_table(2) := '66756E6374696F6E286F2C6E297B636F6E737420723D652E73706C697428222C22292E76616C75657328293B666F7228636F6E73742065206F662072296E2E687265663D3D3D2223222B652626617065782E726567696F6E2865292E7265667265736828';
wwv_flow_imp.g_varchar2_table(3) := '297D29297D2C657865637574653A66756E6374696F6E28297B76617220653D746869732E616374696F6E2E61747472696275746530313B72656672657368526567696F6E446973706C617953656C6563746F72526567696F6E2E646F5265667265736828';
wwv_flow_imp.g_varchar2_table(4) := '65297D7D3B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(7831387459799775775)
,p_plugin_id=>wwv_flow_imp.id(9102398096067184887)
,p_file_name=>'refreshRegionDisplaySelectorRegion.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2F2F2041504558205265667265736820526567696F6E20446973706C61792053656C6563746F720D0A2F2F20417574686F723A20416B696C20520D0A2F2F2056657273696F6E3A20312E300D0A2F2F202A2A52656672657368206120726567696F6E2074';
wwv_flow_imp.g_varchar2_table(2) := '68617420697320756E646572206120526567696F6E20446973706C61792053656C6563746F722852445329206F6E206368616E6765206F66206120524453207461622A2A0D0A0D0A2F2F20676C6F62616C206E616D6573706163650D0A0D0A7661722072';
wwv_flow_imp.g_varchar2_table(3) := '656672657368526567696F6E446973706C617953656C6563746F72526567696F6E203D207B0D0A0D0A202020202F2F66756E6374696F6E20746F20646F20706572666F726D20746865207265667265736820616374696F6E200D0A09646F526566726573';
wwv_flow_imp.g_varchar2_table(4) := '683A2066756E6374696F6E2870737461746963496429207B0D0A09090D0A20202020202020202428222E617065782D72647322292E6461746128226F6E526567696F6E4368616E6765222C66756E6374696F6E286D6F64652C6163746976655461622920';
wwv_flow_imp.g_varchar2_table(5) := '7B0D0A09090976617220726567696F6E53656C6563746F72203D207073746174696349642E73706C697428272C27293B0D0A202020202020202020202020636F6E7374206974657261746F72203D20726567696F6E53656C6563746F722E76616C756573';
wwv_flow_imp.g_varchar2_table(6) := '28293B0D0A2020202020202020202020200D0A090909666F722028636F6E73742076616C7565206F66206974657261746F7229207B0D0A2020202020202020202020202020202069662028286163746976655461622E68726566203D3D3D202223222B76';
wwv_flow_imp.g_varchar2_table(7) := '616C756529297B200D0A2020202020202020202020202020202020202020202020202020617065782E726567696F6E2876616C7565292E7265667265736828293B20200D0A090909202020207D0D0A2020202020202020202020207D0D0A202020202020';
wwv_flow_imp.g_varchar2_table(8) := '20207D293B202009090D0A09207D2C0D0A09200D0A202020202F2F66756E6374696F6E207468617420676574732063616C6C65642066726F6D20706C7567696E0D0A20202020657865637574653A2066756E6374696F6E2829207B09090D0A0909766172';
wwv_flow_imp.g_varchar2_table(9) := '20737461746963496420203D20746869732E616374696F6E2E61747472696275746530310D0A090972656672657368526567696F6E446973706C617953656C6563746F72526567696F6E2E646F52656672657368287374617469634964293B0D0A097D0D';
wwv_flow_imp.g_varchar2_table(10) := '0A7D3B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(9102398704086194996)
,p_plugin_id=>wwv_flow_imp.id(9102398096067184887)
,p_file_name=>'refreshRegionDisplaySelectorRegion.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
