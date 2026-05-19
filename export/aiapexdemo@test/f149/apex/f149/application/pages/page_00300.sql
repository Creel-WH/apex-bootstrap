prompt --application/pages/page_00300
begin
--   Manifest
--     PAGE: 00300
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
 p_id=>300
,p_name=>unistr('\7F51\683C\5E03\5C40')
,p_alias=>'GRID-LAYOUT'
,p_step_title=>unistr('\7F51\683C\5E03\5C40 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.display-hidden {',
'    color: var(--ut-component-text-muted-color)!important;',
'}',
'',
'.display-visible {',
'    color: var(--ut-component-text-subtitle-color) !important;',
'    background-color: rgba(59, 170, 44, .1) !important;',
'}',
'',
'.region-grid {',
'    text-align: center;',
'    padding: 16px 8px;',
'    border-radius: 4px;',
'    box-shadow: var(--ut-alert-box-shadow);',
'    font-size: 10px;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    background-color: var(--ut-component-badge-background-color);',
'    color: var(--ut-component-badge-text-color);',
'    font-weight: 500;',
'    margin: 8px 0;',
'    line-height: 1.25;',
'}'))
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1217697483389453890)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1217697694672453892)
,p_plug_name=>unistr('\54CD\5E94\5F0F\8BBE\8BA1')
,p_region_name=>'responsive_design'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Universal Theme is responsive out of the box. For more control on your application responsive behavior, read on the additional Universal Theme responsive options.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2822525430793269004)
,p_name=>unistr('\54CD\5E94\5F0F\7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(1217697694672453892)
,p_template=>wwv_flow_imp.id(2303754088075183486)
,p_display_sequence=>10
,p_region_css_classes=>'margin-top-xl'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''\8303\56F4'' grid_property,'),
unistr('       ''\5168\90E8'' grid_all,'),
unistr('       ''479px \53CA\4EE5\4E0B'' grid_extra_extra_small,'),
unistr('       ''480px \5230 639px'' grid_extra_small,'),
unistr('       ''640px \5230 767px'' grid_small,'),
unistr('       ''768px \5230 991px'' grid_medium,'),
unistr('       ''992px \5230 1199px'' grid_large,'),
unistr('       ''1200px \5230 1399px'' grid_extra_large,'),
unistr('       ''1400px \53CA\4EE5\4E0A'' grid_extra_extra_large'),
'  from dual union all',
'',
unistr('select ''CSS \7C7B\524D\7F00'' grid_property,'),
'       ''.col-'' grid_all,',
'       ''.col-xxs-'' grid_extra_extra_small,',
'       ''.col-xs-'' grid_extra_small,',
'       ''.col-sm-'' grid_small,',
'       ''.col-md-'' grid_medium,',
'       ''.col-lg-'' grid_large,',
'       ''.col-xl-'' grid_extra_large,',
'       ''.col-xxl-'' grid_extra_extra_large',
'  from dual union all',
'',
unistr('select ''\5217\6570'' grid_property,'),
'       ''12'' grid_all,',
'       '''' grid_extra_extra_small,',
'       '''' grid_extra_small,',
'       '''' grid_small,',
'       '''' grid_medium,',
'       '''' grid_large,',
'       '''' grid_extra_large,',
'       '''' grid_extra_extra_large',
'  from dual union all',
'',
unistr('select ''\95F4\8DDD'' grid_property,'),
'       ''1rem (0.5rem each side)'' grid_all,',
'       '''' grid_extra_extra_small,',
'       '''' grid_extra_small,',
'       '''' grid_small,',
'       '''' grid_medium,',
'       '''' grid_large,',
'       '''' grid_extra_large,',
'       '''' grid_extra_extra_large',
'  from dual'))
,p_header=>'<p>You can fine tune the responsive behavior of the components on your page by modifying the <strong>Column CSS Classes</strong> property of your components.</p>'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2520292761174628983)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(944552447746467884)
,p_query_column_id=>1
,p_column_alias=>'GRID_PROPERTY'
,p_column_display_sequence=>10
,p_column_html_expression=>'<strong>#GRID_PROPERTY#</strong>'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(944552568424467885)
,p_query_column_id=>2
,p_column_alias=>'GRID_ALL'
,p_column_display_sequence=>20
,p_column_heading=>unistr('\5168\90E8')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(944552708420467886)
,p_query_column_id=>3
,p_column_alias=>'GRID_EXTRA_EXTRA_SMALL'
,p_column_display_sequence=>30
,p_column_heading=>unistr('\8D85\5C0F')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(944552820132467887)
,p_query_column_id=>4
,p_column_alias=>'GRID_EXTRA_SMALL'
,p_column_display_sequence=>40
,p_column_heading=>unistr('\8F83\5C0F')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(944552931571467888)
,p_query_column_id=>5
,p_column_alias=>'GRID_SMALL'
,p_column_display_sequence=>50
,p_column_heading=>unistr('\5C0F')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(944552957454467889)
,p_query_column_id=>6
,p_column_alias=>'GRID_MEDIUM'
,p_column_display_sequence=>60
,p_column_heading=>unistr('\4E2D')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(944553130271467890)
,p_query_column_id=>7
,p_column_alias=>'GRID_LARGE'
,p_column_display_sequence=>70
,p_column_heading=>unistr('\5927')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(944553180183467891)
,p_query_column_id=>8
,p_column_alias=>'GRID_EXTRA_LARGE'
,p_column_display_sequence=>80
,p_column_heading=>unistr('\8F83\5927')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(944553250901467892)
,p_query_column_id=>9
,p_column_alias=>'GRID_EXTRA_EXTRA_LARGE'
,p_column_display_sequence=>90
,p_column_heading=>unistr('\8D85\5927')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2912199056970986910)
,p_plug_name=>unistr('\53EF\89C1\6027\7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(1217697694672453892)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the following classes to hide a given component when the viewport size is at the specified breakpoint.</p>',
'',
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc  dm-Report--grid">',
'  <thead>',
'    <tr>',
'      <th></th>',
'      <th>XXS <small>479px and below</small></th>',
'      <th>XS <small>480px to 639px</small></th>',
'      <th>Small <small>640px to 767px</small></th>',
'      <th>Medium <small>768px to 991px</small></th>',
'      <th>Large <small>992px and above</small></th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr>',
'      <th scope="row"><span class="class">hidden-<span class="class-var">xxs</span>-down</span></th>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'    </tr>',
'    <tr>',
'      <th scope="row"><span class="class">hidden-<span class="class-var">xs</span>-down</span></th>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'    </tr>',
'    <tr>',
'      <th scope="row"><span class="class">hidden-<span class="class-var">sm</span>-down</span></th>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'    </tr>',
'    <tr>',
'      <th scope="row"><span class="class">hidden-<span class="class-var">md</span>-down</span></th>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-visible">Visible</td>',
'    </tr>',
'    <tr>',
'      <th scope="row"><span class="class">hidden-<span class="class-var">lg</span>-down</span></th>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'    </tr>',
'    <tr>',
'      <th scope="row"><span class="class">hidden-<span class="class-var">xxs</span>-up</span></th>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'    </tr>',
'    <tr>',
'      <th scope="row"><span class="class">hidden-<span class="class-var">xs</span>-up</span></th>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'    </tr>',
'    <tr>',
'      <th scope="row"><span class="class">hidden-<span class="class-var">sm</span>-up</span></th>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'    </tr>',
'    <tr>',
'      <th scope="row"><span class="class">hidden-<span class="class-var">md</span>-up</span></th>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-hidden">Hidden</td>',
'      <td class="display-hidden">Hidden</td>',
'    </tr>',
'    <tr>',
'      <th scope="row"><span class="class">hidden-<span class="class-var">lg</span>-up</span></th>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-visible">Visible</td>',
'      <td class="display-hidden">Hidden</td>',
'    </tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3231052439008556605)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(1217697694672453892)
,p_region_css_classes=>'u-textCenter	'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p class="u-textLeft">Every region below uses the following responsive CSS Classes: <code>col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1</code></p>',
'<p class="u-textLeft">Resize this window to experience the responsiveness of this page.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080445457053847344)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 2')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080445632421847345)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 4')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080445670389847346)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 6')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080445746589847347)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 8')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080445923347847348)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 10')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080446038429847349)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 1')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080446056340847350)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 3')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080446167176847351)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 5')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080446283330847352)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 7')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080446397024847353)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 9')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080446516274847354)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 11')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>170
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3080446576344847355)
,p_plug_name=>unistr('\54CD\5E94\5F0F\533A\57DF 12')
,p_parent_plug_id=>wwv_flow_imp.id(3231052439008556605)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>180
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-xxs-12 col-xs-6 col-sm-4 col-md-3 col-lg-2 col-xl-2 col-xxl-1'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795484523688655995)
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
 p_id=>wwv_flow_imp.id(2822525586762269006)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Universal Theme uses a 12 columns grid layout system for arranging components on a page.</p>',
