prompt --application/pages/page_01204
begin
--   Manifest
--     PAGE: 01204
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
 p_id=>1204
,p_name=>unistr('Region - \6309\94AE\5BB9\5668')
,p_alias=>'BUTTON-CONTAINER-REGION'
,p_step_title=>unistr('\6309\94AE\5BB9\5668 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835770543579235016)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Button Groups are a series of buttons that appear together to make a single conrol.  You can create button groups in APEX using the button component, or as a customized radio group page item.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835771118311235017)
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
 p_id=>wwv_flow_imp.id(1835771605354235017)
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
 p_id=>wwv_flow_imp.id(1835777261983272623)
,p_plug_name=>unistr('Using Page \6309\94AE')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You can turn a set of buttons into a button group simply by modifying the template options. Follow these instructions to create a simple button group of the following three buttons.</p>',
'<div class="dm-Hero-steps margin-bottom-md">',
'<strong>Step 1.</strong> Create three buttons in the same button position<br>',
'<strong>Step 2.</strong> Update each of the buttons'' Template Options as follows<br>',
'<ol>',
'  <li>Button A: set <em>Button Set</em> to <b>First Button</b></li>',
'  <li>Button B: set <em>Button Set</em> to <b>Inner Button</b></li>',
'  <li>Button C: set <em>Button Set</em> to <b>Last Button</b></li>',
'</ol>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835772005384235018)
,p_plug_name=>'Additional Example'
,p_parent_plug_id=>wwv_flow_imp.id(1835777261983272623)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<p>You can have any number of buttons within a button group.  Here is an example of a music player toolbar styled the same method.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3582860418763823638)
,p_plug_name=>'Using Page Items'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You can also style the <strong>radio button</strong> or <strong>checkbox</strong> items to appear as a Button Group. This is particularly useful when you want to use store the selection in Session State and if you want to Dynamic Actions to perfor'
||'m some client side behavior as you interact with the control.</p>',
'<p>For example, in several Packaged Apps, this technique is used to switch between different displays of the same data.</p>',
'<p>Follow the instrutions below to convert a Radio Group item into a Button Group.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3582861061432823645)
,p_plug_name=>unistr('\6B65\9AA4 1')
,p_parent_plug_id=>wwv_flow_imp.id(3582860418763823638)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dm-Hero-steps">',
'<strong>Step 1.</strong> Create a Radio Group item and set the following properties:<br>',
'<ol>',
'  <li>Set <em>Number of Columns</em> to the number of buttons you want to have in the button group. In this example, it is set to 3.</li>',
'  <li>Under <strong>List of Values</strong>, make sure that <em>Display Extra Values</em> and <em>Display Null Value</em> are set to <strong>No</strong></li>',
'</ol>',
'<p>After competing this step, you should have a button group that looks like the item below.</p>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3582861207090823646)
,p_plug_name=>unistr('\6B65\9AA4 2')
,p_parent_plug_id=>wwv_flow_imp.id(3582860418763823638)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dm-Hero-steps">',
'<p><strong>Step 2.</strong> Update the Radio Group item''s Template Options and set <em>Item Group Display</em> to <strong>Display as Pill Button</strong></p>',
'<p>That''s it. Your Radio Group item will now appear as a Button Group.</p>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835778604790272625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1835777261983272623)
,p_button_name=>'BTN_GRP_A'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\6309\94AE A')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3582859699195823631)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1835777261983272623)
,p_button_name=>'BTN_GRP_B'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\6309\94AE B')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-left'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835778942499272625)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(1835777261983272623)
,p_button_name=>'BTN_GRP_C'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\6309\94AE C')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-right'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3582859765690823632)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(1835772005384235018)
,p_button_name=>'BTN_GRP_2A'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>wwv_flow_imp.id(2330746143016662570)
,p_button_image_alt=>unistr('\4E0A\4E00\6B65')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-step-backward'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3582859865184823633)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(1835772005384235018)
,p_button_name=>'BTN_GRP_2B'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2330746143016662570)
,p_button_image_alt=>'Rewind'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-backward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3582860231363823636)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(1835772005384235018)
,p_button_name=>'BTN_GRP_2C'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2330746143016662570)
,p_button_image_alt=>'Play'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-play'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3582860307103823637)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(1835772005384235018)
,p_button_name=>'BTN_GRP_2D'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2330746143016662570)
,p_button_image_alt=>'Stop'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-stop'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3582859994356823634)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(1835772005384235018)
,p_button_name=>'BTN_GRP_2E'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2330746143016662570)
,p_button_image_alt=>'Forward'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-forward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3582860069707823635)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(1835772005384235018)
,p_button_name=>'BTN_GRP_2F'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_imp.id(2330746143016662570)
,p_button_image_alt=>unistr('\4E0B\4E00\6B65')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-step-forward'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3582860786973823642)
,p_name=>'P1204_RADIO_A'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3582861061432823645)
,p_item_default=>'A'
,p_prompt=>'Radio Group'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Option A;A,Option B;B,Option C;C'
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#:margin-top-md'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3582861290792823647)
,p_name=>'P1204_RADIO_B'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3582861207090823646)
,p_item_default=>'A'
,p_prompt=>unistr('Radio \6309\94AE Group')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Option A;A,Option B;B,Option C;C'
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#:margin-top-md:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
