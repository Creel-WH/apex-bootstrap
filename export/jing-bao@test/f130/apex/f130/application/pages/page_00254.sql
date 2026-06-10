prompt --application/pages/page_00254
begin
--   Manifest
--     PAGE: 00254
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_page.create_page(
 p_id=>254
,p_name=>unistr('\70B9\68C0\9879-\7F16\8F91')
,p_alias=>unistr('\70B9\68C0\9879-\7F16\8F91')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\70B9\68C0\9879-\7F16\8F91')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \4E0A\4F20\6570\91CF\9009\62E9\5668'),
'$("#P254_IMAGE_NUM").attr("type", "number");',
unistr('$("#P254_IMAGE_NUM").attr("min", 1);         // \8BBE\7F6E\6700\5C0F\503C'),
unistr('$("#P254_IMAGE_NUM").attr("max", 9);        // \8BBE\7F6E\6700\5927\503C'),
''))
,p_step_template=>wwv_flow_imp.id(2302004642586836182)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'650'
,p_dialog_max_width=>'650'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2681342247164123982)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302027572475836194)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2687022362069843545)
,p_plug_name=>unistr('\8868\5355\9879')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FORM_ITEM_ID,',
'    --    FORM_ID,',
'       NAME,',
'       TYPE,',
'    --    NUMBER_VALUE_MAX,',
'    --    NUMBER_VALUE_MIN,',
'       TO_CHAR(NUMBER_VALUE_MAX, ''FM99999990.099999999'') NUMBER_VALUE_MAX,',
'       TO_CHAR(NUMBER_VALUE_MIN, ''FM99999990.099999999'') NUMBER_VALUE_MIN,',
'       NUMBER_UNIT,',
'       ABNORMAL_SHOW,',
'       IMAGE_SHOW,',
'       IMAGE_NUM,',
'       SORT_NUM',
'from CHECK_FORM_ITEM where TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2409183009697396345)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2681342247164123982)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2409183377273396346)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2681342247164123982)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409184041173396346)
,p_name=>'P254_FORM_ITEM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_source_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_source=>'FORM_ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409184512656396346)
,p_name=>'P254_FORM_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_source_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_prompt=>unistr('\9879\76EE\63CF\8FF0\FF1A')
,p_placeholder=>unistr('\8BF7\8F93\5165')
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>512
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409184900136396347)
,p_name=>'P254_ABNORMAL_SHOW'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_source_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_default=>'1'
,p_prompt=>unistr('\5F02\5E38\8BBE\7F6E\FF1A')
,p_source=>'ABNORMAL_SHOW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\9690\85CF;0,\663E\793A;1')
,p_colspan=>11
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>unistr('\5907\6CE8\FF1A\7528\4E8E\63A7\5236\5F53\524D\70B9\68C0\9879\5728\70B9\68C0\8FC7\7A0B\4E2D\662F\5426\53EF\8BBE\7F6E\70B9\68C0\72B6\6001')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409185293555396348)
,p_name=>'P254_IMAGE_SHOW'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_source_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_default=>'1'
,p_prompt=>unistr('\662F\5426\4E0A\4F20\56FE\7247\FF1A')
,p_source=>'IMAGE_SHOW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:\662F;1,\5426;0')
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>unistr('\5907\6CE8\FF1A\7528\4E8E\63A7\5236\5F53\524D\70B9\68C0\9879\5728\70B9\68C0\8FC7\7A0B\4E2D\662F\5426\652F\6301\4E0A\4F20\56FE\7247')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409185729965396348)
,p_name=>'P254_IMAGE_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_source_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_default=>'1'
,p_prompt=>unistr('\4E0A\4F20\6570\91CF\FF1A')
,p_source=>'IMAGE_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'numeric')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409186122803396348)
,p_name=>'P254_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_source_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_default=>unistr('\8BF7\9009\62E9')
,p_prompt=>unistr('\70B9\68C0\65B9\5F0F\FF1A')
,p_source=>'TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:\6570\503C;NUMBER,\6587\672C;TEXT,OK/NG;COMMON')
,p_cHeight=>1
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409186539497396348)
,p_name=>'P254_NUMBER_UNIT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_source_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_prompt=>unistr('\6570\503C\5355\4F4D\FF1A')
,p_placeholder=>unistr('\8BF7\8F93\5165')
,p_source=>'NUMBER_UNIT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_colspan=>11
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409186919817396348)
,p_name=>'P254_NUMBER_VALUE_MIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_source_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_prompt=>unistr('\6570\503C\533A\95F4:')
,p_placeholder=>unistr('\8BF7\8F93\5165\6700\5C0F\503C')
,p_source=>'NUMBER_VALUE_MIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>19
,p_colspan=>5
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409187318388396349)
,p_name=>'P254_NUMBER_VALUE_MAX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_source_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_prompt=>'~'
,p_placeholder=>unistr('\8BF7\8F93\5165\6700\5927\503C')
,p_source=>'NUMBER_VALUE_MAX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>19
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_column=>7
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409187708555396349)
,p_name=>'P254_SORT_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_item_source_plug_id=>wwv_flow_imp.id(2687022362069843545)
,p_source=>'SORT_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409191462959396359)
,p_name=>'P254_FORM_ID'
,p_item_sequence=>10
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409191892127396360)
,p_name=>'P254_ROW_COUNT'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2409192320204396360)
,p_name=>unistr('\5173\95EDcanvas')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2409183009697396345)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409192803502396360)
,p_event_id=>wwv_flow_imp.id(2409192320204396360)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2409195001043396361)
,p_name=>unistr('\4FDD\5B58\6570\636E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2409183377273396346)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409196526011396362)
,p_event_id=>wwv_flow_imp.id(2409195001043396361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53C2\6570\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P254_FORM_NAME''))) {',
unistr('    alert("\8BF7\8F93\5165\70B9\68C0\9879\76EE\FF01");'),
'    $(''#P254_FORM_NAME'').focus();',
'    return false;',
'}',
'',
'if ($v(''P254_TYPE'') == ''NUMBER'') {',
'    if (utils.checkNull($v(''P254_NUMBER_UNIT''))) {',
unistr('        alert("\8BF7\8F93\5165\6570\503C\5355\4F4D\FF01");'),
'        $(''#P254_NUMBER_UNIT'').focus();',
'        return false;',
'    }',
'',
'    if (utils.checkNull($v(''P254_NUMBER_VALUE_MIN''))) {',
unistr('        alert("\8BF7\8F93\5165\6700\5C0F\503C\6570\503C\533A\95F4\FF01");'),
'        $(''#P254_NUMBER_VALUE_MIN'').focus();',
'        return false;',
'    } else {',
'        var val_min = $v(''P254_NUMBER_VALUE_MIN'').replaceAll(''+'', '''');',
'        if (Object.is(parseFloat(val_min), NaN) == true || val_min > 1000000000 || val_min < -1000000000) {',
unistr('            alert(''\8BF7\8F93\5165\6B63\786E\7684\6570\503C\533A\95F4,\6700\5927\4E3A\4E5D\4F4D\6574\6570,\6700\5C0F\8D1F\4E5D\4F4D\6574\6570,\652F\6301\5C0F\6570'');'),
'            return false;',
'        }',
'        $s(''P254_NUMBER_VALUE_MIN'', val_min);',
'    }',
'',
'    if (utils.checkNull($v(''P254_NUMBER_VALUE_MAX''))) {',
unistr('        alert("\8BF7\8F93\5165\6700\5927\503C\6570\503C\533A\95F4\FF01");'),
'        $(''#P254_NUMBER_VALUE_MAX'').focus();',
'        return false;',
'    } else {',
'        var val_max = $v(''P254_NUMBER_VALUE_MAX'').replaceAll(''+'', '''');',
'        if (Object.is(parseFloat(val_max), NaN) == true || val_max > 1000000000 || val_max < -1000000000) {',
unistr('            alert(''\8BF7\8F93\5165\6B63\786E\7684\6570\503C\533A\95F4,\6700\5927\4E3A\4E5D\4F4D\6574\6570,\6700\5C0F\8D1F\4E5D\4F4D\6574\6570,\652F\6301\5C0F\6570'');'),
'            return false;',
'        }',
'        $s(''P254_NUMBER_VALUE_MAX'', val_max);',
'    }',
'    if (parseFloat($v(''P254_NUMBER_VALUE_MAX'')) < parseFloat($v(''P254_NUMBER_VALUE_MIN''))) {',
unistr('        alert("\6700\5C0F\503C\5927\4E8E\6700\5927\503C\FF0C\8BF7\91CD\65B0\8F93\5165\FF01");'),
'        return false;',
'    }',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409197036865396362)
,p_event_id=>wwv_flow_imp.id(2409195001043396361)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg   nvarchar2(2000);',
'    v_row_count number(20) := 0;',
'    v_count     number(20) := 0;',
'begin',
'',
'    if :P254_FORM_ITEM_ID is null then',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM_ITEM',
'        where NAME = :P254_FORM_NAME',
'          and FORM_ID = :P254_FORM_ID',
'          and TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID;',
'        if v_count = 0 then',
'            insert into CHECK_FORM_ITEM(created_by, creation_date, updated_by, updated_date, remark,',
'                                        tenant_id,BASE_DEPT_ID, form_id, name, type, number_value_max, number_value_min,',
'                                        number_unit, abnormal_show, image_show, image_num)',
'            values (:USER_ID, sysdate, :USER_ID, sysdate, null,',
'                    :USERTENANT,:BASE_DEPT_ID, :P254_FORM_ID, :P254_FORM_NAME, :P254_TYPE, :P254_NUMBER_VALUE_MAX, :P254_NUMBER_VALUE_MIN,',
'                    :P254_NUMBER_UNIT,',
'                    :P254_ABNORMAL_SHOW, :P254_IMAGE_SHOW, :P254_IMAGE_NUM);',
'            v_row_count := SQL%ROWCOUNT;',
'        else',
'            v_row_count := -1;',
'        end if;',
'    else',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM_ITEM',
'        where NAME = :P254_FORM_NAME',
'          and FORM_ITEM_ID != :P254_FORM_ITEM_ID',
'          and FORM_ID = :P254_FORM_ID',
'          and TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID= :BASE_DEPT_ID;',
'        if v_count = 0 then',
'            update CHECK_FORM_ITEM',
'            set UPDATED_BY=:USER_ID,',
'                UPDATED_DATE=SYSDATE,',
'                NAME=:P254_FORM_NAME,',
'                TYPE=:P254_TYPE,',
'                NUMBER_VALUE_MAX=:P254_NUMBER_VALUE_MAX,',
'                NUMBER_VALUE_MIN=:P254_NUMBER_VALUE_MIN,',
'                NUMBER_UNIT=:P254_NUMBER_UNIT,',
'                ABNORMAL_SHOW=:P254_ABNORMAL_SHOW,',
'                IMAGE_SHOW=:P254_IMAGE_SHOW,',
'                IMAGE_NUM=:P254_IMAGE_NUM',
'            where FORM_ITEM_ID = :P254_FORM_ITEM_ID;',
'            v_row_count := SQL%ROWCOUNT;',
'        else',
'            v_row_count := -1;',
'        end if;',
'    end if;',
'',
'    apex_util.set_session_state(''P254_ROW_COUNT'', v_row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P254_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end ;',
''))
,p_attribute_02=>'P254_FORM_NAME,P254_ABNORMAL_SHOW,P254_IMAGE_SHOW,P254_IMAGE_NUM,P254_TYPE,P254_NUMBER_UNIT,P254_NUMBER_VALUE_MIN,P254_NUMBER_VALUE_MAX,P254_FORM_ID,P254_FORM_ITEM_ID'
,p_attribute_03=>'P254_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409195444681396361)
,p_event_id=>wwv_flow_imp.id(2409195001043396361)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P254_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else if ($v(''P254_ROW_COUNT'') == -1) {',
unistr('    alert(''\70B9\68C0\9879\76EE\91CD\590D'');'),
'    return false;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409196033710396362)
,p_event_id=>wwv_flow_imp.id(2409195001043396361)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2409194086594396361)
,p_name=>unistr('\9650\5236\6570\5B57')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_IMAGE_NUM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409194619024396361)
,p_event_id=>wwv_flow_imp.id(2409194086594396361)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P254_IMAGE_NUM'')<1) {',
' $s(''P254_IMAGE_NUM'',1)',
'} else if ($v(''P254_IMAGE_NUM'')>9) {',
' $s(''P254_IMAGE_NUM'',9)',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2409193161952396360)
,p_name=>unistr('\5207\6362\70B9\51FB\65B9\5F0F')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409193714028396361)
,p_event_id=>wwv_flow_imp.id(2409193161952396360)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P254_TYPE'') == ''NUMBER'') {',
'    $x_Show(''P254_NUMBER_UNIT'');',
'    $x_Show(''P254_NUMBER_VALUE_MAX'');',
'    $x_Show(''P254_NUMBER_VALUE_MIN'');',
'} else {',
'    $x_Hide(''P254_NUMBER_UNIT'');',
'    $x_Hide(''P254_NUMBER_VALUE_MAX'');',
'    $x_Hide(''P254_NUMBER_VALUE_MIN'');',
'    $s(''P254_NUMBER_UNIT'','''');',
'    $s(''P254_NUMBER_VALUE_MAX'','''');',
'    $s(''P254_NUMBER_VALUE_MIN'','''');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2201001985004291400)
,p_name=>unistr('\5207\6362\56FE\7247\5C55\793A')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P254_IMAGE_SHOW'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2201002123833291401)
,p_event_id=>wwv_flow_imp.id(2201001985004291400)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P254_IMAGE_SHOW'') == 0) {',
'    $x_Hide(''P254_IMAGE_NUM'');',
'    $s(''P254_IMAGE_NUM'', 1);',
'} else {',
'    $x_Show(''P254_IMAGE_NUM'');',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2409191100648396350)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2687022362069843545)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \70B9\68C0\9879\65B0\589E')
,p_internal_uid=>283627960077611494
);
wwv_flow_imp.component_end;
end;
/
