prompt --application/pages/page_06200
begin
--   Manifest
--     PAGE: 06200
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
 p_id=>6200
,p_name=>unistr('JavaScript \4E8B\4EF6')
,p_alias=>'JAVASCRIPT-EVENTS'
,p_step_title=>unistr('JavaScript \4E8B\4EF6 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(2144306959769755264)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'code.event-name {',
'    background: rgba(147, 180, 197, 0.25);',
'    padding: 6px 8px;',
'    border-radius: 3px;',
'    text-shadow: 1px 1px #fff;',
'}',
'',
'code.event-name:hover {',
'    color: #000;',
'    background:#eee',
'}',
'',
'.dm-Code {',
'    border-radius: var(--ut-component-border-radius);',
'    border: var(--ut-component-border-width) solid var(--ut-component-border-color);',
'}'))
,p_page_css_classes=>'dm-Page'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2126866057269406031)
,p_plug_name=>'API List'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ol class="event-list">',
'    <li>',
'        <p><code class="event-name">theme42ready</code> is triggered after the initialization of Universal Theme:</p>',
'<pre class="dm-Code lang-js"><code>apex.jQuery(window).on(''<strong>theme42ready</strong>'', function() {',
'    console.log(''Do something after UI elements are rendered on the page.'');',
'});</code></pre>',
'        ',
'    </li>',
'    <li>',
'        <p>',
'<code class="event-name">theme42layoutchanged</code> is triggered when left navigation menu is expanded or collapsed.</p>',
'<pre class="dm-Code lang-js"><code>apex.jQuery("#t_TreeNav").on(''<strong>theme42layoutchanged</strong>'', function(event, obj) {',
'    console.log(''Left menu action: '' + obj.action);   // obj.action will return expand or collapse',
'});</code></pre>',
'    </li>',
'    <li>',
'        <p><code class="event-name">apexwindowresized</code> is triggered by the browser window resize or the maximize/restore action of a region.</p>',
'<pre class="dm-Code lang-js"><code>apex.jQuery(window).on(''<strong>apexwindowresized</strong>'', function() {',
'    console.log(''Window resized.'');',
'});</code></pre>',
'    </li>',
'</ol>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2126866164273406032)
,p_plug_name=>unistr('\4ECB\7ECD')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'    You can extending Universal Theme by attaching handlers to its events.',
'</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2144107128762861257)
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
