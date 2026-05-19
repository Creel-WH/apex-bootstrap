prompt --application/pages/page_00407
begin
--   Manifest
--     PAGE: 00407
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
 p_id=>407
,p_name=>unistr('\5BFC\822A')
,p_alias=>'NAVIGATION'
,p_step_title=>unistr('\5BFC\822A - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1988934022267168693)
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2255941706230316932)
,p_plug_name=>unistr('\83DC\5355\680F')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>The <b>Top Navigation Menu</b> template renders your application navigation as a menu bar, similar to what you find on most desktop applications. This is commonly used for more complex applications with several layers of hierarchy within the navig'
||'ation.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2255941779713316933)
,p_plug_name=>unistr('\9009\9879\5361')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <b>Top Navigation Tabs</b> template renders your application navigation as tabs and is ideally suited for simple applications where you have approximately 6 or fewer tabs.</p>',
'',
'<p>This navigation template will automatically be positioned to the bottom of the screen for small screen or mobile devices so it is more comfortable to access.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2255941925347316934)
,p_plug_name=>'Mega Menu'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <b>Top Navigation Mega Menu</b> template renders your application navigation in a popup panel that can be opened or closed from the header menu button.</p>',
'<p>Mega menus are especially useful when you want to display all navigation items at once to your user, and is a very common pattern you will see across the web.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2255942014433316935)
,p_plug_name=>unistr('Side \6811\5F62 \5BFC\822A')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <strong>Side Navigation Menu</strong> template referred to as a hamburger menu, drawer menu, or tree navigation is well suited for applications that have many navigation items, and renders your application navigation in a collapsible side pane'
||'l. The navigation items are rendered as tree nodes that can be expanded.</p>',
'<p>On small screens, you simply tap on the hamburger icon near the top left (or top right when using right-to-left languages) corner of your screen and the menu will slide out. You can make a selection and immediately navigate to the selected item.</'
||'p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2946088180428365223)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Navigation within your application is critical to its success and is an important part of your application and can determine how your users navigate within your application. It is important to keep in mind the complexity of the application you are'
||' developing and which navigation pattern makes the most sense for your specific use case. There are two navigation concepts that are key for Universal Theme: Navigation Menus and Navigation Bar.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2946088270667365224)
,p_plug_name=>unistr('\5BFC\822A Menus')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The primary navigation structure for your application is defined as a <b>Navigation Menu</b> and is based on the <b>List</b> component in APEX. Navigation Menus are hierarchical and can be any level deep.  This navigation control and can be both d'
||'ynamic (based on a query), or static (based on static list entries).  In addition, you can choose to position your navigation to the top or side of your screen.</p>',
'',
'<p>To change your application''s Navigation Menu settings, navigate to Shared Components &rarr; User Interface Defaults and then click on the edit icon next to the Desktop User Interface. From here, you can navigate to the Navigation Menu region and c'
||'hange the options listed.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2946088430486365225)
,p_plug_name=>unistr('\5BFC\822A\680F')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The Navigation Bar is positioned near the end of the application''s header, and typically contains links for user authentication, help, feedback, and other global items.</p>',
'',
'<p>Navigation Bars are also based on the <b>List</b> component in APEX and you may only have a two-level deep menu.</p>',
'',
'<p>To change your application''s Navigation Bar settings, navigate to Shared Components &rarr; User Interface Defaults and then click on the edit icon next to the Desktop User Interface. From here, you can navigate to the Navigation Bar region and cha'
||'nge the options listed.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6590856219678308534)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2513101747170473402)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3156601119967118728)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4054001765906400637)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2255942075823316936)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2255941706230316932)
,p_button_name=>'OPEN_PREVIEW_MENU_BAR'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>unistr('\67E5\770B')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-external-link'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2255942391652316939)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2255941779713316933)
,p_button_name=>'OPEN_PREVIEW_TABS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>unistr('\67E5\770B')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-external-link'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2255942670079316942)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2255941925347316934)
,p_button_name=>'OPEN_PREVIEW_MEGA_MENU'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>unistr('\67E5\770B')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-external-link'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2255942988440316945)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2255942014433316935)
,p_button_name=>'OPEN_PREVIEW_SIDE_TREE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>unistr('\67E5\770B')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-external-link'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2255942162579316937)
,p_name=>unistr('\83DC\5355\680F Preview')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2255942075823316936)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2255942289483316938)
,p_event_id=>wwv_flow_imp.id(2255942162579316937)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1120:&APP_SESSION.'',''Menu Bar Preview'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2255942524878316940)
,p_name=>unistr('\9009\9879\5361 Preview')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2255942391652316939)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2255942586876316941)
,p_event_id=>wwv_flow_imp.id(2255942524878316940)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1121:&APP_SESSION.'',''Tabs Preview'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2255942765667316943)
,p_name=>'Mega Menu Preview'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2255942670079316942)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2255942926048316944)
,p_event_id=>wwv_flow_imp.id(2255942765667316943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1122:&APP_SESSION.'',''Mega Menu Preview'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2255943091546316946)
,p_name=>'Side Nav Preview'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2255942988440316945)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2255943163338316947)
,p_event_id=>wwv_flow_imp.id(2255943091546316946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1123:&APP_SESSION.'',''Side Navigation Menu Preview'');'
);
wwv_flow_imp.component_end;
end;
/
