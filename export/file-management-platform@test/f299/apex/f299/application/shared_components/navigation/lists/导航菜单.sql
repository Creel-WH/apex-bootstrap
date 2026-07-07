prompt --application/shared_components/navigation/lists/导航菜单
begin
--   Manifest
--     LIST: 导航菜单
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(9759983215396264186)
,p_name=>unistr('\5BFC\822A\83DC\5355')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9760282673959264605)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\9996\9875')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3743061843424188018)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>unistr('\6587\4EF6\5E93')
,p_list_item_link_target=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-folder-o'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return fmp_is_page_managed_visible(NVL(TO_NUMBER(NULLIF(V(''SYSTEM_ID''),'''')), 42), TO_NUMBER(V(''USER_TENANT'')), 133);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'100,133'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(910002270000000060)
,p_list_item_display_sequence=>999
,p_list_item_link_text=>unistr('\7BA1\7406\540E\53F0')
,p_list_item_link_target=>'f?p=&APP_ID.:227:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cogs'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return fmp_is_system_manager(NVL(TO_NUMBER(NULLIF(V(''SYSTEM_ID''),'''')), 42), V(''DIAN_USER_ID''), TO_NUMBER(V(''USER_TENANT'')));'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'227'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(910001490000000060)
,p_list_item_display_sequence=>997
,p_list_item_link_text=>unistr('\56DE\6536\7AD9')
,p_list_item_link_target=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-trash-o'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return fmp_is_page_managed_visible(NVL(TO_NUMBER(NULLIF(V(''SYSTEM_ID''),'''')), 42), TO_NUMBER(V(''USER_TENANT'')), 133);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'149'
);
wwv_flow_imp.component_end;
end;
/
