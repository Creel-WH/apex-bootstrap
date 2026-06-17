prompt --application/shared_components/navigation/lists/主页
begin
--   Manifest
--     LIST: 主页
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
 p_id=>wwv_flow_imp.id(3743329015092497232)
,p_name=>unistr('\4E3B\9875')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3743329204105497232)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\6587\4EF6\5E93')
,p_list_item_link_target=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 100,V(''ROLE_ID'') ,V(''USER_TENANT''),0) or STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 133,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3314369553934952359)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\6570\636E\5206\6790')
,p_list_item_link_target=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 150,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3743330088037497232)
,p_list_item_display_sequence=>99
,p_list_item_link_text=>unistr('\7CFB\7EDF\8BBE\7F6E')
,p_list_item_link_target=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 220,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
