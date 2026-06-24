prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 300
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(9731765840597394309)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(9731765021534394303)
,p_default_page_template=>wwv_flow_imp.id(9731527269127393999)
,p_default_dialog_template=>wwv_flow_imp.id(9731506792411393991)
,p_error_template=>wwv_flow_imp.id(9731508296357393992)
,p_printer_friendly_template=>wwv_flow_imp.id(9731527269127393999)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(9731508296357393992)
,p_default_button_template=>wwv_flow_imp.id(9731675590438394078)
,p_default_region_template=>wwv_flow_imp.id(9731602410593394030)
,p_default_chart_template=>wwv_flow_imp.id(9731602410593394030)
,p_default_form_template=>wwv_flow_imp.id(9731602410593394030)
,p_default_reportr_template=>wwv_flow_imp.id(9731602410593394030)
,p_default_tabform_template=>wwv_flow_imp.id(9731602410593394030)
,p_default_wizard_template=>wwv_flow_imp.id(9731602410593394030)
,p_default_menur_template=>wwv_flow_imp.id(9731614793730394034)
,p_default_listr_template=>wwv_flow_imp.id(9731602410593394030)
,p_default_irr_template=>wwv_flow_imp.id(9731592608628394027)
,p_default_report_template=>wwv_flow_imp.id(9731634428239394045)
,p_default_label_template=>wwv_flow_imp.id(9731673122678394073)
,p_default_menu_template=>wwv_flow_imp.id(9731677229303394079)
,p_default_calendar_template=>wwv_flow_imp.id(9731677299035394081)
,p_default_list_template=>wwv_flow_imp.id(9731671230869394066)
,p_default_nav_list_template=>wwv_flow_imp.id(9731662229433394062)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(9731662229433394062)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(9731660380802394061)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(9731558757598394015)
,p_default_dialogr_template=>wwv_flow_imp.id(9731535788814394008)
,p_default_option_label=>wwv_flow_imp.id(9731673122678394073)
,p_default_required_label=>wwv_flow_imp.id(9731674386299394075)
,p_default_navbar_list_template=>wwv_flow_imp.id(9731663240082394063)
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
