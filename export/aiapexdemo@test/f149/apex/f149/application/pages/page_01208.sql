prompt --application/pages/page_01208
begin
--   Manifest
--     PAGE: 01208
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
 p_id=>1208
,p_name=>unistr('Region - \5411\5BFC')
,p_alias=>'WIZARD-REGION'
,p_step_title=>unistr('\5411\5BFC - &APP_TITLE.')
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
 p_id=>wwv_flow_imp.id(1232001889814109621)
,p_plug_name=>unistr('\8BF4\660E')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1',
  'attribute_03', '<strong>Tip.</strong> Create a sub-region within the Wizard Container to store your form items and other content to be place in your wizard body.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835977458363306020)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Wizards can be very useful in simplifying complex flows into smaller, more manageable steps.  This page describes full page Wizards, modal dialog Wizards, and the Wizard Progress list template.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835977983260306021)
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
 p_id=>wwv_flow_imp.id(1835978487103306022)
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
 p_id=>wwv_flow_imp.id(1835979009166306022)
,p_plug_name=>unistr('\6F14\793A')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835984079152315292)
,p_plug_name=>unistr('\5411\5BFC')
,p_region_name=>'Demo1'
,p_parent_plug_id=>wwv_flow_imp.id(1835979009166306022)
,p_region_sub_css_classes=>'dm-TemplateOption-previewTarget'
,p_region_template_options=>'#DEFAULT#:t-Wizard--hideStepsSmall'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayCurrentLabelOnly'
,p_plug_template=>wwv_flow_imp.id(2100687436488932803)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(1991789975259781493)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1991787562043735800)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835985418152315293)
,p_plug_name=>unistr('\5411\5BFC Form Sub Region')
,p_parent_plug_id=>wwv_flow_imp.id(1835984079152315292)
,p_region_css_classes=>'dm-Placeholder'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>690
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<p>Sub Region with Form Items</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835985867687315294)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3716087186036068423)
,p_plug_name=>unistr('Modal Dialog \5411\5BFC')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>A modal dialog wizard can be used to perform a complex flow while maintaining context of the page.</p>',
'<div class="dm-Hero-steps margin-bottom-md">',
'  <p><strong>Step 1.</strong> Use the Create Page wizard and select <strong>Wizard</strong>.</p>',
'  <p><strong>Step 2.</strong> Enter the number of pages you want in the wizard, and then set Page Mode to <strong>Modal Dialog</strong></p>',
'  <p><strong>Step 3.</strong> Follow the rest of the steps in the wizard to completion.</p>',
'</div>',
'<p>Now you have a modal dialog wizard created with the page numbers you specified in the creation wiard.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3716087268367068424)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3716087186036068423)
,p_button_name=>'OPEN_MODAL_WIZ'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('Open Modal Dialog \5411\5BFC')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1920:&SESSION.::&DEBUG.:RP::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835984490636315292)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(1835984079152315292)
,p_button_name=>'DEF_WIZ_NEXT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330746143016662570)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\4E00\6B65')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-right'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835984913835315293)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(1835984079152315292)
,p_button_name=>'DEF_WIZ_PREV'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330746143016662570)
,p_button_image_alt=>unistr('\4E0A\4E00\6B65')
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-angle-left'
);
wwv_flow_imp.component_end;
end;
/
