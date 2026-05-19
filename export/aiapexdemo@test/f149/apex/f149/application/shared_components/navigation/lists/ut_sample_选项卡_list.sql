prompt --application/shared_components/navigation/lists/ut_sample_选项卡_list
begin
--   Manifest
--     LIST: UT - Sample 选项卡 List
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
 p_id=>wwv_flow_imp.id(3716210753661024976)
,p_name=>unistr('UT - Sample \9009\9879\5361 List')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3716210952413024977)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Tab 1'
,p_list_item_link_target=>'javascript:void(0);'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1907'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3716211426651024977)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Tab 2'
,p_list_item_link_target=>'javascript:void(0);'
,p_list_item_icon=>'fa-heart-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3716211776690024977)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Tab 3'
,p_list_item_link_target=>'javascript:void(0);'
,p_list_item_icon=>'fa-cloud'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
