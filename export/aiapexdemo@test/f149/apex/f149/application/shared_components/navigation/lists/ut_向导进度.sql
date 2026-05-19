prompt --application/shared_components/navigation/lists/ut_向导进度
begin
--   Manifest
--     LIST: UT - 向导进度
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
 p_id=>wwv_flow_imp.id(1991789975259781493)
,p_name=>unistr('UT - \5411\5BFC\8FDB\5EA6')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1991790136812781493)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\6B65\9AA4 1')
,p_list_item_icon=>'fa-check-circle'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1991791928233785042)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>unistr('\6B65\9AA4 2')
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-cloud'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1991790499051781493)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\6B65\9AA4 3')
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-comment'
,p_list_item_current_type=>'ALWAYS'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1991792190258785042)
,p_list_item_display_sequence=>25
,p_list_item_link_text=>'Step 4'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-dashboard'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp.component_end;
end;
/
