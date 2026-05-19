prompt --application/shared_components/navigation/lists/ut_sample_导航_menu
begin
--   Manifest
--     LIST: UT - Sample 导航 Menu
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
 p_id=>wwv_flow_imp.id(3315849127937946544)
,p_name=>unistr('UT - Sample \5BFC\822A Menu')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315849318677946545)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Menu Item 1'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-home'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315849707394946546)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Menu Item 2'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'ALWAYS'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315851727042956634)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Sub Menu Item 2.1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315849707394946546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315852019650957582)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Sub Menu Item 2.2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315849707394946546)
,p_list_item_current_type=>'ALWAYS'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315852307546958442)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Sub Menu Item 2.3'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315849707394946546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315850088251946546)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Menu Item 3'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-play-circle-o'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315852594580960546)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Sub Menu Item 3.1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315850088251946546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315852874934961447)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Sub Menu Item 3.2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315850088251946546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315853228350962534)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Sub Menu Item 3.2.1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315852874934961447)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315853516053963577)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Sub Menu Item 3.2.2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315852874934961447)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315854027614964487)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Sub Menu Item 3.2.3'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315852874934961447)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315850438502946546)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Menu Item 4'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-gear'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315854313230966124)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Sub Menu Item 4.1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315850438502946546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315854571597966863)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Sub Menu Item 4.2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315850438502946546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315850869521946546)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Menu Item 5'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-alert'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315854839348968015)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Sub Menu Item 5.1'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315850869521946546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3315855189930968651)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Sub Menu Item 5.2'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3315850869521946546)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
