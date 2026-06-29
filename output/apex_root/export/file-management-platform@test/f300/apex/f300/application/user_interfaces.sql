prompt --application/user_interfaces
begin
--   Manifest
--     USER INTERFACES: 300
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(33969957811145937)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:300:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(9731499647009393965)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_imp.id(9731660380802394061)
,p_nav_list_template_options=>'js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(9795728546302686797)
,p_nav_bar_list_template_id=>wwv_flow_imp.id(9731663240082394063)
,p_nav_bar_template_options=>'#DEFAULT#'
);
wwv_flow_imp.component_end;
end;
/
