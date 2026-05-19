prompt --application/pages/page_00402
begin
--   Manifest
--     PAGE: 00402
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
 p_id=>402
,p_name=>unistr('\989C\8272')
,p_alias=>'COLORS'
,p_step_title=>unistr('\989C\8272 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1988934022267168693)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.color-blocks {',
'  display: flex;',
'  flex-wrap: wrap;',
'  justify-content: center;',
'  -webkit-margin-after: 1.5rem;',
'          margin-block-end: 1.5rem; }',
'',
'.color-blocks--large .color-block {',
'  width: 33.33%; }',
'',
'.color-block {',
'  text-align: center;',
'  height: 4rem;',
'  display: flex;',
'  align-items: center;',
'  width: 20%;',
'  justify-content: center;',
'  flex: auto;',
'  border: 4px solid transparent;',
'  background-clip: padding-box; }',
'',
'.color-cell-block {',
'  display: block;',
'  padding: .5rem;',
'  text-align: center;',
'  border-radius: .125rem; }',
'',
'.color-border {',
'  border-width: 1px;',
'  border-style: solid;',
'  padding: .5rem; }',
'',
'.colors-table .t-Report-report {',
'  table-layout: fixed; }'))
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2274822349499063730)
,p_plug_name=>unistr('\72B6\6001\989C\8272')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\72B6\6001\989C\8272\7528\4E8E\4E3A\754C\9762\7EC4\4EF6\4F20\8FBE\989D\5916\8BED\4E49\3002\4F8B\5982\FF0C\4F60\53EF\4EE5\628A\8B66\544A\63D0\793A\6E32\67D3\4E3A\9EC4\8272\FF0C\4EE5\5E2E\52A9\7528\6237\66F4\5FEB\7406\89E3\5F53\524D\72B6\6001\3002</p>'),
'',
unistr('<p>\7CFB\7EDF\5185\7F6E 6 \79CD\72B6\6001\989C\8272\FF1A\666E\901A\3001\5F3A\8C03\3001\4FE1\606F\3001\5371\9669\3001\8B66\544A\3001\6210\529F\3002\4F60\53EF\4EE5\5728 Theme Roller \4E2D\901A\8FC7\4FEE\6539 Status Colors \6765\8C03\6574\8FD9\4E9B\989C\8272\3002</p>'),
'',
'<div class="color-blocks color-blocks--large">',
unistr('  <div class="color-block u-normal">\666E\901A\72B6\6001</div>'),
unistr('  <div class="color-block u-hot">\5F3A\8C03\72B6\6001</div>'),
unistr('  <div class="color-block u-info">\4FE1\606F\72B6\6001</div>'),
'</div>',
'<div class="color-blocks color-blocks--large">',
unistr('  <div class="color-block u-danger">\5371\9669\72B6\6001</div>'),
unistr('  <div class="color-block u-warning">\8B66\544A\72B6\6001</div>'),
unistr('  <div class="color-block u-success">\6210\529F\72B6\6001</div>'),
'</div>',
'',
unistr('<p><strong>\6CE8\610F\FF1A</strong>\4E0D\8981\53EA\4F9D\8D56\989C\8272\4F20\8FBE\4FE1\606F\FF0C\56E0\4E3A\989C\8272\63D0\793A\5728\67D0\4E9B\573A\666F\4E0B\53EF\80FD\5E76\4E0D\5177\5907\826F\597D\7684\53EF\8BBF\95EE\6027\3002</p>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3075630518402071290)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2513101747170473402)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3156601119967118728)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4054001765906400637)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4495264581177049979)
,p_plug_name=>unistr('\4ECB\7ECD')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\901A\7528\4E3B\9898\5728\5185\7F6E\7EC4\4EF6\4E2D\4F7F\7528\4E86\4E00\5957\7EDF\4E00\7684\989C\8272\4F53\7CFB\3002\8FD9\4E9B\989C\8272\5927\4F53\53EF\4EE5\5206\6210\4E24\7EC4\FF1A<strong>\901A\7528\989C\8272</strong> \548C <strong>\72B6\6001\989C\8272</strong>\3002</p>'),
unistr('<p>\5982\679C\4F60\60F3\5728\81EA\5B9A\4E49\754C\9762\7EC4\4EF6\4E2D\4F7F\7528\8FD9\4E9B\989C\8272\FF0C\53EF\4EE5\524D\5F80 <a href="f?p=&APP_ID.:6302:&APP_SESSION.">CSS \4FEE\9970\7C7B</a> \9875\9762\FF0C\5E76\7ED3\5408 <a href="f?p=&APP_ID.:6000:&APP_SESSION.">\53C2\8003</a> \533A\57DF\4E2D\7684\8BF4\660E\8FDB\884C\4F7F\7528\3002</p>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4495264806000051004)
,p_plug_name=>unistr('\901A\7528\989C\8272')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p>\901A\7528\989C\8272\4E3B\8981\7528\4E8E\4E3A\56FE\8868\3001\5361\7247\7B49\5E94\7528\7EC4\4EF6\63D0\4F9B\7EDF\4E00\7684\8272\5F69\5F3A\8C03\6548\679C\3002</p>'),
'',
unistr('<p>\7CFB\7EDF\63D0\4F9B 15 \4E2A\57FA\7840\989C\8272\FF0C\5E76\57FA\4E8E\8FD9\4E9B\57FA\7840\8272\884D\751F\51FA\66F4\6D45\548C\66F4\6DF1\7684\7248\672C\FF0C\603B\8BA1\5F62\6210 45 \4E2A\989C\8272\9009\9879\3002\4F60\53EF\4EE5\5728 Theme Roller \4E2D\901A\8FC7\4FEE\6539 Color Palette \6765\5B9A\5236\8FD9\4E9B\989C\8272\3002</p>'),
'',
unistr('<p><strong>\57FA\7840\989C\8272</strong></p>'),
'',
'<div class="color-blocks">',
'  <div class="color-block u-color-1">1</div>',
'  <div class="color-block u-color-2">2</div>',
'  <div class="color-block u-color-3">3</div>',
'  <div class="color-block u-color-4">4</div>',
'  <div class="color-block u-color-5">5</div>',
'  <div class="color-block u-color-6">6</div>',
'  <div class="color-block u-color-7">7</div>',
'  <div class="color-block u-color-8">8</div>',
'  <div class="color-block u-color-9">9</div>',
'  <div class="color-block u-color-10">10</div>',
'  <div class="color-block u-color-11">11</div>',
'  <div class="color-block u-color-12">12</div>',
'  <div class="color-block u-color-13">13</div>',
'  <div class="color-block u-color-14">14</div>',
'  <div class="color-block u-color-15">15</div>',
'</div>',
'',
unistr('<p><strong>\57FA\7840\989C\8272 - \6D45\8272\7248\672C</strong></p>'),
'',
'<div class="color-blocks">',
'  <div class="color-block u-color-16">16</div>',
'  <div class="color-block u-color-17">17</div>',
'  <div class="color-block u-color-18">18</div>',
'  <div class="color-block u-color-19">19</div>',
'  <div class="color-block u-color-20">20</div>',
'  <div class="color-block u-color-21">21</div>',
'  <div class="color-block u-color-22">22</div>',
'  <div class="color-block u-color-23">23</div>',
'  <div class="color-block u-color-24">24</div>',
'  <div class="color-block u-color-25">25</div>',
'  <div class="color-block u-color-26">26</div>',
'  <div class="color-block u-color-27">27</div>',
'  <div class="color-block u-color-28">28</div>',
'  <div class="color-block u-color-29">29</div>',
'  <div class="color-block u-color-30">30</div>',
'</div>',
'',
unistr('<p><strong>\57FA\7840\989C\8272 - \6DF1\8272\7248\672C</strong></p>'),
'<div class="color-blocks">',
'  <div class="color-block u-color-31">31</div>',
'  <div class="color-block u-color-32">32</div>',
'  <div class="color-block u-color-33">33</div>',
'  <div class="color-block u-color-34">34</div>',
'  <div class="color-block u-color-35">35</div>',
'  <div class="color-block u-color-36">36</div>',
'  <div class="color-block u-color-37">37</div>',
'  <div class="color-block u-color-38">38</div>',
'  <div class="color-block u-color-39">39</div>',
'  <div class="color-block u-color-40">40</div>',
'  <div class="color-block u-color-41">41</div>',
'  <div class="color-block u-color-42">42</div>',
'  <div class="color-block u-color-43">43</div>',
'  <div class="color-block u-color-44">44</div>',
'  <div class="color-block u-color-45">45</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
