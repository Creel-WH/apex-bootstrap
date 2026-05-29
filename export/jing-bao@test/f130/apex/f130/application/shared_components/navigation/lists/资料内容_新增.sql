prompt --application/shared_components/navigation/lists/资料内容_新增
begin
--   Manifest
--     LIST: 资料内容-新增
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1880744288968626164)
,p_name=>unistr('\8D44\6599\5185\5BB9-\65B0\589E')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1880744554675626166)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\81EA\5B9A\4E49\94FE\63A5')
,p_list_item_link_target=>'f?p=&APP_ID.:271:&SESSION.::&DEBUG.::P271_KNOWLEDGE_ID:&P269_KNOWLEDGE_ID.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1880744868003626167)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\4E0A\4F20\672C\5730\6587\4EF6')
,p_list_item_link_target=>'f?p=&APP_ID.:272:&SESSION.::&DEBUG.::P272_KNOWLEDGE_ID:&P269_KNOWLEDGE_ID.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
