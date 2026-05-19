prompt --application/pages/page_01915
begin
--   Manifest
--     PAGE: 01915
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
 p_id=>1915
,p_name=>unistr('\5185\8054\5F39\7A97')
,p_alias=>'INLINE-POPUP'
,p_step_title=>unistr('\5185\8054\5F39\7A97')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1822072806277536317)
,p_plug_name=>'Popup with Callout'
,p_region_name=>'popup_callout'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-callout:js-dialog-size600x400'
,p_region_attributes=>'data-parent-element="#btn_popup_callout"'
,p_plug_template=>wwv_flow_imp.id(1467007762335726542)
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>'This popup has a callout arrow that points to the button or element that this popup was opened from.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5687074616453024765)
,p_plug_name=>unistr('\6F14\793A')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5687077165191036866)
,p_plug_name=>'Auto Height Popup'
,p_region_name=>'dialog_auto'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-noOverlay:js-popup-callout:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(1467007762335726542)
,p_plug_display_sequence=>60
,p_plug_display_point=>'REGION_POSITION_04'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5687077195155036867)
,p_plug_name=>unistr('\53EF\6298\53E0 Content')
,p_parent_plug_id=>wwv_flow_imp.id(5687077165191036866)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vel ullamcorper metus. Duis interdum est eu accumsan lobortis. Quisque eu urna a odio feugiat ultrices ac id eros. Donec tristique nulla vitae tortor convallis, in commodo dui fermentu'
||'m. Donec aliquet odio non lacus hendrerit, id elementum augue vehicula. Quisque tincidunt ex mauris. Duis scelerisque congue libero, quis eleifend est vulputate nec. Suspendisse molestie tortor eget malesuada maximus. Aliquam pharetra sem vitae conse'
||'ctetur rhoncus. Ut pharetra, neque ut elementum sagittis, ex ipsum tempus urna, pharetra ultricies justo nunc vel diam. Ut tristique placerat justo, a ornare diam. Fusce at metus id turpis bibendum ornare. Maecenas gravida nibh eu nibh eleifend, ac s'
||'ollicitudin ante lobortis. Donec non erat feugiat, auctor nunc sed, laoreet orci.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5687078486180038022)
,p_plug_name=>'Fixed Height Popup'
,p_region_name=>'dialog_fixed'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(1467007762335726542)
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_04'
,p_plug_source=>'In its Template Options, uncheck "Auto Height" and pick a dialog size from the select list.'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10128912966060107866)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10128913232867110858)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>An <strong>inline popup</strong> displays a region on the current page within a small popup component. It is similar to a dialog, however does not have a header bar, title, or close button. </p>',
'<p class="dm-Hero-steps">Create a region, set its "Position" attribute to Inline Dialogs, and use <strong>Inline Popup</strong> as its Region template.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12978403277353443772)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2513101747170473402)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3156601119967118728)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4054001765906400637)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1640831582153106346)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5687074616453024765)
,p_button_name=>'OPEN_AUTO_SIZE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\5185\8054\5F39\7A97 with Auto Size')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1640832017750106349)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5687074616453024765)
,p_button_name=>'OPEN_FIXED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\5185\8054\5F39\7A97 with Fixed Size')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1822073094913536320)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5687074616453024765)
,p_button_name=>'OPEN_CALLOUT'
,p_button_static_id=>'btn_popup_callout'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\5185\8054\5F39\7A97 with Fixed Size')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1640832714193106352)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5687077165191036866)
,p_button_name=>'CANCEL_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'js-close-button'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1640834137299106356)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5687078486180038022)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'js-close-button'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1640833143656106353)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5687077165191036866)
,p_button_name=>'OK_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'js-close-button'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1640834476217106357)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5687078486180038022)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'js-close-button'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1822072998068536319)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1822072806277536317)
,p_button_name=>'OK_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'js-close-button'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1613688478417618016)
,p_name=>'Open Auto Size Popup'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1640831582153106346)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1613688638850618017)
,p_event_id=>wwv_flow_imp.id(1613688478417618016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5687077165191036866)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1613688733813618018)
,p_name=>'Open Fixed Popup'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1640832017750106349)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1613688847439618019)
,p_event_id=>wwv_flow_imp.id(1613688733813618018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5687078486180038022)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1613688874643618020)
,p_name=>unistr('\5173\95ED Auto Height Popup on \53D6\6D88')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1640832714193106352)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1613688979313618021)
,p_event_id=>wwv_flow_imp.id(1613688874643618020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5687077165191036866)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1280789224225428199)
,p_name=>unistr('\5173\95ED Auto Height Popup on Ok')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1640833143656106353)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1280789273294428200)
,p_event_id=>wwv_flow_imp.id(1280789224225428199)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5687077165191036866)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1613689095038618022)
,p_name=>unistr('\5173\95ED Fixed Popup on \53D6\6D88')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1640834137299106356)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1613689166364618023)
,p_event_id=>wwv_flow_imp.id(1613689095038618022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5687078486180038022)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1280789000272428197)
,p_name=>unistr('\5173\95ED Fixed Popup on Ok')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1640834476217106357)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1280789047151428198)
,p_event_id=>wwv_flow_imp.id(1280789000272428197)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5687078486180038022)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1822073221255536321)
,p_name=>unistr('Open \5185\8054\5F39\7A97 with Callout')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1822073094913536320)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1822073248649536322)
,p_event_id=>wwv_flow_imp.id(1822073221255536321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1822072806277536317)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1822073613035536325)
,p_name=>unistr('\5173\95ED Callout Popup')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1822072998068536319)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1822073725537536326)
,p_event_id=>wwv_flow_imp.id(1822073613035536325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1822072806277536317)
);
wwv_flow_imp.component_end;
end;
/
