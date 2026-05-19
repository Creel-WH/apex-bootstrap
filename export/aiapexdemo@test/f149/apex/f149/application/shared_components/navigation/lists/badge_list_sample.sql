prompt --application/shared_components/navigation/lists/badge_list_sample
begin
--   Manifest
--     LIST: Badge List Sample
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
 p_id=>wwv_flow_imp.id(2068275129765395527)
,p_name=>'Badge List Sample'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2068275289140395528)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Active Bugs'
,p_list_item_link_target=>'#'
,p_list_text_01=>'12'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2068275615041395528)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\5173\95EDd Bugs')
,p_list_item_link_target=>'#'
,p_list_text_01=>'31'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2068276139462395533)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Users'
,p_list_item_link_target=>'#'
,p_list_text_01=>'188'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2068276497261395533)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Projects'
,p_list_item_link_target=>'#'
,p_list_text_01=>'34'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2068278514984404342)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Milestones'
,p_list_item_link_target=>'#'
,p_list_text_01=>'3'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3336581794950410097)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Action Items'
,p_list_item_link_target=>'#'
,p_list_text_01=>'15'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
