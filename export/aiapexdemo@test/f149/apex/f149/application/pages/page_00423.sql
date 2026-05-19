prompt --application/pages/page_00423
begin
--   Manifest
--     PAGE: 00423
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
 p_id=>423
,p_name=>unistr('\8868\5355')
,p_alias=>'FORMS2'
,p_step_title=>unistr('\8868\5355')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1988934022267168693)
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2187363173643870142)
,p_plug_name=>unistr('Good \8BBE\8BA1 Practices')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Here are some good design practices to follow when designing pages and apps for small screen devices.</p>',
'',
'<ul class="dm-UL">',
'<li><strong>Limit the number of fields to fill out</strong><br />',
'      Fewer fields to complete means a higher successrate of users completing the form. Whenever possible, use smart defaults, and employ HTML5 apis such as <a href="https://developer.mozilla.org/en-US/docs/Web/API/Geolocation/Using_geolocation" targ'
||'et="_blank">geolocation</a> to capture location data rather than asking the user to enter it manually.</li>',
'<li><strong>Use radio buttons in place of select lists when possible</strong><br />',
'      You can improve the usability of your form by replacing select lists which have a few options to a radio button.  This will result in fewer taps to see the available options as they will already be displayed on screen.  You can go even further '
||'by setting the <a href="f?p=&APP_ID.:1204">Display as Pill Button</a> template option to provide a more user friendly control.</li>',
'<li><strong>Position submit buttons near the end of the form</strong><br />',
'      This simple trick will make it far more easier to reach and tap on the submit button.</li>',
'<li><strong>Avoid using heavy controls and widgets</strong><br />',
'      While it may be tempting to use Interactive Grid on a phone, there may be alternatives that provide better usability and mobile performance. When in doubt, try to avoid large controls like Interactive Grids on mobile screens and instead try to '
||'optimize for user experience.</li>',
'<li><strong>Use numeric keyboards for numeric fields</strong><br />',
'      Using the keyboard on mobile devices to write a numerical value can be very annoying, to avoid this exists an alternative in the configuration of your numeric field that provides you a list of virtual keyboards to make your processes easier.</l'
||'i>',
'',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3542197004366664884)
,p_plug_name=>unistr('Form \8BBE\8BA1')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>10
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>When designing your data entry screens for mobile, consider using the <b>Floating Labels</b> field templates for your page items.  These templates are especially optimized for mobile use cases as they provide a much larger tap area to gain focus a'
||'nd provides larger text for improved readibility.  The field label will automatically shrink as a value is populated, but still remaining on screen so context is not lost.</p>',
'',
'<p>Be sure to visit the <a href="f?p=&APP_ID.:1600">Components &rarr; Forms &rarr; Floating Labels</a> page for additional examples.</p>',
'',
'<p><b>Steps</b></p>',
'<ol>',
'  <li>Select the page item in Page Designer</li>',
'  <li>Modify the Template property under Appearance</li>',
'  <li>Select either the <b>Optional - Floating</b> or <b>Required - Floating</b> template from the select list.</li>',
'</ol>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1434501757878284292)
,p_plug_name=>unistr('\79FB\52A8\7AEF Form Example')
,p_parent_plug_id=>wwv_flow_imp.id(3542197004366664884)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5915987771804560414)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7335621834579539103)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Data entry is a key component of many APEX apps and should be very carefully considered when designing screens for mobile use cases.  This page outlines a few patterns that Universal Theme provides as well as some general guidelines when designing'
||' forms and data entry pages for small screens.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1434503458040284309)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(1434501757878284292)
,p_button_name=>'P423_BUTTON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1434501859299284293)
,p_name=>'P423_TEXT_FIELD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1434501757878284292)
,p_item_default=>'Jon Snow'
,p_prompt=>'Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(1590760388063493177)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1434502008560284294)
,p_name=>'P423_NUMBER_FIELD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1434501757878284292)
,p_item_default=>'25'
,p_prompt=>'Age'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1590760388063493177)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'numeric')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1434502112820284295)
,p_name=>'P423_DATE_PICKER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1434501757878284292)
,p_item_default=>'1813-03-15'
,p_prompt=>'Date of Birth'
,p_placeholder=>'Date Picker'
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(1590760388063493177)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'NATIVE',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'show_time', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1434502257556284297)
,p_name=>'P423_CHECKBOX_GROUP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1434501757878284292)
,p_prompt=>'Representative animals'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Lion;Return1,Wolf;Return2,Dragon;Return3'
,p_field_template=>wwv_flow_imp.id(1590760388063493177)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-none:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1434502384947284298)
,p_name=>'P423_RADIO_GROUP'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1434501757878284292)
,p_prompt=>'Best season'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Season 1;Return1,Season 2;Return2,Season 3;Return3'
,p_field_template=>wwv_flow_imp.id(1590760388063493177)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-none:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1434502719499284301)
,p_name=>'P423_SELECT_LIST'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1434501757878284292)
,p_prompt=>'House'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Stark;Return1,Lannister;Return2,Tyrell;Return3,Baratheon;Return4,Cap Cap;Return5,Targaryen;Return6,Tully;Return7,Greyjoy;Return8,Martell;Return9'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(1590760388063493177)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1434503004501284304)
,p_name=>'P423_SWITCH'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1434501757878284292)
,p_item_default=>'King in the North'
,p_prompt=>'King in the North'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
