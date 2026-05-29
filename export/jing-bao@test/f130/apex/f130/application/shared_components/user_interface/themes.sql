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
 p_id=>wwv_flow_imp.id(2286749910892554791)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'21.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(2155336892810938469)
,p_default_page_template=>wwv_flow_imp.id(2286649823167554740)
,p_default_dialog_template=>wwv_flow_imp.id(2286643556293554737)
,p_error_template=>wwv_flow_imp.id(2286645079504554738)
,p_printer_friendly_template=>wwv_flow_imp.id(2286649823167554740)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(2286645079504554738)
,p_default_button_template=>wwv_flow_imp.id(2286746948525554783)
,p_default_region_template=>wwv_flow_imp.id(2286684482431554755)
,p_default_chart_template=>wwv_flow_imp.id(2286684482431554755)
,p_default_form_template=>wwv_flow_imp.id(2286684482431554755)
,p_default_reportr_template=>wwv_flow_imp.id(2286684482431554755)
,p_default_tabform_template=>wwv_flow_imp.id(2286684482431554755)
,p_default_wizard_template=>wwv_flow_imp.id(2286684482431554755)
,p_default_menur_template=>wwv_flow_imp.id(2286693857423554758)
,p_default_listr_template=>wwv_flow_imp.id(2286684482431554755)
,p_default_irr_template=>wwv_flow_imp.id(2286682599994554754)
,p_default_report_template=>wwv_flow_imp.id(2286707200643554764)
,p_default_label_template=>wwv_flow_imp.id(2286745833006554781)
,p_default_menu_template=>wwv_flow_imp.id(2286748345485554784)
,p_default_calendar_template=>wwv_flow_imp.id(2286748420020554785)
,p_default_list_template=>wwv_flow_imp.id(2286743913539554780)
,p_default_nav_list_template=>wwv_flow_imp.id(2286734973478554777)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(2286734973478554777)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(2286733117773554776)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(2286666486182554749)
,p_default_dialogr_template=>wwv_flow_imp.id(2286656027645554745)
,p_default_option_label=>wwv_flow_imp.id(2286745833006554781)
,p_default_required_label=>wwv_flow_imp.id(2286746150429554782)
,p_default_navbar_list_template=>wwv_flow_imp.id(2286735989145554777)
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
