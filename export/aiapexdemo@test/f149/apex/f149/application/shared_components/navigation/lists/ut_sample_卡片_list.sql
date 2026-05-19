prompt --application/shared_components/navigation/lists/ut_sample_卡片_list
begin
--   Manifest
--     LIST: UT - Sample 卡片 List
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
 p_id=>wwv_flow_imp.id(3335961355366133536)
,p_name=>unistr('UT - Sample \5361\7247 List')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3335961540952133539)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Amet Incorporated Amet Incorporated'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-cloud'
,p_list_text_01=>'Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat'
,p_list_text_02=>'4 Widgets'
,p_list_text_03=>'AM'
,p_list_text_07=>'New York'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3335961971244133540)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Ridiculus LLP Ridiculus LLP'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-comments-o'
,p_list_text_01=>'Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero.'
,p_list_text_02=>'12 Widgets'
,p_list_text_03=>'RD'
,p_list_text_07=>'Reston'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3335962404979133540)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Tristique LLC Tristique LLC'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-calendar'
,p_list_text_01=>'Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi.'
,p_list_text_02=>'4 Widgets'
,p_list_text_03=>'TR'
,p_list_text_07=>'Columbus'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3335962799551133542)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Cras Interdum Consulting Cras Interdum Consulting'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-envelope-o'
,p_list_text_01=>'Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci.'
,p_list_text_02=>'431 Widgets'
,p_list_text_03=>'CI'
,p_list_text_07=>'Vienna'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
