prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 130
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(2359872459369135334)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'21.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(2228459441287519012)
,p_default_page_template=>wwv_flow_imp.id(2359772371644135283)
,p_default_dialog_template=>wwv_flow_imp.id(2359766104770135280)
,p_error_template=>wwv_flow_imp.id(2359767627981135281)
,p_printer_friendly_template=>wwv_flow_imp.id(2359772371644135283)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(2359767627981135281)
,p_default_button_template=>wwv_flow_imp.id(2359869497002135326)
,p_default_region_template=>wwv_flow_imp.id(2359807030908135298)
,p_default_chart_template=>wwv_flow_imp.id(2359807030908135298)
,p_default_form_template=>wwv_flow_imp.id(2359807030908135298)
,p_default_reportr_template=>wwv_flow_imp.id(2359807030908135298)
,p_default_tabform_template=>wwv_flow_imp.id(2359807030908135298)
,p_default_wizard_template=>wwv_flow_imp.id(2359807030908135298)
,p_default_menur_template=>wwv_flow_imp.id(2359816405900135301)
,p_default_listr_template=>wwv_flow_imp.id(2359807030908135298)
,p_default_irr_template=>wwv_flow_imp.id(2359805148471135297)
,p_default_report_template=>wwv_flow_imp.id(2359829749120135307)
,p_default_label_template=>wwv_flow_imp.id(2359868381483135324)
,p_default_menu_template=>wwv_flow_imp.id(2359870893962135327)
,p_default_calendar_template=>wwv_flow_imp.id(2359870968497135328)
,p_default_list_template=>wwv_flow_imp.id(2359866462016135323)
,p_default_nav_list_template=>wwv_flow_imp.id(2359857521955135320)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(2359857521955135320)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(2359855666250135319)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(2359789034659135292)
,p_default_dialogr_template=>wwv_flow_imp.id(2359778576122135288)
,p_default_option_label=>wwv_flow_imp.id(2359868381483135324)
,p_default_required_label=>wwv_flow_imp.id(2359868698906135325)
,p_default_navbar_list_template=>wwv_flow_imp.id(2359858537622135320)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/21.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
wwv_flow_imp.component_end;
end;
/
