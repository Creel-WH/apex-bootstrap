prompt --application/pages/page_06304
begin
--   Manifest
--     PAGE: 06304
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
 p_id=>6304
,p_name=>unistr('\5185\5BB9\4FEE\9970\5668')
,p_alias=>'CONTENT-MODIFIERS'
,p_step_title=>unistr('\5185\5BB9\4FEE\9970\5668 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.class,',
'.class-value,',
'.class-desc {',
'    display: inline-block;',
'    font-size: 12px;',
'    font-family: ''Menlo'',''Consolas'',monospace;',
'}',
'.class {',
'    color: #9C27B0;',
'}',
'.class.tag {',
'    padding: 4px 8px;',
'    background-color: #FFF;',
'    border-radius: 2px;',
'    box-shadow: inset rgba(225, 190, 231, .25) 0 0 0 1px;',
'}',
'.class-value {',
'    color: #008676;',
'    min-width: 40px;',
'}',
'.class-var {',
'    font-weight: bold;',
'    color: #008676;',
'}',
'.dm-Report--doc {',
'    background: #FFF;',
'    border: 1px solid rgba(0,0,0,.05);',
'}',
'.dm-Report--doc th, ',
'.dm-Report--doc td {',
'    padding: 8px;',
'    min-height: 32px;',
'    background-color: transparent;',
'    border-width: 0 0 1px 0;',
'    border-style: solid;',
'    border-color: rgba(0,0,0,.05);',
'}',
'.dm-Report--doc td {',
'    vertical-align: top;',
'}',
'.dm-Report--doc tr:last-child td {',
'    border-bottom-width: 0;',
'}',
'.dm-Report--doc .class {',
'    min-width: 40px;',
'}',
'.dm-Report--doc .class-desc {',
'    width: 48px;',
'    text-align: right;',
'    color: rgba(0,0,0,.55);',
'    border-radius: 2px;',
'}',
'.dm-Code {',
'    border-radius: var(--ut-component-border-radius);',
'    border: var(--ut-component-border-width) solid var(--ut-component-border-color);',
'}'))
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1179348316462087007)
,p_plug_name=>'Text Limit'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Use these classes as simple modifiers to restrict a block of text control to a specified number of lines. If a block of text surpasses the specified number of lines then an ellipses (...) is added and the remaining text is hidden.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1179348613137087010)
,p_plug_name=>unistr('\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(1179348316462087007)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the following class name structure with the options listed below to limit your text to a specified number of lines.</p>',
'<p><span class="class tag">u-lineclamp-<span class="class-var">number</span></span></p>',
'',
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc">',
'  <thead>',
'    <tr>',
'      <th style="width: 30%" class="u-textStart">Variable</th>',
'      <th class="u-textStart">Values</th>',
'      <th class="u-textStart">Description</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr>',
'        <td>Number</td>',
'        <td>',
'            <span class="class-value">1</span><br/>',
'            <span class="class-value">2</span><br/>',
'            <span class="class-value">3</span><br/>',
'            <span class="class-value">4</span><br/>',
'            <span class="class-value">5</span><br/>',
'        </td>',
'        <td>The number of lines the block of text should be limited to.</td>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1179349314824087017)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(1179348316462087007)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="dm-Code lang-html"><code>',
'&lt;p class="u-lineclamp-1"&gt;This text will be limited to one line.&lt;/p&gt;',
'&lt;p class="u-lineclamp-2"&gt;This text will be limited to two lines.&lt;/p&gt;',
'</code></pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016261335383221320)
,p_plug_name=>'Accessibility'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>These classes can help you build more accessible apps and help you design a more usable experience for all users.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016262767210221334)
,p_plug_name=>unistr('\7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(2016261335383221320)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc">',
'  <thead>',
'    <tr>',
'      <th style="width: 30%" class="u-textStart">Class</th>',
'      <th class="u-textStart">Description</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr><td><span class="class">u-VisuallyHidden</span></td><td>This will make any text visually hidden, but still accessible for screen readers and other assistive technologies.</td></tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016262354095221330)
,p_plug_name=>'Text Transform'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>These classes are useful when you want to control the text case for a given component. For example, an input field where you want characters to display in upper case. </p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016262376818221331)
,p_plug_name=>unistr('\7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(2016262354095221330)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc">',
'  <thead>',
'    <tr>',
'      <th style="width: 30%" class="u-textStart">Class</th>',
'      <th class="u-textStart">Description</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr><td><span class="class">u-text<span class="class-value">Upper</span></span></td><td class="u-textUpper">Sets the text to use all uppercase</td></tr>',
'    <tr><td><span class="class">u-text<span class="class-value">Lower</span></span></td><td class="u-textLower">Sets the text to use all lowercase</td></tr>',
'    <tr><td><span class="class">u-text<span class="class-value">InitCap</span></span></td><td class="u-textInitCap">Sets the first letter in each word to use uppercase</td></tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016262526040221332)
,p_plug_name=>unistr('Text \6837\5F0F')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Use these classes as simple modifiers to control the text style of a given component. For example, you may want to use the <span class="class tag">u-bold</span> to make the text of a button have a stronger weight.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016262647034221333)
,p_plug_name=>unistr('\7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(2016262526040221332)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc">',
'  <thead>',
'    <tr>',
'      <th style="width: 30%" class="u-textStart">Class</th>',
'      <th class="u-textStart">Description</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr><td><span class="class">u-bold</span></td><td class="u-bold">Bold text</td></tr>',
'    <tr><td><span class="class">u-italics</span></td><td class="u-italics">Italicize text</td></tr>',
'    <tr><td><span class="class">u-underline</span></td><td class="u-underline">Underline text</td></tr>',
'    <tr><td><span class="class">u-fixedFont</span></td><td class="u-fixedFont">Use a fixed-letter-space font</td></tr>',
'    <tr><td><span class="class">u-hidden</span></td><td>Hide text</td></tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2498526740771552238)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2506217403946447737)
,p_plug_name=>unistr('\4ECB\7ECD')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>You can use the following utility classes anywhere in your app to fine-tune the layout of your page and components. For most APEX components, you can simply populate the <b>CSS Classes</b> property to apply these modifiers to your page components.'
||'</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3104479012180697837)
,p_plug_name=>'Text Alignment'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>These classes are direction aware, meaning the text direction will be based on the direction of the language. For example, text using the <span class="class tag">u-text<span class="class-var">Start</span></span> class will align text to the left f'
||'or Left-to-Right languages, and will align text to the right for Right-to-Left languages.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3602066247775722944)
,p_plug_name=>unistr('\7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(3104479012180697837)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc">',
'  <thead>',
'    <tr>',
'      <th style="width: 30%" class="u-textStart">Class</th>',
'      <th class="u-textStart">Description</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr><td><span class="class">u-text<span class="class-value">Start</span></span></td><td class="u-textStart">Align text to the start of the container</td></tr>',
'    <tr><td><span class="class">u-text<span class="class-value">Center</span></span></td><td class="u-textCenter">Align text to the center of the container</td></tr>',
'    <tr><td><span class="class">u-text<span class="class-value">End</span></span></td><td class="u-textEnd">Align text to the end of the container</td></tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6225245711175095245)
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
