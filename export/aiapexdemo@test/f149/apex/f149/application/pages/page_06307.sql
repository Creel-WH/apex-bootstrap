prompt --application/pages/page_06307
begin
--   Manifest
--     PAGE: 06307
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
 p_id=>6307
,p_name=>unistr('CSS \53D8\91CF')
,p_alias=>'CSS-VARIABLES'
,p_step_title=>unistr('CSS \53D8\91CF')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.red {color:red;}',
'',
'.color-border {',
'    border-width: 1px;',
'    border-style: solid;',
'    padding: 7px;',
'}',
'',
'.color-cell-block {',
'    display: block;',
'    padding: 8px;',
'    text-align: center;',
'    border-radius: 2px;',
'}',
'',
'.sample-code .t-Region-body {',
'  --ut-region-body-padding-y: 48px;',
'  --ut-region-body-padding-x: 48px;',
'  background-color: rgba(125, 125, 125, .5);',
'}',
'',
'.preview {',
'  display: inline-flex;',
'  inline-size: 56px;',
'  block-size: 32px;',
'  font-size: 20px;',
'  align-items: center;',
'  justify-content: center;',
'}',
'',
'.exampleCard {',
'  border-width: var(--ut-component-border-width);',
'  border-style: solid;',
'  border-color: var(--ut-component-border-color);',
'  border-radius: var(--ut-component-border-radius);',
'  box-shadow: var(--ut-component-box-shadow);',
'  background-color: var(--ut-component-background-color);',
'  color: var(--ut-component-text-default-color);',
'  padding: 20px;',
'  margin: auto;',
'  max-width: 320px;',
'}',
'',
'.exampleCard-icon {',
'  background-color: var(--ut-component-icon-background-color);',
'  color: var(--ut-component-icon-color);',
'  inline-size: 48px;',
'  block-size: 48px;',
'  font-size: 24px;',
'  border-radius: inherit;',
'  display: flex;',
'  justify-content: center;',
'  align-items: center;',
'  margin-block-end: 12px;',
'}',
'',
'.exampleCard-title {',
'  color: var(--ut-component-text-title-color);',
'  margin: 0;',
'}',
'',
'.exampleCard-subtitle {',
'  color: var(--ut-component-text-subtitle-color);',
'  margin-block-start: 0;',
'  margin-block-end: 12px;',
'}',
'',
'.exampleCard-misc {',
'  color: var(--ut-component-text-muted-color);',
'  font-size: 12px;',
'  margin-block-start: 12px;',
'  margin-block-end: 0;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1233452295385545981)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'You can use these CSS variables, instead of hard-coded values, in your custom CSS definitions.',
'</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1233452343902545982)
,p_plug_name=>'Color Variables'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Component variables are generic variables that are used across the Universal Theme as the base styles, and can be used by plugin developers to hook into theme roller.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1233452952972545988)
,p_name=>'Color Palette Variables'
,p_parent_plug_id=>wwv_flow_imp.id(1233452343902545982)
,p_template=>wwv_flow_imp.id(2303754088075183486)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG:js-headingLevel-3'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--inline:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LEVEL num, ',
'    null variable, ',
'    null preview, ',
'    null variable_contrast,',
'    null preview_contrast,',
'    null color_block',
'  FROM DUAL',
'CONNECT BY LEVEL <= 45',
'order by 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2520292761174628983)
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233453137895545989)
,p_query_column_id=>1
,p_column_alias=>'NUM'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233453226841545990)
,p_query_column_id=>2
,p_column_alias=>'VARIABLE'
,p_column_display_sequence=>20
,p_column_heading=>'Variable'
,p_column_html_expression=>'--u-color-#NUM#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233453297825545991)
,p_query_column_id=>3
,p_column_alias=>'PREVIEW'
,p_column_display_sequence=>30
,p_column_heading=>'Color Preview'
,p_column_html_expression=>'<span class="preview" style="background-color: var(--u-color-#NUM#)"></span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233453412408545992)
,p_query_column_id=>4
,p_column_alias=>'VARIABLE_CONTRAST'
,p_column_display_sequence=>40
,p_column_heading=>'Variable Contrast'
,p_column_html_expression=>'--u-color-#NUM#-contrast'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233453484627545993)
,p_query_column_id=>5
,p_column_alias=>'PREVIEW_CONTRAST'
,p_column_display_sequence=>50
,p_column_heading=>'Contrast Preview'
,p_column_html_expression=>'<span class="preview" style="background: var(--u-color-#NUM#); color: var(--u-color-#NUM#-contrast)">Abc</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233453595239545994)
,p_query_column_id=>6
,p_column_alias=>'COLOR_BLOCK'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1233453742308545996)
,p_name=>'Stateful Color Variables'
,p_parent_plug_id=>wwv_flow_imp.id(1233452343902545982)
,p_template=>wwv_flow_imp.id(2303754088075183486)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:t-ContentBlock--lightBG:js-headingLevel-3'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--inline:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
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
,p_query_num_rows=>999
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233453892114545997)
,p_query_column_id=>1
,p_column_alias=>'SEQ'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233453959541545998)
,p_query_column_id=>2
,p_column_alias=>'STATUS_LABEL'
,p_column_display_sequence=>20
,p_column_heading=>unistr('\72B6\6001')
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233454070861545999)
,p_query_column_id=>3
,p_column_alias=>unistr('\72B6\6001')
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233454186852546000)
,p_query_column_id=>4
,p_column_alias=>'COLOR'
,p_column_display_sequence=>40
,p_column_heading=>unistr('\5757')
,p_column_html_expression=>'<span class="color-cell-block #STATUS#">#STATUS#</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233454265832546001)
,p_query_column_id=>5
,p_column_alias=>'COLOR_TEXT'
,p_column_display_sequence=>50
,p_column_heading=>'Text'
,p_column_html_expression=>'<span class="color-cell-block color-text #STATUS#-text">#STATUS#-text</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233454364728546002)
,p_query_column_id=>6
,p_column_alias=>'COLOR_BG'
,p_column_display_sequence=>60
,p_column_heading=>'Background'
,p_column_html_expression=>'<span class="color-cell-block color-background #STATUS#-bg">#STATUS#-bg</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1233454510816546003)
,p_query_column_id=>7
,p_column_alias=>'COLOR_BD'
,p_column_display_sequence=>70
,p_column_heading=>'Border'
,p_column_html_expression=>'<span class="color-cell-block color-border #STATUS#-border">#STATUS#-border</span>'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1233452535241545983)
,p_plug_name=>'Component Variables'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="t-Report t-Report--stretch t-Report--staticRowColors t-Report--rowHighlightOff t-Report--horizontalBorders">',
'<table class="t-Report-report" width="100%">',
'  <thead>',
'    <tr>',
'      <th class="t-Report-colHead" align="left">Variable</th>',
'      <th class="t-Report-colHead">Preview</th>',
'      <th class="t-Report-colHead" align="left">Description</th>',
'      <th class="t-Report-colHead" align="left">Default Value (Vita)</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-background-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-background-color);"></span></td>',
'      <td class="t-Report-cell">Component Background Color</td>',
'      <td class="t-Report-cell">#fff</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-border-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-border-color);"></span></td>',
'      <td class="t-Report-cell">Component Border Color</td>',
'      <td class="t-Report-cell">rgba(0,0,0,.1)</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-border-width</td>',
'      <td class="t-Report-cell"><span class="preview" style="border-color:var(--ut-component-border-color);border-width:var(--ut-component-border-width);border-style: solid;"></span></td>',
'      <td class="t-Report-cell">Component Border Width</td>',
'      <td class="t-Report-cell">1px</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-border-radius</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-border-color);border-color:var(--ut-component-border-color);border-width:var(--ut-component-border-width);border-style: solid;border-radius:var(--ut-comp'
||'onent-border-radius);"></span></td>',
'      <td class="t-Report-cell">Component Border Radius</td>',
'      <td class="t-Report-cell">2px</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-box-shadow</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-background-color); box-shadow:var(--ut-component-box-shadow);"></span></td>',
'      <td class="t-Report-cell">Component Shadow</td>',
'      <td class="t-Report-cell">var(--ut-shadow-lg)</td>',
'    </tr>',
'',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-highlight-background-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-highlight-background-color);"></span></td>',
'      <td class="t-Report-cell">Component Highlight Background Color (example: hover state)</td>',
'      <td class="t-Report-cell">rgba(0, 0, 0, .025)</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-toolbar-background-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-toolbar-background-color);"></span></td>',
'      <td class="t-Report-cell">Component Toolbar Background Color</td>',
'      <td class="t-Report-cell">rgba(0, 0, 0, .025)</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-inner-border-width</td>',
'      <td class="t-Report-cell"><span class="preview" style="border-color:var(--ut-component-inner-border-color);border-width:var(--ut-component-inner-border-width);border-style: solid;"></span></td>',
'      <td class="t-Report-cell">Component Inner Border Width</td>',
'      <td class="t-Report-cell">1px</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-inner-border-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-inner-border-color);"></span></td>',
'      <td class="t-Report-cell">Component Inner Border Color</td>',
'      <td class="t-Report-cell">rgba(0, 0, 0, 0.05)</td>',
'    </tr>',
'',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-text-default-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="color:var(--ut-component-text-default-color)">Abc</span></td>',
'      <td class="t-Report-cell">Component Default Text Color</td>',
'      <td class="t-Report-cell">#000</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-text-title-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="color:var(--ut-component-text-title-color)">Abc</span></td>',
'      <td class="t-Report-cell">Component Default Title Color</td>',
'      <td class="t-Report-cell">#000</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-text-subtitle-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="color:var(--ut-component-text-subtitle-color)">Abc</span></td>',
'      <td class="t-Report-cell">Component Default Subtitle Color</td>',
'      <td class="t-Report-cell">rgba(0, 0, 0, .85)</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-text-muted-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="color:var(--ut-component-text-muted-color)">Abc</span></td>',
'      <td class="t-Report-cell">Component Default Muted Color (example: description text)</td>',
'      <td class="t-Report-cell">rgba(0, 0, 0, .65)</td>',
'    </tr>',
'',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-icon-background-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-icon-background-color);"></span></td>',
'      <td class="t-Report-cell">Component Icon Background Color</td>',
'      <td class="t-Report-cell">var(--ut-palette-primary)</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-icon-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="color:var(--ut-component-icon-color)"><span class="fa fa-apex"></span></span></td>',
'      <td class="t-Report-cell">Component Icon Color</td>',
'      <td class="t-Report-cell">var(--ut-palette-primary-contrast)</td>',
'    </tr>',
'',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-badge-background-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-badge-background-color);"></span></td>',
'      <td class="t-Report-cell">Component Badge Background Color</td>',
'      <td class="t-Report-cell">rgba(0, 0, 0, .05)</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-badge-text-color</td>',
'      <td class="t-Report-cell"><span class="preview" style="color:var(--ut-component-badge-text-color)">Abc</span></td>',
'      <td class="t-Report-cell">Component Badge Text Color</td>',
'      <td class="t-Report-cell">var(--ut-component-text-default-color)</td>',
'    </tr>',
'',
'    <tr>',
'      <td class="t-Report-cell">--ut-component-badge-border-radius</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-badge-background-color);border-radius:var(--ut-component-badge-border-radius);"></span></td>',
'      <td class="t-Report-cell">Component Badge Border Radius</td>',
'      <td class="t-Report-cell">2px</td>',
'    </tr>',
'',
'  </tbody>',
'</table>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1233452612372545984)
,p_plug_name=>'Shadow Variables'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="t-Report-report" width="100%">',
'  <thead>',
'    <tr>',
'      <th class="t-Report-colHead" align="left">Variable</th>',
'      <th class="t-Report-colHead">Preview</th>',
'      <th class="t-Report-colHead" align="left">Description</th>',
'      <th class="t-Report-colHead" align="left">Default Value (Vita)</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr>',
'      <td class="t-Report-cell">--ut-shadow-sm</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-background-color);box-shadow:var(--ut-shadow-sm);"></span></td>',
'      <td class="t-Report-cell">Shadow Small</td>',
'      <td class="t-Report-cell">0 2px 4px -2px rgba(0, 0, 0, 0.1)</td>',
'    </tr>',
'    <tr>',
'      <td class="t-Report-cell">--ut-shadow-md</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-background-color);box-shadow:var(--ut-shadow-md);"></span></td>',
'      <td class="t-Report-cell">Shadow Medium</td>',
'      <td class="t-Report-cell">0 12px 24px -12px rgba(0, 0, 0, 0.3)</td>',
'    </tr>',
'    <tr>',
'      <td class="t-Report-cell">--ut-shadow-lg</td>',
'      <td class="t-Report-cell"><span class="preview" style="background-color:var(--ut-component-background-color);box-shadow:var(--ut-shadow-lg);"></span></td>',
'      <td class="t-Report-cell">Shadow Large</td>',
'      <td class="t-Report-cell">0 24px 48px -24px rgba(0, 0, 0, 0.3)</td>',
'    </tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1233452689311545985)
,p_plug_name=>'Sample Component Preview'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="exampleCard">',
'  <div class="exampleCard-icon fa fa-apex"></div>',
'  <h3 class="exampleCard-title">Example Title</h3>',
'  <h4 class="exampleCard-subtitle">Example Subtitle</h4>',
'  <div class="exampleCard-body">',
'    This is just an example of a component''s body text.',
'  </div>',
'  <div class="exampleCard-misc">Example Muted Text</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1233452797004545986)
,p_plug_name=>'Sample Component CSS'
,p_parent_plug_id=>wwv_flow_imp.id(1233452689311545985)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody:margin-top-lg'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<code>',
'.exampleCard {',
'  border-width: <span class="red">var(--ut-component-border-width)</span>;',
'  border-style: solid;',
'  border-color: <span class="red">var(--ut-component-border-color)</span>;',
'  border-radius: <span class="red">var(--ut-component-border-radius)</span>;',
'  box-shadow: <span class="red">var(--ut-component-box-shadow)</span>;',
'  background-color: <span class="red">var(--ut-component-background-color)</span>;',
'  color: <span class="red">var(--ut-component-text-default-color)</span>;',
'  padding: 20px;',
'  margin: auto;',
'  max-width: 320px;',
'}',
'',
'.exampleCard-icon {',
'  background-color: <span class="red">var(--ut-component-icon-background-color)</span>;',
'  color: <span class="red">var(--ut-component-icon-color)</span>;',
'  inline-size: 48px;',
'  block-size: 48px;',
'  font-size: 24px;',
'  border-radius: inherit;',
'  display: flex;',
'  justify-content: center;',
'  align-items: center;',
'  margin-block-end: 12px;',
'}',
'',
'.exampleCard-title {',
'  color: <span class="red">var(--ut-component-text-title-color)</span>;',
'  margin: 0;',
'}',
'',
'.exampleCard-subtitle {',
'  color: <span class="red">var(--ut-component-text-subtitle-color)</span>;',
'  margin-block-start: 0;',
'  margin-block-end: 12px;',
'}',
'',
'.exampleCard-misc {',
'  color: <span class="red">var(--ut-component-text-muted-color)</span>;',
'  font-size: 12px;',
'  margin-block-start: 12px;',
'  margin-block-end: 0;',
'}',
'</code>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1233454580944546004)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2513101747170473402)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3156601119967118728)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4054001765906400637)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1233454710150546005)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp.component_end;
end;
/
