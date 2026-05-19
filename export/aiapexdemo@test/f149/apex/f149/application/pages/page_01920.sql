prompt --application/pages/page_01920
begin
--   Manifest
--     PAGE: 01920
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_page.create_page(
 p_id=>1920
,p_name=>unistr('\6B65\9AA4 1')
,p_alias=>'STEP-1'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6B65\9AA4 1')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(2103433453022767827)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3716118406346346118)
,p_plug_name=>unistr('\5411\5BFC\8FDB\5EA6')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-WizardSteps--displayLabels'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(3716117771435346115)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(1991787562043735800)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3716118436780346118)
,p_plug_name=>unistr('\6B65\9AA4 1')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>This is step 1 of the sample modal dialog wizard.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3716118568015346118)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2108067559985920973)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3716120524941346129)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3716118568015346118)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3716120800951346129)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3716118568015346118)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2064467965495040934)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\4E00\6B65')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-chevron-right'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3716122435969346136)
,p_branch_name=>'Go To Page 1921'
,p_branch_action=>'f?p=&APP_ID.:1921:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3716120800951346129)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3716120892825346130)
,p_name=>unistr('\53D6\6D88 Dialog')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3716120524941346129)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3716121639443346134)
,p_event_id=>wwv_flow_imp.id(3716120892825346130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp.component_end;
end;
/
