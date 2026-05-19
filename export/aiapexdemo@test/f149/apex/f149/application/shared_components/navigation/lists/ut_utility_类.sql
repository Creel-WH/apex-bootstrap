prompt --application/shared_components/navigation/lists/ut_utility_类
begin
--   Manifest
--     LIST: UT - Utility 类
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
 p_id=>wwv_flow_imp.id(2144070737652459949)
,p_name=>unistr('UT - Utility \7C7B')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2144071464056459953)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\989C\8272\548C\72B6\6001\4FEE\9970\5668')
,p_list_item_link_target=>'f?p=&APP_ID.:6302:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-eyedropper'
,p_list_text_01=>'These color and status modifier classes enable you to add color to custom components.'
,p_list_text_06=>'u-color-13'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2144071916768459953)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\5E03\5C40\4FEE\9970\5668')
,p_list_item_link_target=>'f?p=&APP_ID.:6303:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-th'
,p_list_text_01=>'These CSS classes enable you to modify layout blocks by setting margins, paddings, and more.'
,p_list_text_06=>'u-color-13'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2144072239658459954)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\5185\5BB9\4FEE\9970\5668')
,p_list_item_link_target=>'f?p=&APP_ID.:6304:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-keyboard-o'
,p_list_text_01=>'These content modifiers enable you to control the appearance of text, headings, and paragraphs.'
,p_list_text_06=>'u-color-13'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
