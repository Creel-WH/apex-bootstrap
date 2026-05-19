prompt --application/shared_components/navigation/lists/ut_sample_菜单栏_list
begin
--   Manifest
--     LIST: UT - Sample 菜单栏 List
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
 p_id=>wwv_flow_imp.id(3336619087569497098)
,p_name=>unistr('UT - Sample \83DC\5355\680F List')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336619643214497099)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Menu Item 1'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-cloud'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336621250848497099)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Sub Menu Item 1.1'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-area-chart'
,p_parent_list_item_id=>wwv_flow_imp.id(3336619643214497099)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336621710188497100)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sub Menu Item 1.2'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-bar-chart'
,p_parent_list_item_id=>wwv_flow_imp.id(3336619643214497099)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336622115757497100)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Sub Menu Item 1.3'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-bar-chart-o'
,p_parent_list_item_id=>wwv_flow_imp.id(3336619643214497099)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336620108019497099)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Menu Item 2'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-anchor'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336622518275497100)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Sub Menu Item 2.1'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-bars'
,p_parent_list_item_id=>wwv_flow_imp.id(3336620108019497099)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336622929511497100)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Sub Menu Item 2.2'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-beer'
,p_parent_list_item_id=>wwv_flow_imp.id(3336620108019497099)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336623316444497100)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Sub Menu Item 2.2.1'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-binoculars'
,p_parent_list_item_id=>wwv_flow_imp.id(3336622929511497100)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336623707385497100)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Sub Menu Item 2.2.2'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-bomb'
,p_parent_list_item_id=>wwv_flow_imp.id(3336622929511497100)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336624054404497101)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Sub Menu Item 2.2.3'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-bug'
,p_parent_list_item_id=>wwv_flow_imp.id(3336622929511497100)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336620522401497099)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Menu Item 3'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-archive'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336624446679497102)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sub Menu Item 3.1'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-briefcase'
,p_parent_list_item_id=>wwv_flow_imp.id(3336620522401497099)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336624918795497102)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Sub Menu Item 3.2'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-camera'
,p_parent_list_item_id=>wwv_flow_imp.id(3336620522401497099)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3880121907128694212)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Menu Item 4'
,p_list_item_link_target=>'#'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
