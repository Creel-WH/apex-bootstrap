prompt --application/pages/page_00401
begin
--   Manifest
--     PAGE: 00401
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
 p_id=>401
,p_name=>unistr('\8BBE\8BA1 \6982\89C8')
,p_alias=>'DESIGN-OVERVIEW'
,p_step_title=>unistr('\8BBE\8BA1 \6982\89C8 - &APP_TITLE.')
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
 p_id=>wwv_flow_imp.id(2196828722631030643)
,p_plug_name=>unistr('\8BBE\8BA1')
,p_icon_css_classes=>'fa-lg fa-design u-color-3'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2655656254774638580)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2304152836252068247)
,p_plug_name=>'Key Principles'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>There are three key aspects of Universal Theme that make it ideally suited for Application Express development: Responsive Design, Versatile UI Components, and Easy Customization.</p>',
'',
'<h3 class="margin-top-lg"><span class="fa fa-number-1 fa-lg u-color-3-txt"></span> Responsive Design</h3>',
'<p>Universal Theme has been designed from the very beginning to work just as well on small screen devices (phones, tablet) as it does on larger screen devices (laptops, desktops).</p>',
'<p>This means that the UI components in Universal Theme work across varying screen resolutions while maintaining the same or similar functionality.  In addition, Universal Theme takes full advantage of ultra high screen resolutions by utilizing vecto'
||'r graphics where possible, and relying upon CSS3 features for UI styling.</p>',
'',
'<h3 class="margin-top-lg"><span class="fa fa-number-2 fa-lg u-color-3-txt"></span> Versatile UI</h3>',
'<p>Universal Theme provides the components / building blocks necessary to build practically any type of business application UI.</p>',
'<p>From Cards, Forms, Menus, Tabs, Reports, and so much more, these components have been developed with the best practices following common and popular UI patterns. You can browse all of the components provided with Universal Theme by navigating to t'
||'he Components section of this application.</p>',
'',
'<h3 class="margin-top-lg"><span class="fa fa-number-3 fa-lg u-color-3-txt"></span> Easy Customization</h3>',
'<p>Even for the most basic of requirements, theming and customization is a key and necessary ingredient to the success of your application.</p>',
'<p>With Universal Theme, you can effortlessly customize and fully control the look and feel of your applications without becoming an expert in UI design, HTML, CSS, or JavaScript. Using Theme Roller and Template Options, you can easily customize your'
||' application to fit your company''s brand, and customize the look and feel of various components using Template Options. All of this is possible during runtime, so what you see is what you really get.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3183051695889108495)
,p_plug_name=>unistr('What is \901A\7528\4E3B\9898?')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Universal Theme is a user interface for Application Express that enables developers to build modern web applications without requiring extensive knowledge of HTML, CSS, or JavaScript. With some working knowledge of Application Express, you can use'
||' Universal Theme to easily build a responsive application that is highly accessible, easily customizable, and easy to maintain.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
