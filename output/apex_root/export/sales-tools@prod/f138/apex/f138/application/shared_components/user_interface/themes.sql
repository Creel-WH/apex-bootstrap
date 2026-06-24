prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 138
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>534703734671071145
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(9259002021548615638)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(9259001202485615632)
,p_default_page_template=>wwv_flow_imp.id(9258763450078615328)
,p_default_dialog_template=>wwv_flow_imp.id(9258742973362615320)
,p_error_template=>wwv_flow_imp.id(9258744477308615321)
,p_printer_friendly_template=>wwv_flow_imp.id(9258763450078615328)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(9258744477308615321)
,p_default_button_template=>wwv_flow_imp.id(9258911771389615407)
,p_default_region_template=>wwv_flow_imp.id(9258838591544615359)
,p_default_chart_template=>wwv_flow_imp.id(9258838591544615359)
,p_default_form_template=>wwv_flow_imp.id(9258838591544615359)
,p_default_reportr_template=>wwv_flow_imp.id(9258838591544615359)
,p_default_tabform_template=>wwv_flow_imp.id(9258838591544615359)
,p_default_wizard_template=>wwv_flow_imp.id(9258838591544615359)
,p_default_menur_template=>wwv_flow_imp.id(9258850974681615363)
,p_default_listr_template=>wwv_flow_imp.id(9258838591544615359)
,p_default_irr_template=>wwv_flow_imp.id(9258828789579615356)
,p_default_report_template=>wwv_flow_imp.id(9258870609190615374)
,p_default_label_template=>wwv_flow_imp.id(9258909303629615402)
,p_default_menu_template=>wwv_flow_imp.id(9258913410254615408)
,p_default_calendar_template=>wwv_flow_imp.id(9258913479986615410)
,p_default_list_template=>wwv_flow_imp.id(9258907411820615395)
,p_default_nav_list_template=>wwv_flow_imp.id(9258898410384615391)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(9258898410384615391)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(9258896561753615390)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(9258794938549615344)
,p_default_dialogr_template=>wwv_flow_imp.id(9258771969765615337)
,p_default_option_label=>wwv_flow_imp.id(9258909303629615402)
,p_default_required_label=>wwv_flow_imp.id(9258910567250615404)
,p_default_navbar_list_template=>wwv_flow_imp.id(9258899421033615392)
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
