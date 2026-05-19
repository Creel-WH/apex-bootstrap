prompt --application/pages/page_00422
begin
--   Manifest
--     PAGE: 00422
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
 p_id=>422
,p_name=>unistr('\9875\7709\548C\9875\811A')
,p_alias=>'HEADERS-AND-FOOTERS'
,p_step_title=>unistr('\9875\7709\548C\9875\811A')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1988934022267168693)
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2037572268320186863)
,p_plug_name=>unistr('\79FB\52A8\7AEF Page \9875\811A')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>You can configure a <b>Buttons Container</b> region so that it sticks to the bottom of the page for small screen devices.  This could be useful for when you want to have one set of buttons for a given page and position them to the bottom when a sm'
||'all screen device is used.</p>',
'',
'<p><b>Steps</b></p>',
'<ol>',
'  <li>Create a Region with the region template set to <b>Buttons Container</b></li>',
'  <li>Modify the Template Options for this region and check the <b>Stick to Bottom on Mobile</b> option</li>',
'</ol>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2187361589846870126)
,p_plug_name=>unistr('Page \9875\811A Examples')
,p_parent_plug_id=>wwv_flow_imp.id(2037572268320186863)
,p_icon_css_classes=>'fa-mouse-pointer'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(2022321869436532060)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<b>Page Footer Examples</b>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2785445029169981361)
,p_plug_name=>unistr('\79FB\52A8\7AEF Page Header')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <strong>Breadcrumb Bar</strong> region position on any given Page Template within Universal Theme is designed to persist on large screens as the user scrolls.  This is the position where the Breadcrumbs component, or Hero region, is typically '
||'placed.</p>',
'',
'<p>By default, the contents of this region are not stuck to the top of the screen on small screen devices as it can take away valuable screen realestate. However, if you wish to persist this header to always be visible on a given page, you can add th'
||'e following template option to make this happen.</p>',
'',
'<p><strong>Steps</strong></p>',
'<ol>',
'  <li>Select the Page in Page Designer</li>',
'  <li>Modify the Template Options for the page and check the <strong>Sticky Header on Mobile</strong> option</li>',
'</ol>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2187361274752870123)
,p_plug_name=>'Page Header Examples'
,p_parent_plug_id=>wwv_flow_imp.id(2785445029169981361)
,p_icon_css_classes=>'fa-mouse-pointer'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--customIcons:t-Alert--info:t-Alert--removeHeading js-removeLandmark:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(2022321869436532060)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<b>Page Header Examples</b>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5159235796607876891)
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
 p_id=>wwv_flow_imp.id(6578869859382855580)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Many mobile apps share a common pattern for placement of buttons and other content. This content is typically positioned on the header or footer of the page which is easily accessible and on screen for quick actions. This page explains how you can'
||' apply this pattern for your own apps.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2187361346693870124)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2187361274752870123)
,p_button_name=>'HEADER_1'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>'Header Example 1'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.theme42demo.openMobileSamplePage(''f?p=&APP_ID.:1116:&APP_SESSION.:sample1'',''Sticky Page Header'');'
,p_icon_css_classes=>'fa-external-link-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2187361877379870129)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2187361589846870126)
,p_button_name=>'FOOTER_1'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>unistr('\9875\811A Example 1')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.theme42demo.openMobileSamplePage(''f?p=&APP_ID.:1117:&APP_SESSION.:sample1'',''Sticky Page Header'');'
,p_icon_css_classes=>'fa-external-link-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2187361490719870125)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2187361274752870123)
,p_button_name=>'HEADER_2'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>'Header Example 2'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.theme42demo.openMobileSamplePage(''f?p=&APP_ID.:1116:&APP_SESSION.:sample2'',''Sticky Page Header'');'
,p_icon_css_classes=>'fa-external-link-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2187362020914870130)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2187361589846870126)
,p_button_name=>'FOOTER_2'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--link:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_image_alt=>unistr('\9875\811A Example 2')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.theme42demo.openMobileSamplePage(''f?p=&APP_ID.:1117:&APP_SESSION.:sample2'',''Sticky Page Header'');'
,p_icon_css_classes=>'fa-external-link-square'
);
wwv_flow_imp.component_end;
end;
/
