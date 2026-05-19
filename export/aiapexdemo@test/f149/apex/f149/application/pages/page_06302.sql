prompt --application/pages/page_06302
begin
--   Manifest
--     PAGE: 06302
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
 p_id=>6302
,p_name=>unistr('\989C\8272\548C\72B6\6001\4FEE\9970\5668')
,p_alias=>'COLOR-AND-STATUS-MODIFIERS'
,p_step_title=>unistr('\989C\8272\548C\72B6\6001\4FEE\9970\5668 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(2144306959769755264)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.color-cell-block {',
'  display: block;',
'  padding: .5rem;',
'  text-align: center;',
'  border-radius: .125rem;',
'}',
'',
'.color-border {',
'  border-width: 1px;',
'  border-style: solid;',
'  padding: .5rem;',
'}'))
,p_page_css_classes=>'dm-Page'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2210333264428435626)
,p_name=>unistr('General Utility \7C7B')
,p_template=>wwv_flow_imp.id(4053997356862400624)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'colors-table'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--horizontalBorders'
,p_grid_column_span=>8
,p_grid_column_css_classes=>'col-sm-12'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LEVEL num, null color, null color_text, null color_bg, null color_bd',
'  FROM DUAL',
'CONNECT BY LEVEL <= 45',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2520292761174628983)
,p_query_num_rows=>45
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2210333930700435632)
,p_query_column_id=>1
,p_column_alias=>'NUM'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2210334034796435633)
,p_query_column_id=>2
,p_column_alias=>'COLOR'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\5757')
,p_column_html_expression=>'<span class="color-cell-block u-color-#NUM#">u-color-#NUM#</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2210333546413435629)
,p_query_column_id=>3
,p_column_alias=>'COLOR_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Text'
,p_column_html_expression=>'<span class="color-cell-block color-text u-color-#NUM#-text">u-color-#NUM#-text</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2210333700821435630)
,p_query_column_id=>4
,p_column_alias=>'COLOR_BG'
,p_column_display_sequence=>4
,p_column_heading=>'Background'
,p_column_html_expression=>'<span class="color-cell-block color-background u-color-#NUM#-bg">u-color-#NUM#-bg</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2210333797807435631)
,p_query_column_id=>5
,p_column_alias=>'COLOR_BD'
,p_column_display_sequence=>5
,p_column_heading=>'Border'
,p_column_html_expression=>'<span class="color-cell-block color-border u-color-#NUM#-border">u-color-#NUM#-border</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2946089132203365232)
,p_plug_name=>'Stateful Color Utilities'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Universal Theme provides 6 stateful colors: normal, hot, informational, danger, warning, and success. Here are the CSS modifier classes you can use to apply these states to your own UI controls.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2946089154396365233)
,p_name=>unistr('Stateful Utility \7C7B')
,p_template=>wwv_flow_imp.id(4053997356862400624)
,p_display_sequence=>60
,p_region_sub_css_classes=>'colors-table'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--horizontalBorders'
,p_grid_column_span=>8
,p_grid_column_css_classes=>'col-sm-12'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 seq, ''Normal'' status_label, ''u-normal'' status, null color, null color_text, null color_bg, null color_bd from dual',
'union all',
'select 2 seq, ''Hot'' status_label, ''u-hot'' status, null color, null color_text, null color_bg, null color_bd from dual',
'union all',
'select 3 seq, ''Warning'' status_label, ''u-warning'' status, null color, null color_text, null color_bg, null color_bd from dual',
'union all',
'select 4 seq, ''Danger'' status_label, ''u-danger'' status, null color, null color_text, null color_bg, null color_bd from dual',
'union all',
'select 5 seq, ''Info'' status_label, ''u-info'' status, null color, null color_text, null color_bg, null color_bd from dual',
'union all',
'select 6 seq, ''Success'' status_label, ''u-success'' status, null color, null color_text, null color_bg, null color_bd from dual',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2520292761174628983)
,p_query_num_rows=>45
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2946089996532365241)
,p_query_column_id=>1
,p_column_alias=>'SEQ'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2946089835334365240)
,p_query_column_id=>2
,p_column_alias=>'STATUS_LABEL'
,p_column_display_sequence=>1
,p_column_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2946089773644365239)
,p_query_column_id=>3
,p_column_alias=>unistr('\72B6\6001')
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2946089683989365238)
,p_query_column_id=>4
,p_column_alias=>'COLOR'
,p_column_display_sequence=>2
,p_column_heading=>unistr('\5757')
,p_column_html_expression=>'<span class="color-cell-block #STATUS#">#STATUS#</span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2946089414703365235)
,p_query_column_id=>5
,p_column_alias=>'COLOR_TEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Text'
,p_column_html_expression=>'<span class="color-cell-block color-text #STATUS#-text">#STATUS#-text</span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2946089494182365236)
,p_query_column_id=>6
,p_column_alias=>'COLOR_BG'
,p_column_display_sequence=>4
,p_column_heading=>'Background'
,p_column_html_expression=>'<span class="color-cell-block color-background #STATUS#-bg">#STATUS#-bg</span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2946089594895365237)
,p_query_column_id=>7
,p_column_alias=>'COLOR_BD'
,p_column_display_sequence=>5
,p_column_heading=>'Border'
,p_column_html_expression=>'<span class="color-cell-block color-border #STATUS#-border">#STATUS#-border</span>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3616328346886868007)
,p_plug_name=>'General Color Utilities'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>While many components within Universal Theme automatically make use of these colors, you can use them in several custom components as well.  Universal Theme provides a number of CSS utility classes that can be used to apply this color palette to a'
||'ny HTML markup.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3633569418380323233)
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
wwv_flow_imp.component_end;
end;
/
