prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 230
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(4422018140322172067)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(4422017295432172063)
,p_default_page_template=>wwv_flow_imp.id(4421762486963171839)
,p_default_dialog_template=>wwv_flow_imp.id(4421775897077171845)
,p_error_template=>wwv_flow_imp.id(4421773381336171844)
,p_printer_friendly_template=>wwv_flow_imp.id(4421762486963171839)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(4421773381336171844)
,p_default_button_template=>wwv_flow_imp.id(4421927953593171921)
,p_default_region_template=>wwv_flow_imp.id(4421854746448171880)
,p_default_chart_template=>wwv_flow_imp.id(4421854746448171880)
,p_default_form_template=>wwv_flow_imp.id(4421854746448171880)
,p_default_reportr_template=>wwv_flow_imp.id(4421854746448171880)
,p_default_tabform_template=>wwv_flow_imp.id(4421854746448171880)
,p_default_wizard_template=>wwv_flow_imp.id(4421854746448171880)
,p_default_menur_template=>wwv_flow_imp.id(4421867146447171885)
,p_default_listr_template=>wwv_flow_imp.id(4421854746448171880)
,p_default_irr_template=>wwv_flow_imp.id(4421844906972171876)
,p_default_report_template=>wwv_flow_imp.id(4421881346029171892)
,p_default_label_template=>wwv_flow_imp.id(4421925440658171917)
,p_default_menu_template=>wwv_flow_imp.id(4421929517555171922)
,p_default_calendar_template=>wwv_flow_imp.id(4421929622145171923)
,p_default_list_template=>wwv_flow_imp.id(4421915319777171909)
,p_default_nav_list_template=>wwv_flow_imp.id(4421924084363171915)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(4421924084363171915)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(4421922319218171914)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(4421811031797171863)
,p_default_dialogr_template=>wwv_flow_imp.id(4421788139356171854)
,p_default_option_label=>wwv_flow_imp.id(4421925440658171917)
,p_default_required_label=>wwv_flow_imp.id(4421926735091171918)
,p_default_navbar_list_template=>wwv_flow_imp.id(4421921884654171913)
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
