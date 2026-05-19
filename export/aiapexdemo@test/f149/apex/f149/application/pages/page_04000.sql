prompt --application/pages/page_04000
begin
--   Manifest
--     PAGE: 04000
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
 p_id=>4000
,p_name=>unistr('\56FE\6807')
,p_alias=>'ICONS'
,p_step_title=>unistr('\56FE\6807 - &APP_TITLE.')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#demo/icons.js',
'#APP_FILES#demo/iconSearch.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery("#P4000_SEARCH").on("keyup",function(){apex.theme42demo.renderIcons({debounce: 250, filterString: this.value});});',
'var returnIcon = function(c){return;};'))
,p_javascript_code_onload=>'apex.theme42demo.renderIcons({});'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.highlight {',
'    background-color: #ffef9a;',
'    color: #635c34;',
'    padding: 2px 0;',
'    box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.05) inset, 0 1px 1px -1px rgba(0, 0, 0, 0.1);',
'    border-radius: 2px;',
'    transition: .1s ease;',
'}',
'.icon-list {',
'    max-height: 280px;',
'    overflow: auto;',
'    white-space: pre-line;',
'    font-family: monospace;',
'    padding: 8px;',
'    background: rgba(0,0,0,.1);',
'    border: 1px solid rgba(0,0,0,.1);',
'    border-radius: 4px;',
'}',
'',
'.dm-Icon {',
'  display: inline-block; }',
'',
'.dm-Icon--page {',
'  width: 16rem;',
'  height: 10.25rem;',
'  display: block;',
'  margin: 1.5rem auto; }',
'  .dm-Icon--page + .t-Button {',
'    display: block;',
'    margin: 0 auto; }',
'  .apex-theme-vita-dark .dm-Icon--page {',
'    filter: invert(0.75); }',
'  .u-RTL .dm-Icon--page {',
'    transform: scaleX(-1); }',
'',
'.dm-Logo {',
'  width: 12.5rem;',
'  height: 12.5rem;',
'  display: block;',
'  margin: 0 auto;',
'  background-color: transparent !important;',
'  transition: transform 2s 0.5s cubic-bezier(0.77, 0, 0.175, 1); }',
'  .dm-Logo:hover {',
'    transform: rotate(359deg) scale(1.5); }',
'',
'.dm-IconDialog .t-DialogRegion-body {',
'  min-height: 25rem; }',
'',
'.dm-IconDialog-sizes {',
'  text-align: center;',
'  border-bottom: 1px solid #F0F0F0;',
'  -webkit-margin-after: .75rem;',
'          margin-block-end: .75rem;',
'  -webkit-padding-after: .75rem;',
'          padding-block-end: .75rem; }',
'  .dm-IconDialog-sizes .t-Icon {',
'    vertical-align: bottom;',
'    margin: .5rem .75rem; }',
'',
'.dm-IconDialog-icon {',
'  float: left;',
'  -webkit-margin-end: .5rem;',
'          margin-inline-end: .5rem; }',
'  .u-RTL .dm-IconDialog-icon {',
'    float: right; }',
'  .dm-IconDialog-icon span {',
'    font-size: 3rem; }',
'',
'.dm-IconDialog-header {',
'  background-color: #404040;',
'  border-bottom: 1px solid rgba(0, 0, 0, 0.05);',
'  color: #FFF;',
'  padding: 1rem; }',
'',
'.dm-IconDialog-builder {',
'  padding: .5rem .75rem; }',
'',
'.dm-IconDialog-title {',
'  overflow: hidden;',
'  line-height: 3rem;',
'  margin: 0; }',
'',
'.dm-IconDialog-preview {',
'  text-align: center;',
'  display: flex;',
'  height: 11rem;',
'  background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCI+CjxyZWN0IHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgZmlsbD0iI0ZGRiI+PC9yZWN0Pgo8cmVjdCB3aWR0aD0iMTAiIGhlaWdodD0iMTAiIGZpbGw9IiN'
||'GOEY4RjgiPjwvcmVjdD4KPHJlY3QgeD0iMTAiIHk9IjEwIiB3aWR0aD0iMTAiIGhlaWdodD0iMTAiIGZpbGw9IiNGOEY4RjgiPjwvcmVjdD4KPC9zdmc+");',
'  background-size: 1rem;',
'  background-position: 50%;',
'  border: 1px solid #F8F8F8; }',
'  .apex-theme-vita-dark .dm-IconDialog-preview {',
'    background-image: url("data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCI+PHJlY3Qgd2lkdGg9IjIwIiBoZWlnaHQ9IjIwIiBmaWxsPSIjMDAwIj48L3JlY3Q+PHJlY3Qgd2lkdGg9IjEwIiBoZWlnaHQ9IjEwIiBmaWxsPSIjM'
||'TExIj48L3JlY3Q+PHJlY3QgeD0iMTAiIHk9IjEwIiB3aWR0aD0iMTAiIGhlaWdodD0iMTAiIGZpbGw9IiMxMTEiPjwvcmVjdD48L3N2Zz4=");',
'    border-color: rgba(255, 255, 255, 0.1); }',
'  .dm-IconDialog-preview span {',
'    margin: auto;',
'    transition: 0.2s cubic-bezier(0.77, 0, 0.175, 1); }',
'',
'.dm-IconDialog-code {',
'  margin: 0;',
'  text-align: center;',
'  font-size: .75rem;',
'  line-height: 1rem;',
'  color: var(--ut-component-text-subtitle-color); }',
'',
'.dm-IconDialog-resetButton {',
'  opacity: .5;',
'  transition: .2s ease; }',
'  .dm-IconDialog-resetButton:hover {',
'    opacity: 1; }',
'',
'.dm-IconDialog-infoWrap {',
'  -webkit-margin-before: 1.5rem;',
'          margin-block-start: 1.5rem;',
'  padding: 0 .25rem; }',
'',
'.dm-IconDialog-info + .dm-IconDialog-info {',
'  -webkit-margin-before: 1.5rem;',
'          margin-block-start: 1.5rem;',
'  -webkit-margin-after: .75rem;',
'          margin-block-end: .75rem; }',
'',
'.dm-IconDialog-infoTitle {',
'  font-weight: var(--a-base-font-weight-bold, 700);',
'  font-size: .875rem;',
'  line-height: 1.25rem;',
'  -webkit-padding-before: .375rem;',
'          padding-block-start: .375rem;',
'  -webkit-padding-after: .375rem;',
'          padding-block-end: .375rem; }',
'',
'.dm-IconDialog-infoBody code {',
'  font-size: .6875rem;',
'  line-height: 1rem;',
'  background-color: #F0F0F0;',
'  border-radius: .125rem;',
'  padding: .5rem;',
'  display: block;',
'  -webkit-margin-after: .5rem;',
'          margin-block-end: .5rem;',
'  white-space: pre-wrap;',
'  min-height: 3rem; }',
'',
'.dm-IconDialog-infoBody small {',
'  font-size: .6875rem;',
'  line-height: 1rem;',
'  color: var(--ut-component-text-muted-color);',
'  display: block; }',
'',
'.apex-theme-vita-dark .dm-IconDialog-infoBody code {',
'  background-color: rgba(0, 0, 0, 0.95); }',
'',
'.dm-Search:empty:before {',
'  content: ''No Results'';',
'  font-size: .875rem;',
'  text-align: start;',
'  padding: 1rem 0;',
'  color: rgba(0, 0, 0, 0.5);',
'  display: block; }',
'',
'input#P4000_SEARCH {',
'  background: #FFF;',
'  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);',
'  border: 1px solid rgba(0, 0, 0, 0.075); }',
'  .apex-theme-vita-dark input#P4000_SEARCH {',
'    background-color: #000;',
'    border-color: rgba(255, 255, 255, 0.075); }',
'',
'#P4000_SIZE.apex-item-group--rc {',
'  margin: 0; }',
'',
'.dm-Search-category {',
'  display: block;',
'  background: #FFF;',
'  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);',
'  border: 1px solid rgba(0, 0, 0, 0.075);',
'  border-radius: .125rem;',
'  padding: 1rem;',
'  -webkit-margin-after: 1rem;',
'          margin-block-end: 1rem; }',
'  .apex-theme-vita-dark .dm-Search-category {',
'    background-color: rgba(0, 0, 0, 0.5);',
'    border-color: rgba(255, 255, 255, 0.075); }',
'',
'.dm-Search-title {',
'  text-transform: capitalize;',
'  -webkit-margin-after: 0;',
'          margin-block-end: 0;',
'  padding: .5rem;',
'  font-weight: var(--a-base-font-weight-semibold, 500); }',
'',
'.dm-Search-list {',
'  list-style: none;',
'  margin: 0;',
'  padding: 0;',
'  clear: both;',
'  overflow: hidden; }',
'',
'.dm-Search-list li {',
'  width: 25%;',
'  float: left;',
' }',
'  .u-RTL .dm-Search-list li {',
'    float: right; }',
'  @media (max-width: 767px) {',
'    .dm-Search-list li {',
'      width: 33.33%; } }',
'  @media (max-width: 639px) {',
'    .dm-Search-list li {',
'      width: 50%; } }',
'',
'.dm-Search-result {',
'  display: block;',
'  color: var(--ut-component-text-subtitle-color);',
'  padding: .25rem;',
'  cursor: pointer;',
'  border-radius: .125rem;',
'  overflow: hidden; }',
'  .dm-Search-result:focus {',
'    outline: none;',
'    box-shadow: 0 0 0 1px var(--ut-palette-primary, #0572CE) inset;',
'    background-color: #FFF; }',
'    .apex-theme-vita-dark .dm-Search-result:focus {',
'      background-color: rgba(0, 0, 0, 0.5); }',
'  .dm-Search-result:hover {',
'    background-color: #FFF;',
'    box-shadow: 0 0 0 1px var(--ut-palette-primary, #0572CE) inset, var(--ut-shadow-sm); }',
'    .apex-theme-vita-dark .dm-Search-result:hover {',
'      background-color: rgba(0, 0, 0, 0.5); }',
'',
'.dm-Search-icon {',
'  float: left;',
'  padding: .5rem;',
'  -webkit-padding-end: 0;',
'          padding-inline-end: 0; }',
'  .u-RTL .dm-Search-icon {',
'    float: right; }',
'',
'.dm-Search-icon .t-Icon {',
'  transform-origin: left;',
'  vertical-align: top;',
'  line-height: 1.5rem; }',
'  .u-RTL .dm-Search-icon .t-Icon {',
'    transform-origin: right; }',
'',
'.dm-Search-info {',
'  overflow: hidden;',
'  padding: .5rem; }',
'',
'.dm-Search-class {',
'  font-size: .875rem;',
'  line-height: 1.5rem;',
'  display: block;',
'  white-space: nowrap;',
'  overflow: hidden;',
'  text-overflow: ellipsis; }'))
,p_page_css_classes=>'dm-Page'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1780549431576808143)
,p_plug_name=>unistr('\56FE\6807')
,p_region_name=>'icons'
,p_region_css_classes=>'dm-Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1780550264395808152)
,p_plug_name=>unistr('\641C\7D22')
,p_region_template_options=>'#DEFAULT#:margin-bottom-sm'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1780550336456808153)
,p_plug_name=>'Icon Builder Dialog'
,p_region_name=>'icon_dialog'
,p_region_css_classes=>'dm-IconDialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(2654312167222878074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1948554379323921035)
,p_plug_name=>'Icon Builder'
,p_parent_plug_id=>wwv_flow_imp.id(1780550336456808153)
,p_region_css_classes=>'dm-IconDialog-builder'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1780551069457808160)
,p_plug_name=>unistr('Icon \8BF4\660E')
,p_parent_plug_id=>wwv_flow_imp.id(1948554379323921035)
,p_region_css_classes=>'dm-IconDialog-infoWrap'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="dm-IconDialog-info row">',
'    <span class="dm-IconDialog-infoTitle col col-3">HTML <button type="button" title="Copy HTML Markup" class="t-Button t-Button--icon t-Button--tiny t-Button--link t-Button--iconLeft" data-clipboard-source="#icon_code"><span aria-hidden="true" class'
||'="t-Icon t-Icon--left fa fa-synonym"></span>Copy</button></span>',
'    <div class="dm-IconDialog-infoBody col col-9">',
'        <code id="icon_code"></code>',
'    </div>',
'</div>',
'<div class="dm-IconDialog-info row">',
'    <span class="dm-IconDialog-infoTitle col col-3">Icon <button type="button" title="Copy Icon Class" class="t-Button t-Button--icon t-Button--tiny t-Button--link t-Button--iconLeft" data-clipboard-source="#icon_classes"><span aria-hidden="true" cla'
||'ss="t-Icon t-Icon--left fa fa-synonym"></span>Copy</button> </span>',
'    <div class="dm-IconDialog-infoBody col col-9">',
'        <code id="icon_classes"></code>',
'        <small>Enter in the Icon property for Buttons, Regions, and other components.</small>',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1948553402022921025)
,p_plug_name=>'Icon Form'
,p_parent_plug_id=>wwv_flow_imp.id(1948554379323921035)
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1948554321446921034)
,p_plug_name=>'Icon Preview'
,p_parent_plug_id=>wwv_flow_imp.id(1948554379323921035)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<div id="icon_preview" class="dm-IconDialog-preview"><span></span></div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1989052757258742686)
,p_plug_name=>'About Font APEX'
,p_region_name=>'about_font_apex'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(2654312167222878074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h3>What is Font APEX?</h3>',
'<p>Font APEX is the icon library for APEX and Universal Theme.  It was originally designed as a replacement for Font Awesome 4.*, the web''s leading icon library, and therefore contains almost all of the Font Awesome icons, re-drawn originally on a 16'
||'x16 grid as line-icons.  We wanted to make it a seamless switch to go from Font Awesome to Font APEX, and therefore use the same "fa" prefix for the icons, making it easier than ever to move to entirely new icon library.</p>',
'',
'<p>Font APEX 2 expands upon the original Font APEX by providing the complete set of Font APEX icons at a larger size.  There are now two families of icons in Font APEX: small and large. Small icons are based on a 16x16 grid and ideally suited for but'
||'tons and menus. Large icons are based on a 32x32 grid and well suited for places where you need to provide a larger graphic, such as cards, media lists, and hero regions.</p>',
'',
'<p>Many APEX components will automatically use the large or small icons based on the context (such as Template Options), so all you need to do is focus on the icon you want.  For example, when using Cards, the Block and Featured template option will '
||'automatically show the larger versions of icons where the Basic and Compact template options will use icons from the smaller set.</p>',
'',
'<p>There are over 1200 icons in Font APEX, and there are 25 modifiers you can place on top of any existing icons so you can customize any icon to fit your needs.</p>',
'',
'<h3>Change Log</h3>',
'<p><b>Font APEX </b> includes 95 new icons for medical apps, map markers, and additional file types, as well as 16 updates to existing icons.  See full list below:</p>',
'<p><b>New Icons</b></p>',
'<div class="icon-list margin-bottom-md">fa-2d-mode',
'fa-3d-mode',
'fa-404',
'fa-4k',
'fa-abacus',
'fa-accessor-more',
'fa-accessor-one',
'fa-accordion',
'fa-alarm-check',
'fa-alarm-clock',
'fa-alarm-minus',
'fa-alarm-plus',
'fa-alarm-snooze',
'fa-alarm-times',
'fa-analytics',
'fa-badge',
'fa-badge-check',
'fa-badge-dollar',
'fa-badge-percent',
'fa-biohazard',
'fa-bug-slash',
'fa-file-brackets',
'fa-file-csv',
'fa-file-json',
'fa-file-medical',
'fa-file-prescription',
'fa-file-signature',
'fa-flag-pennant',
'fa-flag-pennant-o',
'fa-flag-swallowtail',
'fa-flag-swallowtail-o',
'fa-frown',
'fa-heat-map',
'fa-line-map',
'fa-location',
'fa-location-arrow-solid',
'fa-location-circle',
'fa-location-circle-solid',
'fa-location-slash',
'fa-map-marker-camera',
'fa-map-marker-camera-o',
'fa-map-marker-check',
'fa-map-marker-check-o',
'fa-map-marker-face-frown',
'fa-map-marker-face-frown-o',
'fa-map-marker-face-meh',
'fa-map-marker-face-meh-o',
'fa-map-marker-face-smile',
'fa-map-marker-face-smile-o',
'fa-map-marker-s',
'fa-map-marker-shine',
'fa-map-marker-shine-o',
'fa-map-marker-slash',
'fa-map-marker-slash-o',
'fa-map-markers',
'fa-map-markers-o',
'fa-map-pin-circle',
'fa-map-pin-circle-o',
'fa-map-pin-heart',
'fa-map-pin-heart-o',
'fa-map-pin-triangle',
'fa-map-pin-triangle-o',
'fa-medical-mask',
'fa-medication',
'fa-medication-pill',
'fa-medication-pill-bottle',
'fa-medication-pills',
'fa-meh',
'fa-nurse',
'fa-podium',
'fa-prescription',
'fa-prescription-sheet',
'fa-presentation',
'fa-radiation',
'fa-size-l',
'fa-size-m',
'fa-size-s',
'fa-size-xl',
'fa-size-xs',
'fa-size-xxl',
'fa-smile',
'fa-sort-amount-asc-alt',
'fa-sort-amount-desc-alt',
'fa-syringe',
'fa-tasks-alt',
'fa-text-color',
'fa-traffic-light',
'fa-traffic-light-go',
'fa-traffic-light-stop',
'fa-user-slash',
'fa-users-alt',
'fa-vial',
'fa-vials',
'fa-workflow',
'fa-x-ray</div>',
'',
'<p><b>Updated Icons</b></p>',
'<div class="icon-list">bug',
'crosshairs',
'frown-o',
'location-arrow',
'map-marker',
'meh-o',
'pause-circle',
'pause-circle-o',
'play-circle',
'play-circle-o',
'smile-o',
'sort-amount-asc',
'sort-amount-desc',
'stop-circle',
'stop-circle-o',
'user-md</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4310943203890110403)
,p_plug_name=>unistr('\56FE\6807')
,p_icon_css_classes=>'fa-lg fa-apex u-color-9'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2655656254774638580)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1780551024786808159)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1948554321446921034)
,p_button_name=>'RESET_ICON'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>'Reset Icon'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'dm-IconDialog-resetButton'
,p_icon_css_classes=>'fa-refresh'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2946088762907365229)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4310943203890110403)
,p_button_name=>'ABOUT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>'About Font APEX'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-info-circle'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1780549642182808146)
,p_name=>'P4000_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1780550264395808152)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\641C\7D22 \56FE\6807')
,p_placeholder=>'Search Font APEX Icons...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'t-Form-searchField'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2022424327484700817)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1780550645859808156)
,p_name=>'P4000_ROTATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1948553402022921025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rotate'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Rotate 90;fa-rotate-90,Rotate 180;fa-rotate-180,Rotate 270;fa-rotate-270,Flip Horizontal;fa-flip-horizontal,Flip Vertical;fa-flip-vertical'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Normal'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1816384615197797237)
,p_name=>'P4000_SIZE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1780550264395808152)
,p_item_default=>'SMALL'
,p_prompt=>'Size'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Small;SMALL,Large;LARGE'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2022424327484700817)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1948553459360921026)
,p_name=>'P4000_ICON_SIZE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1948553402022921025)
,p_use_cache_before_default=>'NO'
,p_item_default=>'null'
,p_prompt=>'Scale'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:1x;null,2x;fa-2x,3x;fa-3x,4x;fa-4x,5x;fa-5x'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1948553565754921027)
,p_name=>'P4000_ANIMATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1948553402022921025)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\52A8\753B')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FONT_ANIMATIONS'
,p_lov=>'.'||wwv_flow_imp.id(1993404565620595834)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Static'
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1948554187737921033)
,p_name=>'P4000_ICONCLASS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1780550336456808153)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2187363268248870143)
,p_name=>'P4000_FA_SIZE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1948553402022921025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Size'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Small;SMALL,Large;LARGE'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2304153334060068251)
,p_name=>'P4000_MODIFIER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1948553402022921025)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Modifier'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STATIC2:',
'25 Percent;fam-25-percent,',
'50 Percent;fam-50-percent,',
'75 Percent;fam-75-percent,',
'100 Percent;fam-100-percent,',
'Arrow Down;fam-arrow-down,',
'Arrow Left;fam-arrow-left,',
'Arrow Right;fam-arrow-right,',
'Arrow Up;fam-arrow-up,',
'Blank;fam-blank,',
'Check;fam-check,',
'Circle;fam-circle,',
'Clock;fam-clock,',
'Ellipsis H;fam-ellipsis-h,',
'Ellipsis V;fam-ellipsis-v,',
'Heart;fam-heart,',
'Information;fam-information,',
'Minus;fam-minus,',
'Pause;fam-pause,',
'Play;fam-play,',
'Plus;fam-plus,',
'Sleep;fam-sleep,',
'Star;fam-star,',
'Stop;fam-stop,',
'Warning;fam-warning,',
'X;fam-x'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>unistr('\65E0')
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2304153342325068252)
,p_name=>unistr('P4000_MODIFIER_\72B6\6001')
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1948553402022921025)
,p_use_cache_before_default=>'NO'
,p_item_default=>'fam-is-success'
,p_prompt=>unistr('\72B6\6001')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'STATIC2:',
'Success;fam-is-success,',
'Warning;fam-is-warning,',
'Danger;fam-is-danger,',
'Info;fam-is-info,',
'Disabled;fam-is-disabled'))
,p_cHeight=>1
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1780549956445808149)
,p_name=>unistr('\53D6\6D88 Enter')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4000_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.keyCode == 13'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1780550126735808150)
,p_event_id=>wwv_flow_imp.id(1780549956445808149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1780550451788808154)
,p_name=>'Show Icon Preview Dialog'
,p_event_sequence=>20
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.dm-Search-result'
,p_bind_type=>'live'
,p_bind_delegate_to_selector=>'#icons'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1780550558579808155)
,p_event_id=>wwv_flow_imp.id(1780550451788808154)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $j = apex.jQuery,',
'    iconClass = $j(this.triggeringElement).find(''.dm-Search-class'').text();',
'$s(''P4000_ICONCLASS'',iconClass);',
'$j("#icon_dialog").dialog({',
'    title: "Icon: " + iconClass',
'}).dialog("open");',
'apex.theme42demo.renderIconPreview();',
'$j(''#P4000_ICON_SIZE'').focus();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1948553770994921029)
,p_name=>'Apply Modifier to Icon'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4000_ICON_SIZE,P4000_ANIMATION,P4000_ROTATE,P4000_MODIFIER,P4000_MODIFIER_STATUS'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1948553911259921030)
,p_event_id=>wwv_flow_imp.id(1948553770994921029)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme42demo.renderIconPreview();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1780551175798808161)
,p_name=>'Reset Icon Settings'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1780551024786808159)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1780551253828808162)
,p_event_id=>wwv_flow_imp.id(1780551175798808161)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4000_ANIMATION,P4000_ROTATE,P4000_MODIFIER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2187364328353870153)
,p_event_id=>wwv_flow_imp.id(1780551175798808161)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P4000_ICON_SIZE'',''null'');',
'apex.theme42demo.renderIconPreview();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2145046488725171634)
,p_name=>unistr('Toggle Modifier \72B6\6001')
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4000_MODIFIER'
,p_condition_element=>'P4000_MODIFIER'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2145046603569171635)
,p_event_id=>wwv_flow_imp.id(2145046488725171634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4000_MODIFIER_STATUS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2145046692611171636)
,p_event_id=>wwv_flow_imp.id(2145046488725171634)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4000_MODIFIER_STATUS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2145046743642171637)
,p_event_id=>wwv_flow_imp.id(2145046488725171634)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4000_MODIFIER_STATUS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2946088872346365230)
,p_name=>'Open About Dialog'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2946088762907365229)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2946089012635365231)
,p_event_id=>wwv_flow_imp.id(2946088872346365230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1989052757258742686)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1770913618195764537)
,p_name=>'Toggle Icon Size'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4000_SIZE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1770913726890764538)
,p_event_id=>wwv_flow_imp.id(1770913618195764537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var size = $v(''P4000_SIZE''),',
'    icons$ = $( ''#icons'' ),',
'    L_CLASS = ''force-fa-lg'';',
'if ( size === ''LARGE'' ) {',
'    icons$.addClass( L_CLASS );',
'} else {',
'    icons$.removeClass( L_CLASS );',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2187364101388870151)
,p_event_id=>wwv_flow_imp.id(1770913618195764537)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P4000_FA_SIZE'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$v(''P4000_SIZE'');'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2187363394049870144)
,p_name=>'Set Icon Size'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4000_FA_SIZE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2187363491259870145)
,p_event_id=>wwv_flow_imp.id(2187363394049870144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P4000_SIZE'',$v(''P4000_FA_SIZE''));',
'apex.theme42demo.renderIconPreview();',
''))
);
wwv_flow_imp.component_end;
end;
/
