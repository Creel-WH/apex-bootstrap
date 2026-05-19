prompt --application/pages/page_06201
begin
--   Manifest
--     PAGE: 06201
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
 p_id=>6201
,p_name=>'JavaScript API'
,p_alias=>'JAVASCRIPT-APIS'
,p_step_title=>'JavaScript API - &APP_TITLE.'
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
 p_id=>wwv_flow_imp.id(4303320139356762932)
,p_plug_name=>'API List'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ol class="event-list">',
'    <li class="margin-bottom-md">',
'        <p><code class="event-name">apex.theme42.util.configAPEXMsgs( pOptions )</code></p><p>Configure the display behavior of success messages. You can use this API to programmatically determine how long the success message is displayed before auto'
||'matically dismissing itself.</p>',
'<pre class="dm-Code lang-js"><code>apex.jQuery(function() {',
'  apex.theme42.util.configAPEXMsgs({',
'    autoDismiss: true,',
'    duration: 5000  // duration is optional (Default is 3000 milliseconds)',
'  });',
'});</code></pre>',
'<p><small>Note: The previous name for this API, <code>apex.theme42.configureSuccessMessages</code>, is deprecated and will be removed in a future release.  Please update your application to use the new name.</small></p>',
'    </li>',
'    ',
'    <li class="margin-bottom-md">',
'        <p><code class="event-name">apex.theme42.util.scrollTo( pId )</code></p>',
'        <p>Enables smooth scrolling to the specified anchor, taking into account the sticky top height so the content is not partially blocked.</p>',
'<pre class="dm-Code lang-js"><code>// Example 1: Simply call it to scroll to an region',
'apex.theme42.util.scrollTo( ''my_region'' );',
'',
'// Example 2: Use smooth scroll for all anchor links such as href="#my_content".',
'apex.jQuery(function() {',
'  $( "a[href^=''#'']" ).click(function( e ) {',
'    e.preventDefault();',
'    apex.theme42.util.scrollTo( apex.jQuery( this ).attr( ''href'' ) );',
'  });',
'});</code></pre>',
'    </li>',
'</ol>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4303320246360762933)
,p_plug_name=>unistr('\4ECB\7ECD')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Universal Theme provides the following JavaScript APIs that you may find useful in your applications.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4320561210850218158)
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
