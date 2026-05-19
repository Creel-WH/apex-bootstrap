prompt --application/pages/page_03000
begin
--   Manifest
--     PAGE: 03000
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
 p_id=>3000
,p_name=>unistr('\7EC4\4EF6')
,p_alias=>'COMPONENTS'
,p_step_title=>unistr('\7EC4\4EF6 - &APP_TITLE.')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Update icon background color to match page hero color */',
':root {',
'    --ut-medialist-icon-background-color: var(--u-color-15);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1988934516663172054)
,p_plug_name=>unistr('\7EC4\4EF6')
,p_icon_css_classes=>'fa-lg fa-shapes u-color-15'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2655656254774638580)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5510092310531371644)
,p_plug_name=>unistr('\7EC4\4EF6')
,p_region_name=>'region-types'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-MediaList--showBadges:t-MediaList--cols t-MediaList--2cols:t-MediaList--iconsRounded'
,p_plug_template=>wwv_flow_imp.id(4053997356862400624)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_list_id=>wwv_flow_imp.id(3486578825180664761)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(2049633292119822733)
);
wwv_flow_imp.component_end;
end;
/
