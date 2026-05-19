prompt --application/pages/page_01305
begin
--   Manifest
--     PAGE: 01305
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
 p_id=>1305
,p_name=>unistr('List - \83DC\5355\680F')
,p_alias=>'MENU-BAR-LIST'
,p_step_title=>unistr('\83DC\5355\680F List - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1230950621219448422)
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
 p_id=>wwv_flow_imp.id(1230950662252448423)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846434250029249566)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>This list template is used to display a menu bar control and is useful for building pages with advanced interaction.  Note that the region containing the menu bar must be sufficiently tall to accomodate the menus. </p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846434782623249567)
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
 p_id=>wwv_flow_imp.id(1846435318382249567)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1846442587438256317)
,p_name=>'List Attributes'
,p_template=>wwv_flow_imp.id(2303754088075183486)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG:js-headingLevel-2'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>8
,p_grid_column_css_classes=>'col-sm-12'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''#A01#'', ''ID of the Menu Item'' from dual union all',
'select ''#A02#'', ''True/False flag for whether or not this Menu Item and its children are disabled. '' from dual union all',
'select ''#A03#'', ''True/False flag for whether or not this Menu Item and its children should be hidden.'' from dual union all',
'select ''#A04#'', ''The text of the link inside of the Menu item. '' from dual union all',
'select ''#A05#'', ''Key command and/or shortcut to access this menu without tapping or clicking.'' from dual'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2082153545015023065)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1230950741746448424)
,p_query_column_id=>1
,p_column_alias=>'''#A01#'''
,p_column_display_sequence=>10
,p_column_heading=>'&#x27;#a01#&#x27;'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1230950927301448425)
,p_query_column_id=>2
,p_column_alias=>'''IDOFTHEMENUITEM'''
,p_column_display_sequence=>20
,p_column_heading=>'&#x27;idofthemenuitem&#x27;'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846444575855256318)
,p_plug_name=>unistr('\6F14\793A')
,p_region_name=>'Demo1'
,p_region_sub_css_classes=>'dm-TemplateOption-previewTarget2'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_component_template_options=>'#DEFAULT#:js-menu-callout'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_list_id=>wwv_flow_imp.id(3336619087569497098)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1991794459521980199)
);
wwv_flow_imp.component_end;
end;
/
