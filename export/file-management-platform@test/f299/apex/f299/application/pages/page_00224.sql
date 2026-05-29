prompt --application/pages/page_00224
begin
--   Manifest
--     PAGE: 00224
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>224
,p_name=>unistr('\6210\5458\8868\5355')
,p_alias=>unistr('\6210\5458\8868\53551')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6210\5458\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9793758151903284732)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11399076761248509704)
,p_plug_name=>unistr('\7528\6237-\89D2\8272\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UR.USER_ROLE_ID,',
'       U.USER_ID,',
'       U.NAME AS USER_NAME,',
'       UR.ROLE_ID,',
'       R.ROLE_NAME,',
'       UR.IS_ENABLE,',
'       UR.REMARK,',
'       UR.CREATED_BY,',
'       UR.CREATION_DATE,',
'       UR.UPDATED_BY,',
'       UR.UPDATE_DATE',
'FROM STS_USER_ROLE UR',
'         LEFT JOIN BASIC_USER U ON U.USER_ID = UR.USER_ID and u.tenant_id=:USER_TENANT and u.del_flag=0',
'    AND U.TENANT_ID = UR.TENANT_ID',
'         LEFT JOIN STS_ROLE R ON R.ROLE_ID = UR.ROLE_ID',
'    AND R.TENANT_ID = UR.TENANT_ID',
'WHERE UR.USER_ROLE_ID= :P224_USER_ROLE_ID',
'  and UR.TENANT_ID = :USER_TENANT;',
''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P224_USER_ROLE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11399084061647509716)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793498673220686489)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776616394269682998)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11399084061647509716)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776616795269682999)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11399084061647509716)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776617165529682999)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11399084061647509716)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P224_USER_ROLE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776617589728682999)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11399084061647509716)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P224_USER_ROLE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3775795090656430347)
,p_name=>'P224_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3775795179426430348)
,p_name=>'P224_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10776786138225694419)
,p_name=>'P224_USER_IDS'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11398722351078862031)
,p_name=>'P224_ROW_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11399078791818509712)
,p_name=>'P224_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_prompt=>unistr('\6210\5458')
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.NAME || '' - '' || A.JOB_NUMBER USER_NAME, A.USER_ID',
'FROM BASIC_USER A',
'WHERE A.IS_LEAVE = 0',
'  and A.DEL_FLAG = 0',
'  AND A.TENANT_ID = :USER_TENANT',
'  and not exists(',
'        select 1',
'        from STS_USER_ROLE B',
'        where B.TENANT_ID = :USER_TENANT',
'          and B.DEL_FLAG = 0',
'          and B.role_id = :P224_ROLE_ID',
'          and B.USER_ID = A.USER_ID',
'    )'))
,p_lov_cascade_parent_items=>'P224_ROLE_ID'
,p_ajax_items_to_submit=>'P224_ROLE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(9793614301921686549)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11399079606416509713)
,p_name=>'P224_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_prompt=>unistr('\5907\6CE8')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>75
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11399080035912509714)
,p_name=>'P224_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_prompt=>unistr('\662F\5426\542F\7528')
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>unistr('IS_ENABLE\FF08\662F\5426\542F\7528\FF09')
,p_lov=>'.'||wwv_flow_imp.id(9796113710683516011)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9793614301921686549)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11399080815691509714)
,p_name=>'P224_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11399081589540509715)
,p_name=>'P224_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11399743727462302424)
,p_name=>'P224_USER_ROLE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_source=>'USER_ROLE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11399743846892302425)
,p_name=>'P224_USER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_source=>'USER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11399743938164302426)
,p_name=>'P224_ROLE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_prompt=>unistr('\89D2\8272\540D\79F0')
,p_source=>'ROLE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ROLE_NAME, ROLE_ID',
'FROM STS_ROLE R',
'WHERE R.DEL_FLAG = 0',
'  AND R.TENANT_ID = :USER_TENANT',
'  and R.ROLE_ID = :P224_ROLE_ID',
''))
,p_field_template=>wwv_flow_imp.id(9793614301921686549)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11399744008025302427)
,p_name=>'P224_ROLE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_item_source_plug_id=>wwv_flow_imp.id(11399076761248509704)
,p_source=>'ROLE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776618883139683000)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776616394269682998)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776619384189683000)
,p_event_id=>wwv_flow_imp.id(3776618883139683000)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776619796877683000)
,p_name=>unistr('\65B0\589E\6570\636E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776617589728682999)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776620256024683000)
,p_event_id=>wwv_flow_imp.id(3776619796877683000)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65B0\589E\524D\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P224_ROLE_ID''))) {',
unistr('    alert(''\89D2\8272\4E0D\80FD\4E3A\7A7A\FF01'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P224_USER_ID''))) {',
unistr('    alert(''\7528\6237\4E0D\80FD\4E3A\7A7A\FF01'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776620752796683000)
,p_event_id=>wwv_flow_imp.id(3776619796877683000)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROW_COUNT NUMBER(10)    := 0;',
'    V_ERR_MSG   NVARCHAR2(2000);',
'    V_PASSWORD  NVARCHAR2(32) := JA_UTILS_PKG.ENCRYPT_ENC_AES256(''Aa135246..'');',
'    v_count     number(10)    := 0;',
'    V_USER_ID   number(20);',
'    V_ROLE_TYPE VARCHAR2(100);',
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE:2024/7/22 16:08',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE:\65B0\589E2.0'),
'     */',
'BEGIN',
'    SELECT NVL(MAX(ROLE_TYPE), ''VIEW_REPORT'')',
'      INTO V_ROLE_TYPE',
'      FROM STS_ROLE',
'     WHERE ROLE_ID = :P224_ROLE_ID',
'       AND TENANT_ID = :USER_TENANT',
'       AND DEL_FLAG = 0;',
'',
'    FOR C IN (SELECT USER_ID, NAME, JOB_NUMBER, MOBILE, IS_LEAVE, EMAIL, UNION_ID',
'              FROM BASIC_USER',
'              where DEL_FLAG = 0',
'                and TENANT_ID = :user_tenant',
'                and USER_ID IN (',
'                  SELECT to_number(DATA_VAL)',
'                  FROM JA_UTILS_PKG.SPLIT_STR(:P224_USER_ID, '':'')',
'              ))',
'',
'        LOOP',
'            select count(1)',
'            into v_count',
'            from STS_USER',
'            where TENANT_ID = :user_tenant',
'              and DEL_FLAG = 0',
'              and EXT_USER_ID = c.user_id;',
'            if v_count = 0 then',
'                insert into STS_USER(user_name, mobile, job_number, password, email, ext_user_id, union_id, is_leave, remark,',
'                                    del_flag, tenant_id, created_by, CREATION_DATE)',
'                values (c.NAME, c.MOBILE, c.JOB_NUMBER, V_PASSWORD, c.EMAIL, c.USER_ID, c.UNION_ID, c.IS_LEAVE, null, 0,',
'                        :USER_TENANT, :USER_ID, sysdate) RETURNING USER_ID INTO V_USER_ID;',
'',
'            end if;',
'            INSERT INTO STS_USER_ROLE(USER_ID, ROLE_ID, REMARK, IS_ENABLE, TENANT_ID, CREATED_BY, CREATION_DATE,',
'                                      USER_ROLE_TYPE)',
'            VALUES (c.USER_ID, :P224_ROLE_ID, :P224_REMARK, :P224_IS_ENABLE, :USER_TENANT, :USER_ID, SYSDATE,',
'                    V_ROLE_TYPE);',
'',
'            IF V_ROLE_TYPE = ''BUSINESS_ADMIN'' AND NVL(:P224_IS_ENABLE, 1) = 1 THEN',
'                UPDATE STS_SCOPE',
'                   SET UPDATED_BY = :MPF_USER_ID,',
'                       UPDATE_DATE = SYSDATE,',
'                       ROLE_ID = :P224_ROLE_ID,',
'                       SOURCE_USER_ID = :MPF_USER_ID',
'                 WHERE REFERENCE_TYPE = ''SYSTEM''',
'                   AND TO_CHAR(REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                   AND PERMISSIONS_TYPE = ''MANAGE''',
'                   AND RANGE_TYPE = ''USER''',
'                   AND RANGE_ID = NVL(C.UNION_ID, TO_CHAR(C.USER_ID));',
'',
'                IF SQL%ROWCOUNT = 0 THEN',
'                    INSERT INTO STS_SCOPE(REFERENCE_ID, REFERENCE_TYPE, USER_ID, SOURCE_USER_ID, PERMISSIONS_TYPE,',
'                                          ROLE_ID, CREATED_BY, CREATION_DATE, UPDATED_BY, UPDATE_DATE, RANGE_TYPE,',
'                                          RANGE_ID)',
'                    VALUES (TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')), ''SYSTEM'', :MPF_USER_ID, :MPF_USER_ID,',
'                            ''MANAGE'', :P224_ROLE_ID, :MPF_USER_ID, SYSDATE, :MPF_USER_ID, SYSDATE, ''USER'',',
'                            NVL(C.UNION_ID, TO_CHAR(C.USER_ID)));',
'                END IF;',
'            END IF;',
'',
'        END LOOP;',
'    SELECT COUNT(1)',
'      INTO V_ROW_COUNT',
'      FROM TABLE(JA_UTILS_PKG.SPLIT_STR(:P224_USER_ID, '':''));',
'    APEX_UTIL.SET_SESSION_STATE(''P224_ROW_COUNT'', V_ROW_COUNT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        rollback;',
'        APEX_UTIL.SET_SESSION_STATE(''P224_ROW_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''\7528\6237-\89D2\8272\7BA1\7406-\65B0\589E'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,'),
'                     :APP_NAME,:APP_ID,:APP_CODE);',
'END;'))
,p_attribute_02=>'P224_USER_ID,P224_REMARK,P224_IS_ENABLE,P224_ROLE_ID'
,p_attribute_03=>'P224_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337920348379122483)
,p_event_id=>wwv_flow_imp.id(3776619796877683000)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROW_COUNT  NUMBER(10)    := 0;',
'    V_ERR_MSG    NVARCHAR2(2000);',
'    V_PASSWORD   NVARCHAR2(32) := JA_UTILS_PKG.ENCRYPT_ENC_AES256(''Aa135246..'');',
'    V_COUNT      NUMBER(10)    := 0;',
'    V_USER_ID    NUMBER(20);',
'    V_NEW_USERS  NVARCHAR2(2000); --BY wxx 2025-04-27',
'    V_RESULT     VARCHAR2(4000);',
'    V_JSON       CLOB;',
'    V_ROLE_NAME  VARCHAR2(100);',
unistr('    INSERT_COUNT NUMBER        := 0; -- \65B0\589E\53D8\91CF\7528\4E8E\8BB0\5F55\63D2\5165\7684\884C\6570   --BY wxx 2025-04-28'),
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE:2024/7/22 16:08',
'     * MODIFY BY:WXX',
'     * MODIFY DATE:2025/4/27 14:37',
unistr('     * DESCRIBE:\65B0\589E2.0  \52A0\5165\64CD\4F5C\65E5\5FD7  wxx 2025-04-28\65B0\589E\53D8\91CF\7528\4E8E\8BB0\5F55\63D2\5165\7684\884C\6570'),
'     */',
'BEGIN',
unistr('    -- \65B0\589E\7528\6237\5230 STS_USER \8868\FF0C\786E\4FDD\4E0D\91CD\590D'),
'    FOR C IN (SELECT USER_ID, NAME, JOB_NUMBER, MOBILE, IS_LEAVE, EMAIL, UNION_ID',
'              FROM BASIC_USER',
'              WHERE DEL_FLAG = 0',
'                AND TENANT_ID = :user_tenant',
'                AND IS_LEAVE = 0',
'                AND USER_ID IN (SELECT to_number(DATA_VAL)',
'                                FROM JA_UTILS_PKG.SPLIT_STR(:P224_USER_ID, '':'')))',
'        LOOP',
unistr('            -- \68C0\67E5\7528\6237\662F\5426\5DF2\5B58\5728\4E8E STS_USER \8868\4E2D'),
'            SELECT COUNT(1)',
'            INTO v_count',
'            FROM STS_USER',
'            WHERE TENANT_ID = :user_tenant',
'              AND DEL_FLAG = 0',
'              AND EXT_USER_ID = c.user_id;',
'',
unistr('            -- \5982\679C\7528\6237\4E0D\5B58\5728\FF0C\5219\63D2\5165\5230 STS_USER \8868'),
'            IF v_count = 0 THEN',
'                INSERT INTO STS_USER(user_name, mobile, job_number, password, email, ext_user_id, union_id, is_leave,',
'                                     remark,',
'                                     del_flag, tenant_id, created_by, CREATION_DATE)',
'                VALUES (c.NAME, c.MOBILE, c.JOB_NUMBER, V_PASSWORD, c.EMAIL, c.USER_ID, c.UNION_ID, c.IS_LEAVE, NULL, 0,',
'                        :USER_TENANT, :USER_ID, SYSDATE)',
'                RETURNING USER_ID INTO V_USER_ID;',
'                END IF;',
unistr('            -- \63D2\5165\7528\6237\89D2\8272\5173\8054\8BB0\5F55'),
'            INSERT INTO STS_USER_ROLE(USER_ID, ROLE_ID, REMARK, IS_ENABLE, TENANT_ID, CREATED_BY, CREATION_DATE)',
'            VALUES (c.USER_ID, :P224_ROLE_ID, :P224_REMARK, :P224_IS_ENABLE, :USER_TENANT, :USER_ID, SYSDATE);',
unistr('                            INSERT_COUNT := INSERT_COUNT + 1; -- \8BB0\5F55\63D2\5165\7684\884C\6570  --BY wxx 2025-04-28'),
'        END LOOP;',
'',
unistr('    -- \83B7\53D6\5168\90E8\7528\6237'),
'SELECT LISTAGG(NAME || ''-'' || JOB_NUMBER , '','')',
'    INTO V_NEW_USERS',
'    FROM BASIC_USER',
'    WHERE DEL_FLAG = 0',
'      AND TENANT_ID = :user_tenant',
'      AND IS_LEAVE = 0',
'      AND USER_ID IN (SELECT to_number(DATA_VAL)',
'                      FROM JA_UTILS_PKG.SPLIT_STR(:P224_USER_ID, '':''));',
'',
unistr('--     \83B7\53D6\89D2\8272\540D\79F0'),
'    SELECT ROLE_NAME',
'    INTO V_ROLE_NAME',
'    FROM STS_ROLE',
'    WHERE DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT',
'      and ROLE_ID = :P224_ROLE_ID;',
'',
unistr('    -- \5199\5165\65E5\5FD7'),
'    V_JSON := ''{',
'        "current_name": "",',
'        "old_name": "",',
'        "new_name": "",',
'        "permission_type": "'' || V_ROLE_NAME || ''",',
'        "user_ids": " '' || V_NEW_USERS || '' ",',
'        "dept_ids": "",',
'        "range_content": ""',
'    }'';',
'    V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
'P_MODULE_CODE => ''PERMISSION'',',
'P_OPERATION_CODE => ''PER'',',
'P_BEHAVIOR_CODE => ''INSERT'',',
'P_ENTITY_ID => :P224_ROLE_ID,',
'P_EXTRA_PARAMS => V_JSON,',
'P_APP_ID => :APP_ID,',
'P_TENANT_ID => :USER_TENANT,',
'P_SYS_USER_ID => :MPF_USER_ID',
'                );',
unistr('     V_ROW_COUNT := INSERT_COUNT; -- \4F7F\7528INSERT_COUNT\6765\8BBE\7F6EV_ROW_COUNT\7684\503C'),
'    APEX_UTIL.SET_SESSION_STATE(''P224_ROW_COUNT'', V_ROW_COUNT);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P224_ROW_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''\7528\6237-\89D2\8272\7BA1\7406-\65B0\589E'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,'),
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P224_USER_ID,P224_REMARK,P224_IS_ENABLE,P224_ROLE_ID'
,p_attribute_03=>'P224_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776621274573683001)
,p_event_id=>wwv_flow_imp.id(3776619796877683000)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65B0\589E\540E\8FD4\56DE\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P224_ROW_COUNT'') > 0) {',
unistr('    alert(''\65B0\589E\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\65B0\589E\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776621835656683001)
,p_event_id=>wwv_flow_imp.id(3776619796877683000)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776622194230683001)
,p_name=>unistr('\4FEE\6539\6570\636E ')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776617165529682999)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776622646239683001)
,p_event_id=>wwv_flow_imp.id(3776622194230683001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FEE\6539\524D\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P224_ROLE_ID'').length == 0 ) {',
unistr('    alert(''\89D2\8272\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P224_USER_ID''))) {',
unistr('    alert(''\7528\6237\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776623153012683001)
,p_event_id=>wwv_flow_imp.id(3776622194230683001)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6267\884C\4FEE\6539')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_ERR_MSG NVARCHAR2(2000);',
'    V_ROW_COUNT NUMBER(20) := 0;',
'    V_MAIN_COUNT NUMBER(20) := 0;',
'    V_ROLE_TYPE VARCHAR2(100);',
'    V_ROLE_ID NUMBER(20);',
'    V_RANGE_ID VARCHAR2(256);',
'    /**',
'     * CREATE BY: wxx',
'     * CREATE DATE:2024/7/22 16:07 ',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE: P224 \7528\6237\89D2\8272\8868\5355\4FEE\6539\4FDD\5B58'),
'     */',
'BEGIN',
'',
'        UPDATE STS_USER_ROLE',
'        SET REMARK      = :P224_REMARK,',
'            IS_ENABLE   = :P224_IS_ENABLE,',
'            UPDATED_BY  = :USER_ID,',
'            UPDATE_DATE = SYSDATE',
'        WHERE USER_ROLE_ID = :P224_USER_ROLE_ID;',
'',
'        V_MAIN_COUNT := SQL%ROWCOUNT;',
'',
'        IF V_MAIN_COUNT > 0 THEN',
'            SELECT ur.ROLE_ID,',
'                   NVL(r.ROLE_TYPE, ''VIEW_REPORT''),',
'                   NVL(bu.UNION_ID, TO_CHAR(ur.USER_ID))',
'              INTO V_ROLE_ID, V_ROLE_TYPE, V_RANGE_ID',
'              FROM STS_USER_ROLE ur',
'                       LEFT JOIN STS_ROLE r',
'                                 ON r.ROLE_ID = ur.ROLE_ID',
'                                     AND r.TENANT_ID = ur.TENANT_ID',
'                       LEFT JOIN BASIC_USER bu',
'                                 ON bu.USER_ID = ur.USER_ID',
'                                     AND bu.TENANT_ID = ur.TENANT_ID',
'                                     AND NVL(bu.DEL_FLAG, 0) = 0',
'             WHERE ur.USER_ROLE_ID = :P224_USER_ROLE_ID',
'               AND ur.TENANT_ID = :USER_TENANT;',
'',
'            IF V_ROLE_TYPE = ''BUSINESS_ADMIN'' THEN',
'                IF NVL(:P224_IS_ENABLE, 0) = 1 THEN',
'                    UPDATE STS_SCOPE',
'                       SET UPDATED_BY = :MPF_USER_ID,',
'                           UPDATE_DATE = SYSDATE,',
'                           SOURCE_USER_ID = :MPF_USER_ID',
'                     WHERE REFERENCE_TYPE = ''SYSTEM''',
'                       AND TO_CHAR(REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                       AND PERMISSIONS_TYPE = ''MANAGE''',
'                       AND RANGE_TYPE = ''USER''',
'                       AND ROLE_ID = V_ROLE_ID',
'                       AND RANGE_ID = V_RANGE_ID;',
'',
'                    IF SQL%ROWCOUNT = 0 THEN',
'                        INSERT INTO STS_SCOPE(REFERENCE_ID, REFERENCE_TYPE, USER_ID, SOURCE_USER_ID, PERMISSIONS_TYPE,',
'                                              ROLE_ID, CREATED_BY, CREATION_DATE, UPDATED_BY, UPDATE_DATE, RANGE_TYPE,',
'                                              RANGE_ID)',
'                        VALUES (TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')), ''SYSTEM'', :MPF_USER_ID, :MPF_USER_ID,',
'                                ''MANAGE'', V_ROLE_ID, :MPF_USER_ID, SYSDATE, :MPF_USER_ID, SYSDATE, ''USER'', V_RANGE_ID);',
'                    END IF;',
'                ELSE',
'                    DELETE FROM STS_SCOPE',
'                     WHERE REFERENCE_TYPE = ''SYSTEM''',
'                       AND PERMISSIONS_TYPE = ''MANAGE''',
'                       AND RANGE_TYPE = ''USER''',
'                       AND ROLE_ID = V_ROLE_ID',
'                       AND RANGE_ID = V_RANGE_ID;',
'                END IF;',
'            END IF;',
'        END IF;',
'',
'   V_ROW_COUNT := V_MAIN_COUNT;',
'    COMMIT;',
'    APEX_UTIL.SET_SESSION_STATE(''P224_ROW_COUNT'', V_ROW_COUNT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P224_ROW_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\7528\6237 \89D2\8272\7BA1\7406-\4FEE\6539'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,'),
'                     :APP_NAME,:APP_ID,:APP_CODE);',
'END',
'',
';'))
,p_attribute_02=>'P224_USER_ROLE_ID,P224_REMARK,P224_IS_ENABLE'
,p_attribute_03=>'P224_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776623721186683001)
,p_event_id=>wwv_flow_imp.id(3776622194230683001)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FEE\6539\540E\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P224_ROW_COUNT'') > 0) {',
unistr('    alert(''\4FEE\6539\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\4FEE\6539\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776624216858683002)
,p_event_id=>wwv_flow_imp.id(3776622194230683001)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776624626285683002)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776625110245683002)
,p_event_id=>wwv_flow_imp.id(3776624626285683002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11399076761248509704)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776625486828683002)
,p_name=>unistr('\4FEE\6539\9690\85CFuser_id')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776617165529682999)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776625963486683002)
,p_event_id=>wwv_flow_imp.id(3776625486828683002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P224_USER_ID'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3776615789176682998)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11399076761248509704)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \7528\6237-\89D2\8272\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>452230251169577261
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3776618473025682999)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>452232935018577262
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3776615346267682998)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11399076761248509704)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \7528\6237-\89D2\8272\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>452229808260577261
);
wwv_flow_imp.component_end;
end;
/
