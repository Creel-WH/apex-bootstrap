prompt --application/pages/page_00902
begin
--   Manifest
--     PAGE: 00902
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>902
,p_name=>unistr('\95EE\9898\767B\8BB0')
,p_alias=>unistr('\95EE\9898\767B\8BB0')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\95EE\9898\767B\8BB0')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(7951957775760819973)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8489017530526607701)
,p_plug_name=>unistr('\95EE\9898\767B\8BB0')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714838117168168554)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'JAS_APP_FEEDBACK'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7953762237669313452)
,p_plug_name=>unistr('\95EE\9898\622A\5C4F\663E\793A')
,p_parent_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714839572953168554)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'JAS_APP_FEEDBACK_IMG'
,p_query_where=>'flag = 0 and fb_id =:p902_fb_id'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P902_FB_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(7953762324466313453)
,p_region_id=>wwv_flow_imp.id(7953762237669313452)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FB_IMG'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'FB_IMG_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(7953763141972313461)
,p_card_id=>wwv_flow_imp.id(7953762324466313453)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>unistr('\5220\9664')
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:904:&SESSION.::&DEBUG.::P904_FB_IMG_ID:&FB_IMG_ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7953762413260313454)
,p_plug_name=>unistr('\4E0A\4F20\7814\53D1\622A\5C4F')
,p_parent_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714839572953168554)
,p_plug_display_sequence=>200
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':USER_JOB_NUMBER in (''JA015845'',''JA043586'',''JA057965'',''JA045660'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'TABLE',
  'attribute_02', 'JAS_APP_FEEDBACK_IMG',
  'attribute_03', 'FILE_NAME',
  'attribute_04', 'MIME_TYPE',
  'attribute_05', 'FB_IMG',
  'attribute_07', 'STYLE4',
  'attribute_08', '500px',
  'attribute_09', '200px',
  'attribute_10', '10',
  'attribute_11', '5',
  'attribute_13', 'image/*',
  'attribute_15', 'NORMAL',
  'attribute_16', 'true',
  'attribute_17', 'true',
  'attribute_18', 'false',
  'attribute_19', 'false',
  'attribute_20', 'true',
  'attribute_21', 'FB_IMG_ID',
  'attribute_22', 'false')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7953762575493313455)
