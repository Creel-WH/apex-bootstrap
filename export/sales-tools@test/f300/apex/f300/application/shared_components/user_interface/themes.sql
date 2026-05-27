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
 p_id=>wwv_flow_imp.id(9793705756219686783)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(9793704937156686777)
,p_default_page_template=>wwv_flow_imp.id(9793467184749686473)
,p_default_dialog_template=>wwv_flow_imp.id(9793446708033686465)
,p_error_template=>wwv_flow_imp.id(9793448211979686466)
,p_printer_friendly_template=>wwv_flow_imp.id(9793467184749686473)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(9793448211979686466)
,p_default_button_template=>wwv_flow_imp.id(9793615506060686552)
,p_default_region_template=>wwv_flow_imp.id(9793542326215686504)
,p_default_chart_template=>wwv_flow_imp.id(9793542326215686504)
,p_default_form_template=>wwv_flow_imp.id(9793542326215686504)
,p_default_reportr_template=>wwv_flow_imp.id(9793542326215686504)
,p_default_tabform_template=>wwv_flow_imp.id(9793542326215686504)
,p_default_wizard_template=>wwv_flow_imp.id(9793542326215686504)
,p_default_menur_template=>wwv_flow_imp.id(9793554709352686508)
,p_default_listr_template=>wwv_flow_imp.id(9793542326215686504)
,p_default_irr_template=>wwv_flow_imp.id(9793532524250686501)
,p_default_report_template=>wwv_flow_imp.id(9793574343861686519)
,p_default_label_template=>wwv_flow_imp.id(9793613038300686547)
,p_default_menu_template=>wwv_flow_imp.id(9793617144925686553)
,p_default_calendar_template=>wwv_flow_imp.id(9793617214657686555)
,p_default_list_template=>wwv_flow_imp.id(9793611146491686540)
,p_default_nav_list_template=>wwv_flow_imp.id(9793602145055686536)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(9793602145055686536)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(9793600296424686535)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(9793498673220686489)
,p_default_dialogr_template=>wwv_flow_imp.id(9793475704436686482)
,p_default_option_label=>wwv_flow_imp.id(9793613038300686547)
,p_default_required_label=>wwv_flow_imp.id(9793614301921686549)
,p_default_navbar_list_template=>wwv_flow_imp.id(9793603155704686537)
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
