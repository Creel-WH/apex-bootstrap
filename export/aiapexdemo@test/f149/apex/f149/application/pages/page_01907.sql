prompt --application/pages/page_01907
begin
--   Manifest
--     PAGE: 01907
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
 p_id=>1907
,p_name=>unistr('\9009\9879\5361')
,p_alias=>'TABS'
,p_step_title=>unistr('\9009\9879\5361 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1988934022267168693)
,p_javascript_code_onload=>'apex.theme42demo.jump(''&REQUEST.'');'
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3716088904061068440)
,p_plug_name=>unistr('\9009\9879\5361 as Regions')
,p_region_name=>'tab_container'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <strong>Tabs Container</strong> Region Template can be used to create a set tabs within your page.  Simply place sub regions within the Tabs Container and they will appear as a tab.</p>',
'<p>This control is useful when you want to display different regions or information, but utilise the same space on a page.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232000353230109606)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(3716088904061068440)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>21
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3456413445403084925)
,p_plug_name=>unistr('\9009\9879\5361 Container')
,p_region_name=>'Demo1'
,p_parent_plug_id=>wwv_flow_imp.id(1232000353230109606)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--pill'
,p_plug_template=>wwv_flow_imp.id(3204810238954834071)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3456413585787084926)
,p_plug_name=>'Tab 1'
,p_parent_plug_id=>wwv_flow_imp.id(3456413445403084925)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4053997356862400624)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Content 1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3456413678778084927)
,p_plug_name=>'Tab 2'
,p_parent_plug_id=>wwv_flow_imp.id(3456413445403084925)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4053997356862400624)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Content 2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3456413777930084928)
,p_plug_name=>'Tab 3'
,p_parent_plug_id=>wwv_flow_imp.id(3456413445403084925)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4053997356862400624)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Content 3'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232000486762109607)
,p_plug_name=>unistr('\8BF4\660E')
,p_parent_plug_id=>wwv_flow_imp.id(3716088904061068440)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1',
  'attribute_03', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<p>Then create or move sub regions into the Tabs Container, one for each tab you want to have.</p>',
    '<p><strong>Tip:</strong> You can easily nest tabs by creating another Tabs Container region within a sub region of an existing Tabs Container region.</p>')))).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3716089782716068449)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(3716088904061068440)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>31
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3716089007416068441)
,p_plug_name=>unistr('\9009\9879\5361 as a List')
,p_region_name=>'tab_list'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<p>The <strong>Tabs</strong> List Template can be used to create a set tabs where each tab links to another page.  This is especially useful for applications that require nested or complex navigation hierarchies.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232000564244109608)
,p_plug_name=>unistr('\8BF4\660E')
,p_parent_plug_id=>wwv_flow_imp.id(3716089007416068441)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo2',
  'attribute_03', '<p><strong>Tip:</strong> You can add icons to these tabs simply by modifying the icon attribute of the list entry.</p>')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3716090520056068456)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(3716089007416068441)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo2')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3716090709835068458)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(3716089007416068441)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3456413156662084922)
,p_plug_name=>unistr('\9009\9879\5361 List')
,p_region_name=>'Demo2'
,p_parent_plug_id=>wwv_flow_imp.id(3716090709835068458)
,p_region_sub_css_classes=>'dm-TemplateOption-previewTarget'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(3716210753661024976)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(3271291910028151309)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5890162291191096456)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>You can use Tabs and the Region Display Selector within your application pages to improve navigation, flow and usability of your pages.  These components are grouped together as they provide similar functionality, but have different implementation'
||'s and use cases.  This page will outline the three distinct methods you can use to apply these components to your page.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5890162598304094639)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_name=>'dialog_fixed'
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
 p_id=>wwv_flow_imp.id(10122221043500545976)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1232000708773109609)
,p_name=>unistr('customEvent templateOption\66F4\6539d')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'templateOptionChanged'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1232000788160109610)
,p_event_id=>wwv_flow_imp.id(1232000708773109609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'let tabsRegion$ = $(`#${this.data.componentStaticId}.t-TabsRegion`);',
'',
'if ($.apex.aTabs && tabsRegion$.length > 0) {',
'    $(`#${this.data.componentStaticId} .apex-rds-slider, #${this.data.componentStaticId} .t-Tabs` ).remove();',
'    tabsRegion$.utTabs();',
'}'))
);
wwv_flow_imp.component_end;
end;
/
