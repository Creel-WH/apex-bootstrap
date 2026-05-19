prompt --application/pages/page_06305
begin
--   Manifest
--     PAGE: 06305
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
 p_id=>6305
,p_name=>unistr('\53D8\66F4\65E5\5FD7')
,p_alias=>'CHANGE-LOG'
,p_step_title=>unistr('\53D8\66F4\65E5\5FD7 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(2144306959769755264)
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(944553583638467895)
,p_plug_name=>'21.2'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>Template Changes</h3>',
'',
'<ul>',
'<li><strong>New Inline Drawer region template</strong></li>',
'<li><strong>New Drawer page template</strong></li>',
'<li>Misc Accessibility changes</li>',
'<li>Added aria-current to list templates where needed</li>',
'<li>Collapsible region now uses a button wrapping the region title, faux button to keep current behavior/styles</li>',
'<li>Title Bar region updated to use &lt;nav&gt;</li>',
'<li>Button container removed region title from &lt;h1&gt; this is now used with aria-label</li>',
'<li>Button template options that hide label more accessible to screen readers</li>',
'<li>Main navigation now correctly sets the side navigation to hidden when collapsed</li>',
'<li>Added aria-hidden="true" to icons in regions</li>',
'<li>Hamburger menu label changed from "Expand / Collapse Navigation" to "Main Navigation"</li>',
'</ul>',
'',
'<h3>Template Options</h3>',
'',
'<ul>',
'<li>Button modifier for hide icon on desktop added</li>',
'<li>Button icon position now defaults to left instead of right</li>',
'<li>Added Dialog Size: None to Inline Dialog (now consistent with Modal Dialog)</li>',
'<li>Added inline scripts to help prevent layout shift on page load</li>',
'<li>Added Smart Filter custom position to Title Bar</li>',
'<li>Added Smart Filter custom position to Hero</li>',
'</ul>',
'',
'<h3>Page Template Changes</h3>',
'',
'<ul>',
'<li><strong>New Position for After Logo</strong></li>',
'<li><strong>New Position for Before Navigation Bar</strong></li>',
'<li><strong>New Position for After Navigation Bar</strong></li>',
'<li>Renamed Content Body to Body</li>',
'<li>Renamed Page Header to Banner</li>',
'<li>Renamed Page Navigation to Top Navigation</li>',
'<li>Renamed Before Content Body to Full Width Content</li>',
'<li>Renamed Inline Dialogs to Dialogs, Drawers and Popups</li>',
'<li>Enabled Items and Buttons in Footer</li>',
'</ul>',
'',
'<h3>CSS Changes</h3>',
'',
'<ul>',
'<li>Header Accent Changed to Primary Accent </li>',
'<li>Header Bottom Border (better support for white header)</li>',
'<li>Header Small Shadow</li>',
'<li>Header buttons removed border and active inner shadow</li>',
'<li>Button Border color changed from rgba(0,0,0,.15) to rgba(0,0,0,.075);</li>',
'<li>Button Box shadow added for normal state</li>',
'<li>Button icon spacing changed from 4px to 6px</li>',
'<li>Region Border radius changed from 2px to 4px</li>',
'<li>Region header buttons right padding changed from 8px to 12px (now consistent with other sides)</li>',
'<li>Region header buttons now have padding on top and bottom so they do not touch large button variations</li>',
'<li>Region Shadow added</li>',
'<li>Alert Shadow added</li>',
'<li>Alert font weight changed from normal to semibold</li>',
'<li>Tabs & RDS active tab font weight changed from normal to semibold</li>',
'<li>Content Block (Light/Shaded) Shadow added</li>',
'<li>Primary color changed to #056AC8</li>',
'<li>Warning color changed to #FFC628</li>',
'<li>Success color changed to #278701</li>',
'<li>Danger color changed to #CB1100</li>',
'<li>Info changed to new primary color</li>',
'<li>Title Bar/Hero font weight changed from normal to semibold</li>',
'<li>Removed DevToolbar button color overrides</li>',
'<li>Added support for reduced motion on dialogs/login split</li>',
'<li>Added spacing between radio/checkbox items</li>',
'<li>Increased spacing between radio/checkbox and label</li>',
'<li>Added custom scrollbar back to Side Navigation</li>',
'<li>Updated focus shadow on TreeNav to be inset</li>',
'<li>Added the ability to enlarge the input-font-size on mobile.</li>',
'<li>Added new variables for breadcrumb links controlled by theme roller</li>',
'<li>Added placeholder styles for Top Navigation Menu (faster loading)</li>',
'</ul>',
'',
'<h3>Bug Fixes</h3>',
'',
'<ul>',
'<li><strong>Hammer.js scoped so native touch gestures will now work across the app. Enabling gestures such as zooming in and out.</strong></li>',
'<li>Hero Body now has grid support</li>',
'<li>Carousel swipe gesture reversed</li>',
'<li>Sidebar Navigation overflow/scroll/focus fixed (Moved overflow back to t-Body-nav from t-TreeNav)</li>',
'<li>Fixed incorrect icon color on fields</li>',
'<li>Fixed breadcrumb region title not displaying inline when shrunk</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1179347703561087001)
,p_plug_name=>'22.1'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>Template Changes</h3>',
'',
'<ul>',
'<li><strong>New Image region template</strong></li>',
'<li>Added support for Region Images in Login Region and Hero Region</li>',
'<li>Added support for custom Background Image using Image Region on Login Page</li>',
'</ul>',
'',
'<h3>Template Options</h3>',
'',
'<ul>',
'<li>Added new modifiers for Image regions</li>',
'<li>Added Legacy "Deferred Rendering" to Pages</li>',
'</ul>',
'',
'<h3>CSS Changes</h3>',
'',
'<ul>',
'<li>Updated Menu Bars render during page load to reduce page flickering</li>',
'<li>Updated Side Navigation to render during page load to reduce page flickering</li>',
'<li>Updated Semi-bold weight to 600 from 500, allowing for thicker type in certain areas</li>',
'<li>Cleaned up Faceted Search spacing and support for new actions menu</li>',
'<li>Minor Redwood Light enhancements</li>',
'</ul>',
'',
'<h3>Bug Fixes</h3>',
'',
'<ul>',
'<li>Fixed checkboxes that would render with different color</li>',
'<li>Fixed layout issue with Cards set to render as Row</li>',
'<li>Fixed where Tabs would display all content during page load</li>',
'<li>Fixed FontAPEX scale modifier classes to work with CSS variables</li>',
'<li>Fixed Standard Region title to wrap text when too long</li>',
'<li>Fixed button colors in Interactive Report and Interactive Grid</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1351904203342397218)
,p_plug_name=>'22.2'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>Template Changes</h3>',
'',
'<ul>',
'<li><strong>New Search Region template</strong></li>',
'<li><strong>New Item Container region template</strong></li>',
'<li>Added support for new Date Picker item</li>',
'<li>Added support for new Autocomplete item</li>',
'<li>Added support for Declarative Landmarks</li>',
'</ul>',
'',
'<h3>Template Options</h3>',
'',
'<ul>',
'<li>Added the ability to hide the header of Content Block regions</li>',
'<li>Added option to change the style of Display Only on items</li>',
'</ul>',
'',
'<h3>Template Positions</h3>',
'<ul>',
'<li>Enabled Item support in NEXT button position on Hero region</li>',
'<li>Enabled Item support in NEXT button position on Title Bar region</li>',
'<li>Enabled Item support in EDIT, PREVIOUS, NEXT on Content Block region</li>',
'<li>Enabled Item support in CREATE, EDIT, NEXT, PREVIOUS in Standard region</li>',
'<li>Enabled Item support in CREATE, EDIT, NEXT, PREVIOUS in Collapsible region</li>',
'<li>Enabled item support in PREVIOUS, NEXT, CHANGE in Button Container region</li>',
'<li>Enabled item support in PREVIOUS, NEXT in Inline Dialog region</li>',
'<li>Enabled item support in PREVIOUS, NEXT in Inline Drawer region</li>',
'<li>Enabled item support in PREVIOUS, NEXT in Inline Popup region</li>',
'<li>Enabled item support in NEXT in Alert region</li>',
'</ul>',
'',
'<h3>CSS Changes</h3>',
'',
'<ul>',
'<li>Added .u-opacity utility classes to change opacity of elements</li>',
'<li>Updated Tabs & Region Display Selector to render during page load to reduce page flickering</li>',
'<li>Updated Floating Fields labels to render during page load to reduce item flickering</li>',
'<li>Updated Floating Fields to set label to display on top if Region Template Option "Show Form Labels Above" is set.</li>',
'</ul>',
'',
'<h3>Bug Fixes</h3>',
'',
'<ul>',
'<li>Fixed incorrect font-size for display only fields (now 14px by default vs 16px)</li>',
'<li>Fixed incorrect font-size for floating labels, changed from 12px to 14px</li>',
'<li>Fixed extra spacing & border on Button Containers used within Drawers</li>',
'<li>Fixed Callout''s from missing border on caret/arrow</li>',
'<li>Fixed issue where Region Images would overlap Login page''s content</li>',
'<li>Fixed transitions so they do not appear if Reduced Motion is enabled</li>',
'<li>Fixed shadow on buttons not being applied correctly</li>',
'</ul>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6598539946252045108)
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
