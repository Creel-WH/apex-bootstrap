prompt --application/shared_components/navigation/lists/ut_sample_弹出菜单
begin
--   Manifest
--     LIST: UT - Sample 弹出菜单
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
 p_id=>wwv_flow_imp.id(3582518165741464146)
,p_name=>unistr('UT - Sample \5F39\51FA\83DC\5355')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3582518382997464147)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Action A'
,p_list_item_link_target=>'#'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3582518803730464149)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Action B'
,p_list_item_link_target=>'#'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3582520005841464150)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Sub Item A'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3582518803730464149)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3582634848437467572)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Sub Item B'
,p_list_item_link_target=>'#'
,p_parent_list_item_id=>wwv_flow_imp.id(3582518803730464149)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3582519149285464150)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Action C'
,p_list_item_link_target=>'#'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3582519610181464150)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Action D'
,p_list_item_link_target=>'#'
,p_list_item_current_for_pages=>'#'
);
wwv_flow_imp.component_end;
end;
/
