prompt --application/pages/page_06303
begin
--   Manifest
--     PAGE: 06303
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
 p_id=>6303
,p_name=>unistr('\5E03\5C40\4FEE\9970\5668')
,p_alias=>'LAYOUT-MODIFIERS'
,p_step_title=>unistr('\5E03\5C40\4FEE\9970\5668 - &APP_TITLE.')
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
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1498287259643011178)
,p_plug_name=>'Flex'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>These utility classes can be added to help arrange items in rows, columns or more "flexible" layouts. They can ',
'    also help with item alignment, content justification, content ordering, and content spacing.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1498287388871011179)
,p_plug_name=>unistr('\7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(1498287259643011178)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc">',
'    <thead>',
'    <tr>',
'      <th style="width: 20%" class="u-textStart">Class</th>',
'      <th style="width: 20%" class="u-textStart">Values</th>',
'      <th class="u-textStart">Description</th>',
'    </tr>',
'  </thead>',
'    <tbody>',
'        <!-- U-FLEX -->',
'        <tr>',
'            <td><span class="class">u-flex</span></td>',
'            <td></td>',
'            <td>Treat the element as a flex container and its children as flex items.</td>',
'        </tr>',
'        <!-- FLEX -->',
'        <tr>',
'            <td rowspan="4"><span class="class">u-flex-</span></td>',
'            <td><span class="class-value">item</span></td>',
'            <td>Size item according to its width and height properties, but grow to absorb any extra free space in the flex container and shrink to its minimum size to fit the container.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">direction-column</span></td>',
'            <td>Direction in which lines of text are stacked. Aligns items in columns as opposed to rows.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">wrap</span></td>',
'            <td>Break flex items into multiple lines.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">wrap-nowrap</span></td>',
'            <td>Lay flex items out in a single line which may cause the flex container to overflow.</td>',
'        </tr>',
'        <!-- FLEX-BASIS -->',
'        <tr>',
'            <td rowspan="3"><span class="class">u-flex-basis-</span></td>',
'            <td><span class="class-value">auto</span></td>',
'            <td>Set the size of the element relative to the width and height of the content of the element.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">100</span></td>',
'            <td>Set the size of the element(s) to 100% of the available space in the parent container.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">0</span></td>',
'            <td>Prevent the element(s) from taking up the available space in the parent container.</td>',
'        </tr>',
'        <!-- FLEX-GROW -->',
'        <tr>',
'            <td rowspan="2"><span class="class">u-flex-grow-</span></td>',
'            <td><span class="class-value">1</span></td>',
'            <td>Allow the item to grow to fit available space.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">0</span></td>',
'            <td>Do not allow the item to grow to fit available space.</td>',
'        </tr>',
'        <!-- FLEX-SHRINK -->',
'        <tr>',
'            <td rowspan="2"><span class="class">u-flex-shrink-</span></td>',
'            <td><span class="class-value">1</span></td>',
'            <td>Allow the item to shrink to fit available space.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">0</span></td>',
'            <td>Prevent the item from shrinking to fit available space.</td>',
'        </tr>',
'        <!-- ORDER -->',
'        <tr>',
'            <td><span class="class">u-order-</span></td>',
'            <td>',
'                <span class="class-value">0</span> <br />',
'                <span class="class-value">1</span> <br />',
'                <span class="class-value">2</span> <br />',
'                <span class="class-value">3</span> <br />',
'                <span class="class-value">4</span> <br />',
'                <span class="class-value">5</span>',
'            </td>',
'            <td>Set the order to lay out an item in a flex container. Items in a container are sorted by ascending order value and then by their source code order.</td>',
'        </tr>',
'        <!-- JUSTIFY-CONTENT -->',
'        <tr>',
'            <td rowspan="6"><span class="class">u-justify-content-</span></td>',
'            <td><span class="class-value">flex-start</span></td>',
'            <td>Horizontally align (justify) content to the start of the div.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">flex-end</span></td>',
'            <td>Horizontally align (justify) content to the end of the div.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">center</span></td>',
'            <td>Horizontally align (justify) content to the center of the div.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">space-between</span></td>',
'            <td>Distribute content evenly with the first item flush with the start and the last item flush with the end.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">space-around</span></td>',
'            <td>Distribute content evenly with a half-size space on either end of items.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">stretch</span></td>',
unistr('            <td>Distribute content evenly by streching \2018auto\2019-sized items to fit the container.</td>'),
'        </tr>',
'        <!-- ALIGN-ITEMS -->',
'        <tr>',
'            <td rowspan="5"><span class="class">u-align-items-</span></td>',
'            <td><span class="class-value">flex-start</span></td>',
'            <td>Vertical alignment. The cross-start margin edges of the flex items are flushed with the cross-start edge of the line.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">flex-end</span></td>',
'            <td>Vertical alignment. The cross-end margin edges of the flex items are flushed with the cross-end edge of the line.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">start</span></td>',
'            <td>Vertical alignment. Pack items flush to each other toward the start edge of the alignment container in the appropriate axis.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">center</span></td>',
'            <td>Vertically align all items to the center of the div.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">end</span></td>',
'            <td>Vertical alignment. Pack items flush to each other toward the end edge of the alignment container in the appropriate axis.</td>',
'        </tr>',
'        <!-- ALIGN-SELF -->',
'        <tr>',
'            <td rowspan="6"><span class="class">u-align-self-</span></td>',
'            <td><span class="class-value">flex-start</span></td>',
'            <td>Vertical alignment of individual flex item. Flush the cross-start margin edges of the flex item with the cross-start edge of the line.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">flex-end</span></td>',
'            <td>Vertical alignment of individual flex item. Flush the cross-end margin edges of the flex item with the cross-end edge of the line.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">start</span></td>',
'            <td>Vertical alignment of individual flex item. Pack the item flush to the edge of the alignment container of the start side of the item, in the appropriate axis.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">center</span></td>',
'            <td>Vertically align individual flex item to the center of the div.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">end</span></td>',
'            <td>Vertical alignment of individual flex item. Pack the item flush to the edge of the alignment container of the end side of the item, in the appropriate axis.</td>',
'        </tr>',
'        <tr>',
'            <td><span class="class-value">stretch</span></td>',
'            <td>Vertical alignment of individual flex item. Stretch flex item such that the cross-size of the item margin box is the same as the line while respecting widget and height constraints.</td>',
'        </tr>',
'    </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1498287494937011180)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(1498287259643011178)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="dm-Code lang-html"><code>',
'&lt;div class="u-flex u-align-items-center"&gt;',
'    &lt;div class="u-order-3"&gt;This column will appear as the 3rd column and centered&lt;/div&gt;',
'    &lt;div class="u-order-1 u-align-self-center"&gt;This column will be first and aligned at the start of the row&lt;/div&gt;',
'    &lt;div class="u-order-2"&gt;This column will appear as the 2nd column&lt;/div&gt;',
'&lt;/div&gt;',
'</code>',
'</pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016244582183200976)
,p_plug_name=>'Floats'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>To float an element, you can use the <span class="class tag">u-pull<span class="class-var">Direction</span></span> utility classes.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2513831817778226083)
,p_plug_name=>unistr('\7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(2016244582183200976)
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
'    <tr><td><span class="class">u-pull<span class="class-value">Left</span></span></td><td>Float to left</td></tr>',
'    <tr><td><span class="class">u-pull<span class="class-value">Right</span></span></td><td>Float to right</td></tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2513831915065226084)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(2016244582183200976)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="dm-Code lang-html"><code>&lt;button class="u-pullLeft"&gt;Foo&lt;/button&gt; &lt;!-- Float button to the left --&gt;',
'&lt;div class="u-pullRight"&gt;Hello World&lt;/div&gt; &lt;!-- Float div to the right --&gt;</code></pre>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016244717479200977)
,p_plug_name=>'Margin'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Margin classes can be added to help add spacing around your elements.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2513832514437226090)
,p_plug_name=>unistr('\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(2016244717479200977)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the following class name structure with the options listed below to add spacing around your element.</p>',
'<p><span class="class tag">margin-<span class="class-var">direction</span>-<span class="class-var">spacing</span></span></p>',
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
'        <td>Direction</td>',
'        <td>',
'            <span class="class-value">top</span> <br />',
'            <span class="class-value">right</span> <br />',
'            <span class="class-value">bottom</span> <br />',
'            <span class="class-value">left</span>',
'        </td>',
'        <td>Where the margin should be positioned</td>',
'    </tr>',
'    <tr>',
'        <td>Spacing</td>',
'        <td>',
'            <span class="class-value">none</span> <span class="class-desc">0 px</span><br />',
'            <span class="class-value">sm</span>   <span class="class-desc">8 px</span><br />',
'            <span class="class-value">md</span>   <span class="class-desc">16 px</span><br />',
'            <span class="class-value">lg</span>   <span class="class-desc">32 px</span>',
'        </td>',
'        <td>',
'            The amount of spacing in pixels. ',
'        </td>',
'    </tr>',
'',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2513832667765226091)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(2016244717479200977)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="dm-Code lang-html"><code>&lt;h1 class="margin-auto"&gt;Centered Heading Text&lt;/h1&gt;',
'&lt;p class="margin-top-lg"&gt;Content with a large margin on top.&lt;/p&gt;</code></pre>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2513832728894226092)
,p_plug_name=>unistr('Other \7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(2016244717479200977)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use these classes to adjust spacing around all sides of your element.</p>',
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc">',
'  <thead>',
'    <tr>',
'      <th style="width: 30%" class="u-textStart">Class</th>',
'      <th class="u-textStart">Description</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr><td><span class="class">margin-<span class="class-value">none</span></span></td><td>No margin</td></tr>',
'    <tr><td><span class="class">margin-<span class="class-value">sm</span></span></td><td>8 px margin</td></tr>',
'    <tr><td><span class="class">margin-<span class="class-value">md</span></span></td><td>16 px margin</td></tr>',
'    <tr><td><span class="class">margin-<span class="class-value">lg</span></span></td><td>32 px margin</td></tr>',
'    <tr><td><span class="class">margin-<span class="class-value">auto</span></span></td><td>aligns content into the center</td></tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016244901562200979)
,p_plug_name=>'Width'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Text</p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016246053382200990)
,p_plug_name=>unistr('\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(2016244901562200979)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc">',
'  <thead>',
'    <tr>',
'      <th style="width: 30%" class="u-textStart">Classes</th>',
'      <th class="u-textStart">Values</th>',
'      <th class="u-textStart">Description</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr>',
'        <td><span class="class tag">w<span class="class-value">amount</span></span></td>',
'        <td>',
'            <span class="class">10-800</span> <span class="class-desc">px</span>',
'        </td>',
'        <td>Sets the element''s width to specified value. Sizes in 10px increments.</td>',
'    </tr>',
'    <tr>',
'        <td><span class="class tag">w<span class="class-value">percentage</span>p</span></td>',
'        <td>',
'            <span class="class">5-100</span> <span class="class-desc">%</span>',
'        </td>',
'        <td>Sets the element''s width to specified percentage. Percentages in 5% increments</td>',
'    </tr>',
'    <tr>',
'        <td><span class="class tag">mnw<span class="class-value">amount</span></span></td>',
'        <td>',
'            <span class="class">10-800</span> <span class="class-desc">px</span>',
'        </td>',
'        <td>Sets the element''s min-width to specified value. Sizes in 10px increments</td>',
'    </tr>',
'    <tr>',
'        <td><span class="class tag">mxw<span class="class-value">amount</span></span></td>',
'        <td>',
'            <span class="class">10-800</span> <span class="class-desc">px</span>',
'        </td>',
'        <td>Sets the element''s max-width to specified value. Sizes in 10px increments</td>',
'    </tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016246113550200991)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(2016244901562200979)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<pre class="dm-Code lang-html"><code>&lt;div class="w95p mxw800"&gt;This region will be 95% wide with a max-widht of 800px.&lt;/div&gt;</code></pre>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016245005677200980)
,p_plug_name=>'Height'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Text</p>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016246214810200992)
,p_plug_name=>unistr('\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(2016245005677200980)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc">',
'  <thead>',
'    <tr>',
'      <th style="width: 30%" class="u-textStart">Classes</th>',
'      <th class="u-textStart">Values</th>',
'      <th class="u-textStart">Description</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr>',
'        <td><span class="class">h<span class="class-value">amount</span></span></td>',
'        <td>',
'            <span class="class-value">10-800</span> <span class="class-desc">px</span>',
'        </td>',
'        <td>Sets the element''s height to specified value. Sizes in 10px increments</td>',
'    </tr>',
'    <tr>',
'        <td><span class="class">mxh<span class="class-value">amount</span></span></td>',
'        <td>',
'            <span class="class-value">10-800</span> <span class="class-desc">px</span>',
'        </td>',
'        <td>Sets the element''s max-height to specified value. Sizes in 10px increments</td>',
'    </tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016246303113200993)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(2016245005677200980)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<pre class="dm-Code lang-html"><code>&lt;div class="h400"&gt;This region would be 400px tall.&lt;/div&gt;</code></pre>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016245476841200985)
,p_plug_name=>'Vertical Alignment'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>To vertically-align the contents of an element you can use the <span class="class tag">u-align<span class="class-var">Direction</span></span> utility class.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2513832361611226088)
,p_plug_name=>unistr('\7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(2016245476841200985)
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
'    <tr><td><span class="class">u-align<span class="class-value">Top</span></span></td><td>Vertically align to the top</td></tr>',
'    <tr><td><span class="class">u-align<span class="class-value">Middle</span></span></td><td>Vertically align to the middle</td></tr>',
'    <tr><td><span class="class">u-align<span class="class-value">Baseline</span></span></td><td>Vertically align to the text baseline</td></tr>',
'    <tr><td><span class="class">u-align<span class="class-value">Bottom</span></span></td><td>Vertically align to the bottom</td></tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2513832392097226089)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(2016245476841200985)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="dm-Code lang-html"><code>&lt;table&gt;',
'  &lt;tbody&gt;',
'    &lt;tr&gt;',
'      &lt;td class="u-alignTop"&gt;Hello World!&lt;/td&gt;',
'      &lt;td class="u-alignMiddle"&gt;I''m in the middle!&lt;/td&gt;',
'    &lt;/tr&gt;',
'  &lt;/tbody&gt;',
'&lt;/table&gt;</code></pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016245664635200986)
,p_plug_name=>'Padding'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Padding classes can be added to help add spacing within your elements.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016245677742200987)
,p_plug_name=>unistr('\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(2016245664635200986)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use the following class name structure with the options listed below to add spacing around your element.</p>',
'<p><span class="class tag">padding-<span class="class-var">direction</span>-<span class="class-var">spacing</span></span></p>',
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
'        <td>Direction</td>',
'        <td>',
'            <span class="class-value">top</span> <br />',
'            <span class="class-value">right</span> <br />',
'            <span class="class-value">bottom</span> <br />',
'            <span class="class-value">left</span>',
'        </td>',
'        <td>Where the padding should be positioned</td>',
'    </tr>',
'    <tr>',
'        <td>Spacing</td>',
'        <td>',
'            <span class="class-value">none</span> <span class="class-desc">0 px</span><br />',
'            <span class="class-value">sm</span>   <span class="class-desc">8 px</span><br />',
'            <span class="class-value">md</span>   <span class="class-desc">16 px</span><br />',
'            <span class="class-value">lg</span>   <span class="class-desc">32 px</span>',
'        </td>',
'        <td>',
'            The amount of spacing in pixels. ',
'        </td>',
'    </tr>',
'',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016245839135200988)
,p_plug_name=>unistr('Other \7C7B')
,p_parent_plug_id=>wwv_flow_imp.id(2016245664635200986)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use these classes to adjust spacing within all sides of your element.</p>',
'<table class="u-Report u-Report--staticBG u-Report--stretch dm-Report--doc">',
'  <thead>',
'    <tr>',
'      <th style="width: 30%" class="u-textStart">Class</th>',
'      <th class="u-textStart">Description</th>',
'    </tr>',
'  </thead>',
'  <tbody>',
'    <tr><td><span class="class">padding-<span class="class-value">none</span></span></td><td>No padding</td></tr>',
'    <tr><td><span class="class">padding-<span class="class-value">sm</span></span></td><td>8 px padding</td></tr>',
'    <tr><td><span class="class">padding-<span class="class-value">md</span></span></td><td>16 px padding</td></tr>',
'    <tr><td><span class="class">padding-<span class="class-value">lg</span></span></td><td>32 px padding</td></tr>',
'  </tbody>',
'</table>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2016245887637200989)
,p_plug_name=>unistr('\6F14\793A')
,p_parent_plug_id=>wwv_flow_imp.id(2016245664635200986)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="dm-Code lang-html"><code>&lt;button class="padding-lg"&gt;Large button&lt;/button&gt;',
'&lt;div class="padding-left-md"&gt;Little bit of padding on the side.&lt;/div&gt;</code></pre>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2498526661040552237)
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
 p_id=>wwv_flow_imp.id(2513832167790226086)
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
 p_id=>wwv_flow_imp.id(5343860566150100338)
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
