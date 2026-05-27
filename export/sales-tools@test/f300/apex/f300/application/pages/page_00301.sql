prompt --application/pages/page_00301
begin
--   Manifest
--     PAGE: 00301
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>301
,p_name=>unistr('\7EF4\62A4\5206\5E73\53F0')
,p_alias=>'CREATE-SUB-PLATFORM'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\7EF4\62A4\5206\5E73\53F0')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9793758151903284732)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-nav,',
'#t_Body_nav,',
'#t_TreeNav,',
'#t_Button_navControl {',
'    display: none !important;',
'}',
'.t-PageBody .t-Body-main {',
'    margin-left: 0 !important;',
'}',
'.t-Dialog-page .t-Body-content,',
'.t-Dialog-page .t-Body-contentInner {',
'    overflow-y: auto;',
'    overflow-x: hidden;',
'}',
'.p301-form-region {',
'    max-width: 760px;',
'}',
'.p301-form-region .apex-item-popup-lov,',
'.p301-form-region .apex-item-popup-lov input {',
'    max-width: 100%;',
'}',
'#P301_ADMIN_IDS_CONTAINER .apex-item-group,',
'#P301_ADMIN_IDS_CONTAINER .apex-item-popup-lov {',
'    min-height: 40px;',
'    height: auto;',
'    max-height: none;',
'    overflow-y: visible;',
'    overflow-x: hidden;',
'}',
'#P301_ADMIN_IDS_CONTAINER .apex-item-group *,',
'#P301_ADMIN_IDS_CONTAINER .apex-item-popup-lov * {',
'    max-width: 100%;',
'}',
'.t-Dialog-page .ui-dialog-content,',
'.t-Dialog-page .t-Dialog-body {',
'    height: 100% !important;',
'}',
'.a-PopupLOV-results {',
'    max-height: 260px;',
'    overflow-y: auto;',
'}',
'.a-PopupLOV-search {',
'    min-height: 40px;',
'}',
'.p301-help {',
'    color: #6b7280;',
'    font-size: 14px;',
'    margin-top: -4px;',
'    margin-bottom: 16px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'720'
,p_dialog_height=>'560'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13030101000000000002)
,p_plug_name=>unistr('\7EF4\62A4\5206\5E73\53F0')
,p_region_css_classes=>'p301-form-region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>20
,p_plug_source=>unistr('\8BF7\586B\5199\5E73\53F0\540D\79F0\5E76\9009\62E9\4E00\4E2A\6216\591A\4E2A\4E1A\52A1\7BA1\7406\5458\3002')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13030101000000000003)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13030101000000000002)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13030101000000000004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(13030101000000000002)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13030101000000000009)
,p_name=>'P301_SYSTEM_ID'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(13030101000000000002)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13030101000000000005)
,p_name=>'P301_SYSTEM_NAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(13030101000000000002)
,p_prompt=>unistr('\5E73\53F0\540D\79F0')
,p_placeholder=>unistr('\8BF7\8F93\5165\5E73\53F0\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9793614301921686549)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'NONE',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13030101000000000006)
,p_name=>'P301_ADMIN_IDS'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13030101000000000002)
,p_prompt=>unistr('\4E1A\52A1\7BA1\7406\5458')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.NAME || '' - '' || A.JOB_NUMBER USER_NAME, A.USER_ID',
'FROM BASIC_USER A',
'WHERE A.IS_LEAVE = 0',
'  AND A.DEL_FLAG = 0',
'  AND A.TENANT_ID = :USER_TENANT',
'ORDER BY A.NAME, A.JOB_NUMBER'))
,p_lov_display_null=>'YES'
,p_cSize=>60
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13030101000000000008)
,p_name=>unistr('\53D6\6D88 Dialog')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(13030101000000000003)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13030101000000000012)
,p_event_id=>wwv_flow_imp.id(13030101000000000008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13030101000000000010)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P301_LOAD_SUB_PLATFORM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P301_SYSTEM_ID is null then',
'        return;',
'    end if;',
'',
'    select s.system_name,',
'           (',
'               select listagg(x.admin_id, '':'') within group (order by x.admin_id)',
'                 from (select distinct',
'                              case',
'                                  when bu.user_id is not null then to_char(bu.user_id)',
'                                  when regexp_like(sc.range_id, ''^\d+$'') then sc.range_id',
'                              end as admin_id',
'                         from sts_scope sc',
'                         left join basic_user bu',
'                           on bu.tenant_id = to_number(nvl(nullif(v(''USER_TENANT''), ''''), ''0''))',
'                          and bu.del_flag = 0',
'                          and (sc.range_id = nvl(bu.union_id, to_char(bu.user_id))',
'                               or sc.range_id = to_char(bu.user_id))',
'                        where sc.reference_type = ''SYSTEM''',
'                          and sc.permissions_type = ''MANAGE''',
'                          and sc.range_type = ''USER''',
'                          and sc.reference_id = s.system_id',
'                      ) x',
'                where x.admin_id is not null',
'           ) as admin_ids',
'      into :P301_SYSTEM_NAME, :P301_ADMIN_IDS',
'      from sts_system s',
'     where s.system_id = to_number(:P301_SYSTEM_ID)',
'       and nvl(s.del_flag, 0) = 0;',
'exception',
'    when no_data_found then',
unistr('        raise_application_error(-20001, ''\5F85\7F16\8F91\7684\5206\5E73\53F0\4E0D\5B58\5728\6216\5DF2\88AB\5220\9664'');'),
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13061566163549059220
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13030101000000000007)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P301_SAVE_SUB_PLATFORM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_system_name       varchar2(100);',
'    v_admin_ids         varchar2(32767);',
'    v_system_id         number;',
'    v_exists_cnt        number;',
'    v_admin_cnt         number := 0;',
'    v_range_id          varchar2(256);',
'begin',
'    v_system_id := to_number(nullif(:P301_SYSTEM_ID, ''''));',
'    v_system_name := trim(:P301_SYSTEM_NAME);',
'    v_admin_ids := trim(:P301_ADMIN_IDS);',
'',
'    if v_system_name is null then',
unistr('        raise_application_error(-20001, ''\8BF7\8F93\5165\5E73\53F0\540D\79F0'');'),
'    end if;',
'',
'    if v_admin_ids is null then',
unistr('        raise_application_error(-20001, ''\8BF7\9009\62E9\81F3\5C11\4E00\4F4D\4E1A\52A1\7BA1\7406\5458'');'),
'    end if;',
'',
'    select count(1)',
'      into v_exists_cnt',
'      from sts_system',
'     where nvl(del_flag, 0) = 0',
'       and upper(system_name) = upper(v_system_name)',
'       and (v_system_id is null or system_id <> v_system_id);',
'',
'    if v_exists_cnt > 0 then',
unistr('        raise_application_error(-20001, ''\5E73\53F0\540D\79F0\5DF2\5B58\5728'');'),
'    end if;',
'',
'    if v_system_id is null then',
'        insert into sts_system(',
'            system_name,',
'            is_enable,',
'            del_flag,',
'            created_by,',
'            creation_date,',
'            updated_by,',
'            update_date',
'        ) values (',
'            v_system_name,',
'            1,',
'            0,',
'            to_number(v(''MPF_USER_ID'')),',
'            sysdate,',
'            to_number(v(''MPF_USER_ID'')),',
'            sysdate',
'        )',
'        returning system_id into v_system_id;',
'    else',
'        update sts_system',
'           set system_name = v_system_name,',
'               updated_by = to_number(v(''MPF_USER_ID'')),',
'               update_date = sysdate',
'         where system_id = v_system_id',
'           and nvl(del_flag, 0) = 0;',
'',
'        if sql%rowcount = 0 then',
unistr('            raise_application_error(-20001, ''\5F85\4FDD\5B58\7684\5206\5E73\53F0\4E0D\5B58\5728\6216\5DF2\88AB\5220\9664'');'),
'        end if;',
'',
'        delete from sts_scope',
'         where reference_type = ''SYSTEM''',
'           and permissions_type = ''MANAGE''',
'           and range_type = ''USER''',
'           and reference_id = v_system_id;',
'    end if;',
'',
'    for a in (',
'        select trim(data_val) as user_id_txt',
'          from table(ja_utils_pkg.split_str(v_admin_ids, '':''))',
'         where trim(data_val) is not null',
'    ) loop',
'        v_admin_cnt := v_admin_cnt + 1;',
'',
'        begin',
'            select nvl(union_id, to_char(user_id))',
'              into v_range_id',
'              from basic_user',
'             where tenant_id = to_number(v(''USER_TENANT''))',
'               and del_flag = 0',
'               and user_id = to_number(a.user_id_txt)',
'               and rownum = 1;',
'        exception',
'            when no_data_found then',
'                v_range_id := a.user_id_txt;',
'            when value_error then',
'                v_range_id := a.user_id_txt;',
'        end;',
'',
'        update sts_scope',
'           set user_id = to_number(v(''MPF_USER_ID'')),',
'               source_user_id = to_number(v(''MPF_USER_ID'')),',
'               role_id = null,',
'               updated_by = to_number(v(''MPF_USER_ID'')),',
'               update_date = sysdate',
'         where reference_id = v_system_id',
'           and reference_type = ''SYSTEM''',
'           and permissions_type = ''MANAGE''',
'           and range_type = ''USER''',
'           and range_id = v_range_id;',
'',
'        if sql%rowcount = 0 then',
'            insert into sts_scope(',
'                reference_id,',
'                reference_type,',
'                user_id,',
'                source_user_id,',
'                permissions_type,',
'                role_id,',
'                created_by,',
'                creation_date,',
'                updated_by,',
'                update_date,',
'                range_type,',
'                range_id',
'            ) values (',
'                v_system_id,',
'                ''SYSTEM'',',
'                to_number(v(''MPF_USER_ID'')),',
'                to_number(v(''MPF_USER_ID'')),',
'                ''MANAGE'',',
'                null,',
'                to_number(v(''MPF_USER_ID'')),',
'                sysdate,',
'                to_number(v(''MPF_USER_ID'')),',
'                sysdate,',
'                ''USER'',',
'                v_range_id',
'            );',
'        end if;',
'    end loop;',
'',
'    if v_admin_cnt = 0 then',
unistr('        raise_application_error(-20001, ''\8BF7\9009\62E9\81F3\5C11\4E00\4F4D\4E1A\52A1\7BA1\7406\5458'');'),
'    end if;',
'',
'    commit;',
unistr('    apex_application.g_print_success_message := case when :P301_SYSTEM_ID is null then ''\521B\5EFA\6210\529F'' else ''\4FDD\5B58\6210\529F'' end;'),
'exception',
'    when others then',
'        rollback;',
'        raise;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(13030101000000000004)
,p_internal_uid=>13061566163549059217
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13030101000000000013)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/