,p_plug_name=>unistr('\7814\53D1\622A\5C4F\663E\793A')
,p_parent_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714839572953168554)
,p_plug_display_sequence=>210
,p_plug_new_grid_row=>false
,p_query_type=>'TABLE'
,p_query_table=>'JAS_APP_FEEDBACK_IMG'
,p_query_where=>'flag = 1 and fb_id =:p902_fb_id'
,p_include_rowid_column=>false
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P902_FB_ID'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':USER_JOB_NUMBER in (''JA015845'',''JA043586'',''JA057965'',''JA045660'')'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(7953762606895313456)
,p_region_id=>wwv_flow_imp.id(7953762575493313455)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
,p_media_source_type=>'BLOB'
,p_media_blob_column_name=>'FB_IMG'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
,p_pk1_column_name=>'FB_IMG_ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(7953763054352313460)
,p_card_id=>wwv_flow_imp.id(7953762606895313456)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>unistr('\5220\9664')
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:904:&SESSION.::&DEBUG.::P904_FB_IMG_ID:&FB_IMG_ID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8284227657421077660)
,p_plug_name=>unistr('IT\90E8\95E8\586B\5199')
,p_parent_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714839572953168554)
,p_plug_display_sequence=>130
,p_plug_source=>unistr('<center><font size = 3>\2014\2014\2014\2014\2014\2014\2014\2014\2014\2014  IT\90E8\95E8\586B\5199  \2014\2014\2014\2014\2014\2014\2014\2014\2014\2014</font></center>')
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':USER_JOB_NUMBER in (''JA043586'',''JA057965'',''JA045660'')'
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8284227750703077661)
,p_plug_name=>unistr('\4E1A\52A1\90E8\95E8\586B\5199')
,p_parent_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714839572953168554)
,p_plug_display_sequence=>10
,p_plug_source=>unistr('<center><font size = 3>\2014\2014\2014\2014\2014\2014\2014\2014\2014\2014  \4E1A\52A1\90E8\95E8\586B\5199  \2014\2014\2014\2014\2014\2014\2014\2014\2014\2014</font></center>')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8358823570235899349)
,p_plug_name=>unistr('\4E0A\4F20\95EE\9898\622A\5C4F')
,p_parent_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714839572953168554)
,p_plug_display_sequence=>110
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'TABLE',
  'attribute_02', 'JAS_APP_FEEDBACK_IMG',
  'attribute_03', 'FILE_NAME',
  'attribute_04', 'MIME_TYPE',
  'attribute_05', 'FB_IMG',
  'attribute_07', 'STYLE4',
  'attribute_08', '500px',
  'attribute_09', '200px',
  'attribute_10', '10',
  'attribute_11', '5',
  'attribute_13', 'image/*',
  'attribute_15', 'NORMAL',
  'attribute_16', 'true',
  'attribute_17', 'true',
  'attribute_18', 'false',
  'attribute_19', 'false',
  'attribute_20', 'true',
  'attribute_21', 'FB_IMG_ID',
  'attribute_22', 'false')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8489026987262607719)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714861085952168561)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8284210865378049512)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8489026987262607719)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8284211314947049512)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8489026987262607719)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P902_DETAIL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8284211712059049512)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(8489026987262607719)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5E94\7528\66F4\6539')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P902_DETAIL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8284212040818049512)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(8489026987262607719)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P902_DETAIL'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6459279294584189583)
