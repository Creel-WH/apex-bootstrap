prompt --application/pages/page_01413
begin
--   Manifest
--     PAGE: 01413
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_page.create_page(
 p_id=>1413
,p_name=>unistr('Reports - \641C\7D22\533A\57DF')
,p_alias=>'REPORTS-SEARCH-REGION'
,p_step_title=>unistr('\641C\7D22\533A\57DF - &APP_TITLE.')
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'26'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1066659267341617387)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A search region allows you to combine data from different search sources. This region allows you to find unrelated information in one place.</p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1066659361758617388)
,p_plug_name=>unistr('\6F14\793A')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1336742916143855685)
,p_plug_name=>unistr('\641C\7D22\533A\57DF')
,p_region_name=>'Demo1'
,p_parent_plug_id=>wwv_flow_imp.id(1066659361758617388)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(1052878553902820512)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_SEARCH_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'custom_layout', 'N',
  'lazy_loading', 'N',
  'minimum_characters', '0',
  'no_query_entered_message', 'Start typing some text to test the search region.',
  'no_results_found_message', 'No data found.',
  'results_per_page', '15',
  'results_per_page_type', 'STATIC',
  'search_as_you_type', 'Y',
  'search_page_item', 'P1413_SEARCH_FIELD',
  'show_result_count', 'N',
  'use_pagination', 'Y')).to_clob
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(1572734998737800110)
,p_region_id=>wwv_flow_imp.id(1336742916143855685)
,p_search_config_id=>wwv_flow_imp.id(1576098115524074495)
,p_use_as_initial_result=>false
,p_display_sequence=>10
,p_name=>unistr('\641C\7D222')
);
wwv_flow_imp_page.create_search_region_source(
 p_id=>wwv_flow_imp.id(1434501489830284289)
,p_region_id=>wwv_flow_imp.id(1336742916143855685)
,p_search_config_id=>wwv_flow_imp.id(1436293250821533054)
,p_use_as_initial_result=>false
,p_display_sequence=>20
,p_name=>unistr('\641C\7D221')
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1587347862867571591)
,p_plug_name=>'Info text'
,p_parent_plug_id=>wwv_flow_imp.id(1336742916143855685)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--textContent:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4053997356862400624)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SEARCH_FIELD'
,p_plug_source=>unistr('Try typing \201CData\201D or "Tom Suess"')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1066659463583617389)
,p_plug_name=>unistr('\8BF4\660E')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1066659616048617390)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1336742281659855684)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2513101747170473402)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3156601119967118728)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4054001765906400637)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1434501693010284291)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1434501576729284290)
,p_name=>'P1413_SEARCH_FIELD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1336742916143855685)
,p_item_display_point=>'SEARCH_FIELD'
,p_item_default=>'Work'
,p_prompt=>unistr('\641C\7D22')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(1590760388063493177)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1587348040008571592)
,p_name=>'Refresh Region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1413_SEARCH_FIELD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1587348179158571594)
,p_event_id=>wwv_flow_imp.id(1587348040008571592)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1336742916143855685)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var input = document.getElementById( "P1413_SEARCH_FIELD" );',
'',
'input.addEventListener("keyup", function(event) {',
'    if (event.keyCode === 13) {',
'        event.preventDefault();',
'        var region = apex.region( "Demo1" );',
'        region.refresh();',
'    }',
'})'))
);
wwv_flow_imp.component_end;
end;
/
