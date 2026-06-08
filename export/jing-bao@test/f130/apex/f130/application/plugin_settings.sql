prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74588213547313006)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>6793599285560
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74588306451313006)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>6793599285560
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74588396210313006)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>6793599285560
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(74598318396313002)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>6793599285570
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2184040411564926712)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2184726572620956305)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2184943828538562396)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>6595882511527
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2222661477369604567)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2226045524957399379)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', unistr('\5C06\6587\4EF6\62D6\653E\5230\6B64\5904\6216\5355\51FB\4E0A\4F20.'),
  'attribute_02', unistr('\60A8\7684\6D4F\89C8\5668\4E0D\652F\6301\62D6\653E\6587\4EF6\4E0A\4F20\3002'),
  'attribute_03', unistr('\6587\4EF6\592A\5927 ({{filesize}}MiB).\6700\5927\6587\4EF6\5927\5C0F\FF1A{{maxFilesize}}MiB.'),
  'attribute_04', unistr('\60A8\4E0D\80FD\4E0A\4F20\8D85\8FC7 {{maxFiles}} \4E2A\6587\4EF6.'),
  'attribute_05', unistr('\5220\9664\6587\4EF6'),
  'attribute_06', unistr('\53D6\6D88\4E0A\4F20'),
  'attribute_07', unistr('\60A8\786E\5B9A\8981\53D6\6D88\6B64\6B21\4E0A\4F20\5417\FF1F'),
  'attribute_08', unistr('\60A8\4E0D\80FD\4E0A\4F20\8FD9\79CD\7C7B\578B\7684\6587\4EF6.'),
  'attribute_09', '1048576')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2359749212402135262)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2359749776852135264)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2359750130114135264)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2359750442960135264)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2359751015524135264)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>1
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(2359751331313135264)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
