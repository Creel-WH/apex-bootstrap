prompt --application/shared_components/navigation/lists/ut_sample_链接列表
begin
--   Manifest
--     LIST: UT - Sample 链接列表
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
 p_id=>wwv_flow_imp.id(3336263356069235513)
,p_name=>unistr('UT - Sample \94FE\63A5\5217\8868')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336263571462235513)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Amet Incorporated'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-cloud'
,p_list_text_01=>'4'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336264004740235514)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Ridiculus LLP'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-comments'
,p_list_text_01=>'12'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336264399994235514)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Tristique LLC'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'4'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336264826727235514)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Cras Interdum Consulting'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-envelope'
,p_list_text_01=>'431'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336265180041235515)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Felis Associates'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-dashboard'
,p_list_text_01=>'Pending'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336265619592235517)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Eros Nec Corporation'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
