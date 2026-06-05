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
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(9715068168951168855)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'23.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(9715067349888168849)
,p_default_page_template=>wwv_flow_imp.id(9714829597481168545)
,p_default_dialog_template=>wwv_flow_imp.id(9714809120765168537)
,p_error_template=>wwv_flow_imp.id(9714810624711168538)
,p_printer_friendly_template=>wwv_flow_imp.id(9714829597481168545)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(9714810624711168538)
,p_default_button_template=>wwv_flow_imp.id(9714977918792168624)
,p_default_region_template=>wwv_flow_imp.id(9714904738947168576)
,p_default_chart_template=>wwv_flow_imp.id(9714904738947168576)
,p_default_form_template=>wwv_flow_imp.id(9714904738947168576)
,p_default_reportr_template=>wwv_flow_imp.id(9714904738947168576)
,p_default_tabform_template=>wwv_flow_imp.id(9714904738947168576)
,p_default_wizard_template=>wwv_flow_imp.id(9714904738947168576)
,p_default_menur_template=>wwv_flow_imp.id(9714917122084168580)
,p_default_listr_template=>wwv_flow_imp.id(9714904738947168576)
,p_default_irr_template=>wwv_flow_imp.id(9714894936982168573)
,p_default_report_template=>wwv_flow_imp.id(9714936756593168591)
,p_default_label_template=>wwv_flow_imp.id(9714975451032168619)
,p_default_menu_template=>wwv_flow_imp.id(9714979557657168625)
,p_default_calendar_template=>wwv_flow_imp.id(9714979627389168627)
,p_default_list_template=>wwv_flow_imp.id(9714973559223168612)
,p_default_nav_list_template=>wwv_flow_imp.id(9714964557787168608)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(9714964557787168608)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(9714962709156168607)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(9714861085952168561)
,p_default_dialogr_template=>wwv_flow_imp.id(9714838117168168554)
,p_default_option_label=>wwv_flow_imp.id(9714975451032168619)
,p_default_required_label=>wwv_flow_imp.id(9714976714653168621)
,p_default_navbar_list_template=>wwv_flow_imp.id(9714965568436168609)
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
