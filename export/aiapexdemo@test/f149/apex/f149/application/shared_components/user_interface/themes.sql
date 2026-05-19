prompt --application/shared_components/user_interface/themes
begin
--   Manifest
--     THEME: 149
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(4054002357749400662)
,p_theme_id=>42
,p_theme_name=>unistr('\901A\7528\4E3B\9898')
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'22.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_current_theme_style_id=>wwv_flow_imp.id(1364350924869707507)
,p_default_page_template=>wwv_flow_imp.id(4053994380817400616)
,p_default_dialog_template=>wwv_flow_imp.id(2082046026875428236)
,p_error_template=>wwv_flow_imp.id(2082796373399691928)
,p_printer_friendly_template=>wwv_flow_imp.id(4053994380817400616)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_imp.id(2082796373399691928)
,p_default_button_template=>wwv_flow_imp.id(4054001381371400634)
,p_default_region_template=>wwv_flow_imp.id(4053997356862400624)
,p_default_chart_template=>wwv_flow_imp.id(4053997356862400624)
,p_default_form_template=>wwv_flow_imp.id(4053997356862400624)
,p_default_reportr_template=>wwv_flow_imp.id(4053997356862400624)
,p_default_tabform_template=>wwv_flow_imp.id(4053997356862400624)
,p_default_wizard_template=>wwv_flow_imp.id(4053997356862400624)
,p_default_menur_template=>wwv_flow_imp.id(2513101747170473402)
,p_default_listr_template=>wwv_flow_imp.id(4053997356862400624)
,p_default_irr_template=>wwv_flow_imp.id(2082165061555131922)
,p_default_report_template=>wwv_flow_imp.id(2520292761174628983)
,p_default_label_template=>wwv_flow_imp.id(1590760388063493177)
,p_default_menu_template=>wwv_flow_imp.id(4054001765906400637)
,p_default_calendar_template=>wwv_flow_imp.id(4054001971315400638)
,p_default_list_template=>wwv_flow_imp.id(4053999564480400630)
,p_default_nav_list_template=>wwv_flow_imp.id(2508393124636580384)
,p_default_top_nav_list_temp=>wwv_flow_imp.id(2508393124636580384)
,p_default_side_nav_list_temp=>wwv_flow_imp.id(2449377637691036088)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_imp.id(2108067559985920973)
,p_default_dialogr_template=>wwv_flow_imp.id(4483079085784721863)
,p_default_option_label=>wwv_flow_imp.id(1590760388063493177)
,p_default_required_label=>wwv_flow_imp.id(1590760567656494195)
,p_default_navbar_list_template=>wwv_flow_imp.id(2829181476297460509)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/22.2/')
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
