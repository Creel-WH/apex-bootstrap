prompt --application/pages/page_06000
begin
--   Manifest
--     PAGE: 06000
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
 p_id=>6000
,p_name=>unistr('\53C2\8003')
,p_alias=>'REFERENCE'
,p_step_title=>unistr('\53C2\8003 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2822825955401454628)
,p_plug_name=>'Tools'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_list_id=>wwv_flow_imp.id(2144072935739459959)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(2049633292119822733)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2822826121259454629)
,p_plug_name=>'JavaScript Utilities'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_list_id=>wwv_flow_imp.id(2144074362921459960)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(2049633292119822733)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2825013178848871706)
,p_plug_name=>unistr('\53C2\8003')
,p_icon_css_classes=>'fa-lg fa-cogs u-color-13'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2655656254774638580)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3183675643571792703)
,p_plug_name=>'CSS Utilities'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_list_id=>wwv_flow_imp.id(2144070737652459949)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(2049633292119822733)
);
wwv_flow_imp.component_end;
end;
/
