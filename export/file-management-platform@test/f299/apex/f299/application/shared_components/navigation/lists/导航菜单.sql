prompt --application/shared_components/navigation/lists/导航菜单
begin
--   Manifest
--     LIST: 导航菜单
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(9793439562631686439)
,p_name=>unistr('\5BFC\822A\83DC\5355')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(9793739021194686858)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\9996\9875')
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3776518190659610271)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>unistr('\6587\4EF6\5E93')
,p_list_item_link_target=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 130,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'100'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3776519656231626154)
,p_list_item_display_sequence=>250
,p_list_item_link_text=>unistr('\6587\4EF6\5E93\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:120:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 120,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(3776518190659610271)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'120'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3776521357027628769)
,p_list_item_display_sequence=>260
,p_list_item_link_text=>unistr('\5206\7C7B\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 101,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(3776518190659610271)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'101,103'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3776524495763634047)
,p_list_item_display_sequence=>270
,p_list_item_link_text=>unistr('\66F4\65B0\53CD\9988')
,p_list_item_link_target=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 200,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'200'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3776526251019636676)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>unistr('\53CD\9988\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 201,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(3776524495763634047)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'201'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3347382571659855025)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>unistr('\6570\636E\5206\6790')
,p_list_item_link_target=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-database-search'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 150,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'150'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3347383771212861067)
,p_list_item_display_sequence=>340
,p_list_item_link_text=>unistr('\6570\636E\5BFC\51FA')
,p_list_item_link_target=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 151,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(3347382571659855025)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'151'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3347385022396864930)
,p_list_item_display_sequence=>350
,p_list_item_link_text=>unistr('\6570\636E\63A8\9001')
,p_list_item_link_target=>'f?p=&APP_ID.:152:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 152,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(3347382571659855025)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'152'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3776528076595645565)
,p_list_item_display_sequence=>999
,p_list_item_link_text=>unistr('\7CFB\7EDF\8BBE\7F6E')
,p_list_item_link_target=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 220,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'220'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3776530485091666500)
,p_list_item_display_sequence=>300
,p_list_item_link_text=>unistr('\6743\9650\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:221:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 221,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(3776528076595645565)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'221,223'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3776630074922733494)
,p_list_item_display_sequence=>310
,p_list_item_link_text=>unistr('\64CD\4F5C\65E5\5FD7')
,p_list_item_link_target=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 230,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(3776528076595645565)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'230'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3777319526919034282)
,p_list_item_display_sequence=>320
,p_list_item_link_text=>unistr('\57FA\7840\4FE1\606F\914D\7F6E')
,p_list_item_link_target=>'f?p=&APP_ID.:226:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 226,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_parent_list_item_id=>wwv_flow_imp.id(3776528076595645565)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'226'
);
wwv_flow_imp.component_end;
end;
/
