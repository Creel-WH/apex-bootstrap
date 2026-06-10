prompt --application/shared_components/navigation/lists/home_page_list
begin
--   Manifest
--     LIST: Home Page List
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
 p_id=>wwv_flow_imp.id(2246031060838131339)
,p_name=>'Home Page List'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2246031691473131340)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\57FA\7840\6863\6848')
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':USERAUTH <= 3'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4,5,6,7,8,6,10,6,12,13,17,18,5,3,7,7,7,9'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2246033301652131341)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>unistr('\6743\9650\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':USERAUTH <= 1'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15,16,19,20'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2246037232101131342)
,p_list_item_display_sequence=>220
,p_list_item_link_text=>unistr('\62A5\8868')
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'22,23,21,22,24'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2246038897843131343)
,p_list_item_display_sequence=>280
,p_list_item_link_text=>unistr('\56FE\8868')
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'3,11'
);
wwv_flow_imp.component_end;
end;
/
