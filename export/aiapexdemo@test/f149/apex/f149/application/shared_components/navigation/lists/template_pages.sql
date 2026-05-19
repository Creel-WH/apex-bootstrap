prompt --application/shared_components/navigation/lists/template_pages
begin
--   Manifest
--     LIST: Template - Pages
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
 p_id=>wwv_flow_imp.id(3348423510257851159)
,p_name=>'Template - Pages'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3348521800156634617)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Both Side Columns'
,p_list_item_link_target=>'#both_sides'
,p_list_item_icon=>'fa fa-columns'
,p_list_text_01=>'Organize complex pages with both the left side column and the collapsible right side column.'
,p_list_text_03=>'BS'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3348424105345851163)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\5DE6\4FA7\680F')
,p_list_item_link_target=>'f?p=&APP_ID.:1100:&SESSION.:left_side:&DEBUG.::::'
,p_list_item_icon=>'fa-layout-2col'
,p_list_text_01=>'Display search filters, charts, and other interactive widgets in a left-side display position.'
,p_list_text_03=>'LC'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3348426319374858014)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\767B\5F55\9875')
,p_list_item_link_target=>'f?p=&APP_ID.:1100:&SESSION.:other:&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_text_01=>'Provide an elegant user interface for an application log in page.'
,p_list_text_03=>'LP'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3348424852418851163)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Master Detail'
,p_list_item_link_target=>'f?p=&APP_ID.:1100:&SESSION.:master_detail:&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-sidebar-right'
,p_list_text_01=>'Provide a collapsible right side column and a title bar area which contains primary information.'
,p_list_text_03=>'MD'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3716164473570777781)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('Minimal (No \5BFC\822A)')
,p_list_item_link_target=>'f?p=&APP_ID.:1100:&SESSION.:other:&DEBUG.::::'
,p_list_item_icon=>'fa-layout-blank'
,p_list_text_01=>'Hide the navigation display on single-page applications or pages where navigation is not necessary.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3348425254812851164)
,p_list_item_display_sequence=>65
,p_list_item_link_text=>'Modal Dialog Page'
,p_list_item_link_target=>'f?p=&APP_ID.:1100:&SESSION.:dialog:&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header'
,p_list_text_01=>'Display commonly used forms, reports, and other components by loading this template as either modal or non-modal (pop-up) dialogs.'
,p_list_text_03=>'DP'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3716168624758823093)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Modal Dialog Examples'
,p_list_item_link_target=>'f?p=&APP_ID.:1910:&SESSION.:other:&DEBUG.::::'
,p_list_item_icon=>'fa-layout-modal-header'
,p_list_text_01=>'Get user input, display information, and speed up user interactions without changing context or leaving the current page.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3348424464876851163)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>unistr('\53F3\4FA7\680F')
,p_list_item_link_target=>'f?p=&APP_ID.:1100:&SESSION.:right_side:&DEBUG.::::'
,p_list_item_icon=>'fa-layout-2col'
,p_list_text_01=>'Display action-oriented controls such as buttons or lists in a collapsible right side display position.'
,p_list_text_03=>'RS'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3348423673188851160)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>unistr('\6807\51C6')
,p_list_item_link_target=>'f?p=&APP_ID.:1100:&SESSION.:standard:&DEBUG.::::'
,p_list_item_icon=>'fa-layout-nav-left-header-header'
,p_list_text_01=>'The default page template.'
,p_list_text_03=>'ST'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3716170519215842034)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>unistr('\5411\5BFC Modal Dialog')
,p_list_item_link_target=>'f?p=&APP_ID.:1208:&SESSION.:other:&DEBUG.::::'
,p_list_item_icon=>'fa-wizard'
,p_list_text_01=>'Simplify complex flows into smaller, more manageable steps.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
