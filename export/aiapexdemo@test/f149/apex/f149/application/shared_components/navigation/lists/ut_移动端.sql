prompt --application/shared_components/navigation/lists/ut_移动端
begin
--   Manifest
--     LIST: UT - 移动端
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
 p_id=>wwv_flow_imp.id(2038710527651582843)
,p_name=>unistr('UT - \79FB\52A8\7AEF')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2038711103877582849)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\9875\7709\548C\9875\811A')
,p_list_item_link_target=>'f?p=&APP_ID.:422:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-footer'
,p_list_text_06=>'u-color-3'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2038716629568630048)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>unistr('\79FB\52A8\8868\5355')
,p_list_item_link_target=>'f?p=&APP_ID.:423:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-forms'
,p_list_text_06=>'u-color-3'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2038711473542582850)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\89E6\6478\624B\52BF')
,p_list_item_link_target=>'f?p=&APP_ID.:424:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-hand-o-right'
,p_list_text_06=>'u-color-3'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
