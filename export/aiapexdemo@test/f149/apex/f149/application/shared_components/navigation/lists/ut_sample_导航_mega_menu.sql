prompt --application/shared_components/navigation/lists/ut_sample_导航_mega_menu
begin
--   Manifest
--     LIST: UT - Sample 导航 Mega Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(2272677234216391368)
,p_name=>unistr('UT - Sample \5BFC\822A Mega Menu')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272677419241391369)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Menu Item 1'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-home'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272683386194391372)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Sub Menu Item 1.1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272677419241391369)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272683745308391373)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Sub Menu Item 1.2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272677419241391369)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272677796370391370)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Menu Item 2'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'ALWAYS'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272679400371391370)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Sub Menu Item 2.1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272677796370391370)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272679813797391371)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Sub Menu Item 2.2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272677796370391370)
,p_list_item_current_type=>'ALWAYS'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272680216677391371)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Sub Menu Item 2.3'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272677796370391370)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272678198699391370)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Menu Item 3'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-play-circle-o'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272680560306391371)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sub Menu Item 3.1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272678198699391370)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272680979570391371)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Sub Menu Item 3.2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272678198699391370)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272681425563391371)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Sub Menu Item 3.2.1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272680979570391371)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272681757201391372)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Sub Menu Item 3.2.2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272680979570391371)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272682182934391372)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Sub Menu Item 3.2.3'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272680979570391371)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272678550740391370)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Menu Item 4'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272682631870391372)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Sub Menu Item 4.1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272678550740391370)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2272682938051391372)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Sub Menu Item 4.2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(2272678550740391370)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
