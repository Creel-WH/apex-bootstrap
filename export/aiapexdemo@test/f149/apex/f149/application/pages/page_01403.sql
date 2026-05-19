prompt --application/pages/page_01403
begin
--   Manifest
--     PAGE: 01403
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
 p_id=>1403
,p_name=>'Value Attribute Pairs'
,p_alias=>'VALUE-ATTR-PAIRS-REPORT'
,p_step_title=>'Value Attribute Pairs - &APP_TITLE.'
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
 p_id=>wwv_flow_imp.id(1846778191011119449)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>This report template is useful for displaying attribute value / key value pairs and works well with both Row or Column based queries.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846778669638119450)
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
 p_id=>wwv_flow_imp.id(1846779232941119451)
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
 p_id=>wwv_flow_imp.id(1846797840941127863)
,p_plug_name=>'Row Based'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232001121933109613)
,p_plug_name=>unistr('\8BF4\660E')
,p_parent_plug_id=>wwv_flow_imp.id(1846797840941127863)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>1
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232001299056109615)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(1846797840941127863)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>11
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1846798903234127864)
,p_name=>'Value Attribute Pairs (Row Based)'
,p_region_name=>'Demo1'
,p_parent_plug_id=>wwv_flow_imp.id(1232001299056109615)
,p_template=>wwv_flow_imp.id(4483079085784721863)
,p_display_sequence=>10
,p_region_sub_css_classes=>'dm-TemplateOption-previewTarget'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>'select task_name, status from eba_ut_chart_tasks'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2082153545015023065)
,p_query_num_rows=>6
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846799283014127866)
,p_query_column_id=>1
,p_column_alias=>unistr('\4EFB\52A1\540D\79F0')
,p_column_display_sequence=>1
,p_column_heading=>unistr('\4EFB\52A1\540D\79F0')
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846799660844127867)
,p_query_column_id=>2
,p_column_alias=>unistr('\72B6\6001')
,p_column_display_sequence=>2
,p_column_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232001697742109619)
,p_plug_name=>unistr('\793A\4F8B SQL \67E5\8BE2')
,p_parent_plug_id=>wwv_flow_imp.id(1846797840941127863)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>41
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.REGION_SOURCE_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846798431411127864)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(1846797840941127863)
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
 p_id=>wwv_flow_imp.id(1846800166637127867)
,p_plug_name=>'Column Based'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232001237112109614)
,p_plug_name=>unistr('\8BF4\660E')
,p_parent_plug_id=>wwv_flow_imp.id(1846800166637127867)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>11
,p_plug_grid_column_span=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo2')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232001583693109618)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(1846800166637127867)
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
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1846800699651127868)
,p_name=>'Value Attribute Pairs (Column Based)'
,p_region_name=>'Demo2'
,p_parent_plug_id=>wwv_flow_imp.id(1232001583693109618)
,p_template=>wwv_flow_imp.id(4483079085784721863)
,p_display_sequence=>10
,p_region_sub_css_classes=>'dm-TemplateOption-previewTarget'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  id,',
'  project, ',
'  created, ',
'  created_by, ',
'  updated, ',
'  updated_by',
'from eba_ut_chart_projects'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2082153859609023066)
,p_query_num_rows=>1
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846801102481127868)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_heading_alignment=>'LEFT'
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846801450325127868)
,p_query_column_id=>2
,p_column_alias=>unistr('\9879\76EE')
,p_column_display_sequence=>2
,p_column_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846801892230127869)
,p_query_column_id=>3
,p_column_alias=>unistr('\521B\5EFA\65F6\95F4')
,p_column_display_sequence=>3
,p_column_heading=>unistr('\521B\5EFAd')
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846802259650127869)
,p_query_column_id=>4
,p_column_alias=>unistr('\521B\5EFA\4EBA')
,p_column_display_sequence=>4
,p_column_heading=>unistr('\521B\5EFAd by')
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846802648782127870)
,p_query_column_id=>5
,p_column_alias=>unistr('\66F4\65B0\65F6\95F4')
,p_column_display_sequence=>5
,p_column_heading=>'Updated'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846803043136127870)
,p_query_column_id=>6
,p_column_alias=>unistr('\66F4\65B0\4EBA')
,p_column_display_sequence=>6
,p_column_heading=>'Updated by'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232001783231109620)
,p_plug_name=>unistr('\793A\4F8B SQL \67E5\8BE2')
,p_parent_plug_id=>wwv_flow_imp.id(1846800166637127867)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>190
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.REGION_SOURCE_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'Demo2')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846803588106127870)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(1846800166637127867)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>180
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo2')).to_clob
);
wwv_flow_imp.component_end;
end;
/