'<p>Understanding this grid system will allow you to create thoughful designs and personalize the responsive experience of your applications.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795483851220655988)
,p_plug_name=>unistr('Toggle \5E03\5C40 Columns')
,p_parent_plug_id=>wwv_flow_imp.id(2822525586762269006)
,p_region_css_classes=>'margin-bottom-xl'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark'
,p_plug_template=>wwv_flow_imp.id(2022321869436532060)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<p>Click the <b>Toggle Layout Columns</b> button to overlay the grid behind this page.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2946087850930365220)
,p_plug_name=>unistr('\6F14\793A')
,p_region_css_classes=>'u-textCenter	'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
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
 p_id=>wwv_flow_imp.id(2795480868975655959)
,p_plug_name=>unistr('\533A\57DF 2')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481044343655960)
,p_plug_name=>unistr('\533A\57DF 4')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481082311655961)
,p_plug_name=>unistr('\533A\57DF 6')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481158511655962)
,p_plug_name=>unistr('\533A\57DF 8')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481335269655963)
,p_plug_name=>unistr('\533A\57DF 10')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481450351655964)
,p_plug_name=>unistr('\533A\57DF 1')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481468262655965)
,p_plug_name=>unistr('\533A\57DF 3')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481579098655966)
,p_plug_name=>unistr('\533A\57DF 5')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481695252655967)
,p_plug_name=>unistr('\533A\57DF 7')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481808946655968)
,p_plug_name=>unistr('\533A\57DF 9')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481928196655969)
,p_plug_name=>unistr('\533A\57DF 11')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>170
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795481988266655970)
,p_plug_name=>unistr('\533A\57DF 12')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>180
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'1 Column'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795482130593655971)
,p_plug_name=>unistr('\533A\57DF 1')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>190
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'2 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795482175615655972)
,p_plug_name=>unistr('\533A\57DF 2')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>200
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'2 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795482256306655973)
,p_plug_name=>unistr('\533A\57DF 3')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>210
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'2 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795482410968655974)
,p_plug_name=>unistr('\533A\57DF 4')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>220
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'2 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795482494814655975)
,p_plug_name=>unistr('\533A\57DF 5')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>230
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'2 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795482591219655976)
,p_plug_name=>unistr('\533A\57DF 6')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>240
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'2 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795482652345655977)
,p_plug_name=>unistr('\533A\57DF 1')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>250
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'3 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795482803872655978)
,p_plug_name=>unistr('\533A\57DF 2')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>260
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'3 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795482871928655979)
,p_plug_name=>unistr('\533A\57DF 3')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>270
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'3 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795483018687655980)
,p_plug_name=>unistr('\533A\57DF 4')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>280
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'3 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795483325812655983)
,p_plug_name=>unistr('\533A\57DF 1')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>290
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'4 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795483410776655984)
,p_plug_name=>unistr('\533A\57DF 2')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>300
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'4 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795483526011655985)
,p_plug_name=>unistr('\533A\57DF 3')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>310
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'4 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795483622434655986)
,p_plug_name=>unistr('\533A\57DF 1')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>320
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'6 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2795483693056655987)
,p_plug_name=>unistr('\533A\57DF 2')
,p_parent_plug_id=>wwv_flow_imp.id(2946087850930365220)
,p_region_css_classes=>'region-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>330
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'6 Columns'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2144049287478433990)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2795483851220655988)
,p_button_name=>'TOGGLE_GRID_LAYOUT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('Toggle \5E03\5C40 Columns')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2144053028773433996)
,p_name=>unistr('Toggle \7F51\683C\5E03\5C40')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2144049287478433990)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.jQuery(''body'').hasClass(''grid-debug-on'')'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2144053462992433997)
,p_event_id=>wwv_flow_imp.id(2144053028773433996)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'body'
,p_attribute_01=>'grid-debug-on'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2144053954392433998)
,p_event_id=>wwv_flow_imp.id(2144053028773433996)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2144049287478433990)
,p_attribute_01=>'is-active'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2144054513064433998)
,p_event_id=>wwv_flow_imp.id(2144053028773433996)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'body'
,p_attribute_01=>'grid-debug-on'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2144054964376433999)
,p_event_id=>wwv_flow_imp.id(2144053028773433996)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2144049287478433990)
,p_attribute_01=>'is-active'
);
wwv_flow_imp.component_end;
end;
/
