prompt --application/pages/page_01306
begin
--   Manifest
--     PAGE: 01306
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
 p_id=>1306
,p_name=>unistr('\5F39\51FA\83DC\5355')
,p_alias=>'MENU-POPUP'
,p_step_title=>unistr('\5F39\51FA\83DC\5355 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1231997753698109580)
,p_plug_name=>unistr('\8BF4\660E')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<strong>Step 1. Create a Menu list region</strong><br>',
'<ol>',
'  <li>Create a List Region</li>',
'  <li>Set the Region Template to <em>Blank with Attributes</em></li>',
'  <li>Set the Static ID to <em>actions</em></li>',
'  <li>Set the List Template for this region to <em>Menu Popup</em></li>',
'</ol>',
'',
'<strong>Step 2. Associate a Button to open the menu</strong><br>',
'<ol>',
'  <li>Create a Button on the page</li>',
'  <li>Update Behavior to <em>Defined by Dynamic Action</em></li>',
'  <li>Update Custom Attributes to add <em>data-menu="<strong>actions</strong>_menu"</em></li>',
'</ol>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3582858244459823617)
,p_plug_name=>'Customized Menu'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h2:t-ContentBlock--lightBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>This example shows a customized menu which has icons and a separator item that can help group menu items together. This menu also has a callout that points to the menu button.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3582859462138823629)
,p_plug_name=>'Customized Menu'
,p_region_name=>'customized'
,p_parent_plug_id=>wwv_flow_imp.id(3582858244459823617)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:js-addActions:js-menu-callout'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(3583000622828399853)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(3475349227768772958)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3902385557222472403)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>You can easily create a popup menu in your application by using Lists and associating a button with the menu.  To create a popup menu in your application, you must first have a list region on your page which contains the menu items.  Then you need'
||' to associate a button on your page with the menu so it will open the menu when clicked.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3902386089816472404)
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
 p_id=>wwv_flow_imp.id(3902386625575472404)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3902387050243472405)
,p_plug_name=>'Multi Level Menu Example'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h2:t-ContentBlock--lightBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>Pop up menus can have many levels. This menu demonstrates a menu with several sub menus.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3493746146425964965)
,p_plug_name=>unistr('\5F39\51FA\83DC\5355')
,p_region_name=>'actions'
,p_parent_plug_id=>wwv_flow_imp.id(3902387050243472405)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(3582518165741464146)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(3475349227768772958)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3493746283744964966)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3902387050243472405)
,p_button_name=>'MENU_BUTTON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>unistr('Menu \6309\94AE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-down'
,p_button_cattributes=>'data-menu="actions_menu"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3582858339700823618)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3582858244459823617)
,p_button_name=>'MENU_BUTTON_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('Menu \6309\94AE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-down'
,p_button_cattributes=>'data-menu="customized_menu"'
,p_grid_new_row=>'Y'
);
wwv_flow_imp.component_end;
end;
/