,p_name=>'P902_REQ_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_prompt=>unistr('\9700\6C42\7C7B\578B')
,p_source=>'REQ_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>unistr('REQ_TYPE\FF08\9700\6C42\7C7B\578B\FF09')
,p_lov=>'.'||wwv_flow_imp.id(6389289610231041672)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8284227215670077655)
,p_name=>'P902_ASSIGNEDTO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_prompt=>unistr('\95EE\9898\8D1F\8D23\4EBA')
,p_source=>'ASSIGNEDTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME ||''-''||JOB_NUMBER key, NAME  val',
'FROM BASIC_USER',
'WHERE TENANT_ID = :USER_TENANT',
'  and DEL_FLAG = 0;'))
,p_cSize=>60
,p_cMaxlength=>32
,p_display_when=>':USER_JOB_NUMBER in (''JA015845'',''JA043586'',''JA057965'',''JA045660'')'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8284227239736077656)
,p_name=>'P902_ESTIMATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_prompt=>unistr('\9884\8BA1\5B8C\6210\65F6\95F4')
,p_source=>'ESTIMATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>60
,p_begin_on_new_line=>'N'
,p_display_when=>':USER_JOB_NUMBER in (''JA015845'',''JA043586'',''JA057965'',''JA045660'')'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8284227453085077658)
,p_name=>'P902_RESULT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_prompt=>unistr('\95EE\9898\5904\7406\7ED3\679C')
,p_source=>'RESULT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_display_when=>':USER_JOB_NUMBER in (''JA015845'',''JA043586'',''JA057965'',''JA045660'')'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8284227571722077659)
,p_name=>'P902_ACTUAL_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_prompt=>unistr('\5B9E\9645\5B8C\6210\65F6\95F4')
,p_source=>'ACTUAL_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>60
,p_begin_on_new_line=>'N'
,p_display_when=>':USER_JOB_NUMBER in (''JA015845'',''JA043586'',''JA057965'',''JA045660'')'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8489018467677607704)
,p_name=>'P902_FB_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_source=>'FB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8489018865900607711)
,p_name=>'P902_FB_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_default=>'select sysdate from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\767B\8BB0\65E5\671F')
,p_source=>'FB_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8489019286106607715)
,p_name=>'P902_REQUESTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_default=>':USER_JOB_NUMBER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\767B\8BB0\4EBA')
,p_source=>'REQUESTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select NAME ||''-''||JOB_NUMBER key,JOB_NUMBER val from PM_USER where DEL_FLAG=0 and  TENANT_ID=:USER_TENANT ;'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8489019727674607716)
,p_name=>'P902_APP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_default=>'select APPLICATION_NAME from apex_applications where APPLICATION_ID =:APP_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5E94\7528\7A0B\5E8F')
,p_source=>'APP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select APPLICATION_NAME d, APPLICATION_ID r from apex_applications where APPLICATION_ID =:APP_ID'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8489020107462607716)
,p_name=>'P902_PAGE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_prompt=>unistr('\529F\80FD\9875\9762')
,p_source=>'PAGE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select  page_name as d, page_id as r from apex_application_pages where application_id = :APP_ID'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8489020475446607716)
,p_name=>'P902_DETAIL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_prompt=>unistr('\95EE\9898\63CF\8FF0')
,p_source=>'DETAIL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8489020934825607716)
,p_name=>'P902_SEVERITY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_prompt=>unistr('\5F71\54CD\7A0B\5EA6')
,p_source=>'SEVERITY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:\4E25\91CD;\4E25\91CD,\4E00\822C;\4E00\822C,\8F7B\5FAE;\8F7B\5FAE')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8489022455476607717)
,p_name=>'P902_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_default=>unistr('\5DF2\63D0\4EA4')
,p_prompt=>unistr('\72B6\6001')
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:\5DF2\63D0\4EA4;\5DF2\63D0\4EA4,\5904\7406\4E2D;\5904\7406\4E2D,\5DF2\89E3\51B3;\5DF2\89E3\51B3,\5DF2\5173\95ED;\5DF2\5173\95ED')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>':USER_JOB_NUMBER in (''JA015845'',''JA043586'',''JA057965'',''JA045660'')'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8489023264897607717)
,p_name=>'P902_COMM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_item_source_plug_id=>wwv_flow_imp.id(8489017530526607701)
,p_prompt=>unistr('\8FC7\7A0B\8BB0\5F55')
,p_source=>'COMM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>4000
,p_cHeight=>4
,p_display_when=>':USER_JOB_NUMBER in (''JA015845'',''JA043586'',''JA057965'',''JA045660'')'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(8284212757275049514)
,p_computation_sequence=>10
,p_computation_item=>'P902_FB_ID'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select SEQ_JAS_APP_FEEDBACK.nextval from dual'
,p_compute_when=>'P902_FB_ID'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8284213488743049514)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(8284210865378049512)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8284214005288049514)
,p_event_id=>wwv_flow_imp.id(8284213488743049514)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(8284214383143049514)
,p_name=>'upload_img_u'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(8358823570235899349)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-complete'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(8284214887612049515)
,p_event_id=>wwv_flow_imp.id(8284214383143049514)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update jas_app_feedback_img set fb_id = :P902_fb_id, flag = 0 where fb_id is null;'
,p_attribute_02=>'P902_FB_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7953762745359313457)
,p_name=>'upload_img_d'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(7953762413260313454)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-complete'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7953762831555313458)
,p_event_id=>wwv_flow_imp.id(7953762745359313457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update jas_app_feedback_img set fb_id = :P902_fb_id, flag = 1 where fb_id is null;'
,p_attribute_02=>'P902_FB_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8284209414127049511)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(8489017530526607701)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \95EE\9898\767B\8BB0')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>205430289755279982
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8284213043841049514)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>205433919469279985
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8284208967352049510)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(8489017530526607701)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \95EE\9898\767B\8BB0')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>205429842980279981
);
wwv_flow_imp.component_end;
end;
/
