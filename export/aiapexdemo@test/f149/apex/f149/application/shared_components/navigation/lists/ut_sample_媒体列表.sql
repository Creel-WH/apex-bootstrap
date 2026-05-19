prompt --application/shared_components/navigation/lists/ut_sample_媒体列表
begin
--   Manifest
--     LIST: UT - Sample 媒体列表
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
 p_id=>wwv_flow_imp.id(2051153283309476030)
,p_name=>unistr('UT - Sample \5A92\4F53\5217\8868')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2051153467757476031)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Amet Incorporated'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-cloud'
,p_list_text_01=>'Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat'
,p_list_text_02=>'4'
,p_list_text_03=>'ML'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2051153775283476032)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Ridiculus LLP'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-comments-o'
,p_list_text_01=>'Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero.'
,p_list_text_02=>'12'
,p_list_text_03=>'AR'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2051154039608476032)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Tristique LLC'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi.'
,p_list_text_02=>'4'
,p_list_text_03=>'SR'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2051154340900476032)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Cras Interdum Consulting'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci.'
,p_list_text_02=>'431'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2051154719249476032)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Felis Associates'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-dashboard'
,p_list_text_01=>'Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu.'
,p_list_text_02=>'Pending'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2051157953775506691)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Eros Nec Corporation'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-credit-card-terminal'
,p_list_text_01=>'Purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
