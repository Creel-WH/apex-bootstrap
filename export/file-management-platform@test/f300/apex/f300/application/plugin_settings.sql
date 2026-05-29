prompt --application/plugin_settings
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1461733268712440)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>6790469364438
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1461891608712440)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>6790469364438
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1461996440712440)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>6790469364438
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(1464207429712442)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>6790469364440
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(8362376886615405052)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', unistr('\62D6\62FD\622A\5C4F\5230\8FD9\91CC\6216\70B9\51FB\9009\62E9\622A\5C4F\4E0A\4F20'),
  'attribute_02', unistr('\4F60\7684\6D4F\89C8\5668\4E0D\652F\6301\6587\4EF6\62D6\62FD\4E0A\4F20'),
  'attribute_03', unistr('\622A\5C4F\592A\5927 ({{filesize}}MiB)  \652F\6301\6700\5927\622A\5C4F\4E3A: {{maxFilesize}}MiB'),
  'attribute_04', unistr('\4E0D\80FD\4E0A\4F20\8D85\8FC7{{maxFiles}} \4E2A\622A\5C4F'),
  'attribute_05', unistr('\79FB\9664\622A\5C4F'),
  'attribute_06', unistr('\53D6\6D88\4E0A\4F20'),
  'attribute_07', unistr('\786E\8BA4\53D6\6D88\4E0A\4F20\FF1F'),
  'attribute_08', unistr('\4E0A\4F20\622A\5C4F\6587\4EF6\7C7B\578B\9519\8BEF'),
  'attribute_09', '1048576')).to_clob
,p_version_scn=>6670309811800
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9793435414034686427)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>6665952399920
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9793435715736686430)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>6665952399920
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9793436014877686430)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>6665952399920
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9793436345402686430)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>6665952399920
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9793436666284686430)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>6665952399920
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9793436913522686430)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>6665952399920
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9793437192274686431)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>6665952399920
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9793437561984686431)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>6665952399920
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9793437868630686431)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>6665952399920
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(9793438166263686431)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>6665952399920
);
wwv_flow_imp.component_end;
end;
/
