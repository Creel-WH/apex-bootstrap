prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 299
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(9760249408984264530)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(9760248589921264524)
,p_default_page_template=>wwv_flow_imp.id(9760010837514264220)
,p_default_dialog_template=>wwv_flow_imp.id(9759990360798264212)
,p_error_template=>wwv_flow_imp.id(9759991864744264213)
,p_printer_friendly_template=>wwv_flow_imp.id(9760010837514264220)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(9759991864744264213)
,p_default_button_template=>wwv_flow_imp.id(9760159158825264299)
,p_default_region_template=>wwv_flow_imp.id(9760085978980264251)
,p_default_chart_template=>wwv_flow_imp.id(9760085978980264251)
,p_default_form_template=>wwv_flow_imp.id(9760085978980264251)
,p_default_reportr_template=>wwv_flow_imp.id(9760085978980264251)
,p_default_tabform_template=>wwv_flow_imp.id(9760085978980264251)
,p_default_wizard_template=>wwv_flow_imp.id(9760085978980264251)
,p_default_menur_template=>wwv_flow_imp.id(9760098362117264255)
,p_default_listr_template=>wwv_flow_imp.id(9760085978980264251)
,p_default_irr_template=>wwv_flow_imp.id(9760076177015264248)
,p_default_report_template=>wwv_flow_imp.id(9760117996626264266)
,p_default_label_template=>wwv_flow_imp.id(9760156691065264294)
,p_default_menu_template=>wwv_flow_imp.id(9760160797690264300)
,p_default_calendar_template=>wwv_flow_imp.id(9760160867422264302)
,p_default_list_template=>wwv_flow_imp.id(9760154799256264287)
,p_default_nav_list_template=>wwv_flow_imp.id(9760145797820264283)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(9760145797820264283)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(9760143949189264282)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(9760042325985264236)
,p_default_dialogr_template=>wwv_flow_imp.id(9760019357201264229)
,p_default_option_label=>wwv_flow_imp.id(9760156691065264294)
,p_default_required_label=>wwv_flow_imp.id(9760157954686264296)
,p_default_navbar_list_template=>wwv_flow_imp.id(9760146808469264284)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/23.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
