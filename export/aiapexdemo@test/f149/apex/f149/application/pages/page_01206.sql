prompt --application/pages/page_01206
begin
--   Manifest
--     PAGE: 01206
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
 p_id=>1206
,p_name=>unistr('Region - \53EF\6298\53E0')
,p_alias=>'COLLAPSIBLE-REGION'
,p_step_title=>unistr('\53EF\6298\53E0\533A\57DF - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1217698626403453901)
,p_plug_name=>unistr('\8BF4\660E')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835891595562876536)
,p_plug_name=>unistr('\6309\94AE\4F4D\7F6E')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835074408226037553)
,p_plug_name=>unistr('\53EF\6298\53E0\533A\57DF With \6309\94AE')
,p_parent_plug_id=>wwv_flow_imp.id(1835891595562876536)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>480
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<p>Region Body</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835893964100876539)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Allow your users to toggle the visibility of a region''s content on the page.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835894457566876540)
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
 p_id=>wwv_flow_imp.id(1835894944702876541)
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
 p_id=>wwv_flow_imp.id(1835895509832876541)
,p_plug_name=>unistr('\6F14\793A')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835901686033891010)
,p_plug_name=>'1. Default'
,p_parent_plug_id=>wwv_flow_imp.id(1835895509832876541)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835902157658891011)
,p_plug_name=>unistr('\53EF\6298\53E0\533A\57DF')
,p_region_name=>'Demo1'
,p_parent_plug_id=>wwv_flow_imp.id(1835901686033891010)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>480
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dm-Placeholder h180"> ',
'<span class="a-Icon icon-template-region"></span>',
'<h3>Region Body</h3>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835902652323891011)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(1835895509832876541)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>15
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835903197128891012)
,p_plug_name=>'2. Collapsed State'
,p_parent_plug_id=>wwv_flow_imp.id(1835895509832876541)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835904181328891012)
,p_plug_name=>unistr('\53EF\6298\53E0\533A\57DF')
,p_region_name=>'Demo2'
,p_parent_plug_id=>wwv_flow_imp.id(1835903197128891012)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>510
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dm-Placeholder h180"> ',
'<span class="a-Icon icon-template-region"></span>',
'<h3>Region Body</h3>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835903672872891012)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(1835895509832876541)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>25
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo2')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835904693329891013)
,p_plug_name=>unistr('3. Scrolling \4E3B\4F53')
,p_parent_plug_id=>wwv_flow_imp.id(1835895509832876541)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835905688382891014)
,p_plug_name=>unistr('\53EF\6298\53E0\533A\57DF')
,p_region_name=>'Demo3'
,p_parent_plug_id=>wwv_flow_imp.id(1835904693329891013)
,p_region_template_options=>'#DEFAULT#:i-h240:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>540
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dm-Placeholder h180"> ',
'<span class="a-Icon icon-template-region"></span>',
'<h3>Region Body</h3>',
'</div>',
'<div class="dm-Placeholder h180"> ',
'<span class="a-Icon icon-template-region"></span>',
'<h3>Region Body</h3>',
'</div>',
'<div class="dm-Placeholder h180"> ',
'<span class="a-Icon icon-template-region"></span>',
'<h3>Region Body</h3>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1835905155820891013)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(1835895509832876541)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>35
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo3')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835075031010037559)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1835074408226037553)
,p_button_name=>'CHANGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\66F4\6539')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835074775947037557)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1835074408226037553)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\5173\95ED')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835074651881037556)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1835074408226037553)
,p_button_name=>'COPY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\590D\5236')
,p_button_position=>'COPY'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835074539758037555)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1835074408226037553)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835074874751037558)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(1835074408226037553)
,p_button_name=>'EDIT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\7F16\8F91')
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835074450866037554)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(1835074408226037553)
,p_button_name=>'NEXT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\4E0B\4E00\6B65')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1835892466380876538)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(1835074408226037553)
,p_button_name=>'PREVIOUS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\4E0A\4E00\6B65')
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp.component_end;
end;
/
