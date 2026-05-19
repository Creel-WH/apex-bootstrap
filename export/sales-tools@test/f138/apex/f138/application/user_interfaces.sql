prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 138
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(449818185134842397)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:&PAGE.:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(9793439562631686439)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(9793600296424686535)
,p_nav_list_template_options=>'js-navCollapsed--hidden:t-TreeNav--styleA'
,p_javascript_file_urls=>'#WORKSPACE_FILES#buriedPoint.v2.0.2.js'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(9793728546302686797)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(9793603155704686537)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_imp.component_end;
end;
/
