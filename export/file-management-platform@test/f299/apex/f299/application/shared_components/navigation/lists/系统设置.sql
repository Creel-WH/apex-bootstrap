prompt --application/shared_components/navigation/lists/系统设置
begin
--   Manifest
--     LIST: 系统设置
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
 p_id=>wwv_flow_imp.id(7104223993947010982)
,p_name=>unistr('\7CFB\7EDF\8BBE\7F6E')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7104224194093010983)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\9875\9762\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return fmp_is_system_manager(NVL(TO_NUMBER(NULLIF(V(''SYSTEM_ID''),'''')), 1), V(''DIAN_USER_ID''), TO_NUMBER(V(''USER_TENANT'')));'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3743183513409379641)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\64CD\4F5C\65E5\5FD7')
,p_list_item_link_target=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return fmp_is_page_managed_visible(NVL(TO_NUMBER(NULLIF(V(''SYSTEM_ID''),'''')), 1), TO_NUMBER(V(''USER_TENANT'')), 230);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3744720169072509347)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\57FA\7840\4FE1\606F\914D\7F6E')
,p_list_item_link_target=>'f?p=&APP_ID.:226:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return fmp_is_page_managed_visible(NVL(TO_NUMBER(NULLIF(V(''SYSTEM_ID''),'''')), 1), TO_NUMBER(V(''USER_TENANT'')), 226);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
