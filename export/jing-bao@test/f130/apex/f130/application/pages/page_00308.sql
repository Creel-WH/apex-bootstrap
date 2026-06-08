prompt --application/pages/page_00308
begin
--   Manifest
--     PAGE: 00308
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
 p_id=>308
,p_name=>unistr('\6570\636E\8D8B\52BF\4E0B\8F7D')
,p_alias=>unistr('\6570\636E\8D8B\52BF\4E0B\8F7D')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6570\636E\8D8B\52BF\4E0B\8F7D')
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P308_TIPS_DISPLAY{',
'    color:red;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(235999784164995731)
,p_plug_name=>unistr('\9009\62E9\65F6\95F4\8303\56F4')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(236000001836995734)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(235999784164995731)
,p_button_name=>unistr('\4E0B\8F7D')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\8F7D')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228979984873966653)
,p_name=>'P308_TIPS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(235999784164995731)
,p_item_default=>unistr('\6CE8\FF1A\65F6\95F4\8303\56F4\8D8A\5927\5BFC\51FA\6570\636E\8D8A\591A\FF0C\8BF7\60A8\8010\5FC3\7B49\5F85')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2359868280223135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228981542218966668)
,p_name=>'P308_DEVICE_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(235999784164995731)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228981579309966669)
,p_name=>'P308_SHIFT'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228981746960966670)
,p_name=>'P308_CHANGE_DATE'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235999872957995732)
,p_name=>'P308_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(235999784164995731)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- select to_char(sysdate - 30,''YYYY-MM-DD'') from dual',
'',
'select sysdate - 30 from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5F00\59CB\65F6\95F4')
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'ITEM',
  'max_item', 'P308_END_DATE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(235999901351995733)
,p_name=>'P308_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(235999784164995731)
,p_item_default=>'select sysdate from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\7ED3\675F\65F6\95F4')
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'ITEM',
  'min_item', 'P308_START_DATE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(228979757147966650)
,p_name=>unistr('\63D0\793A')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(236000001836995734)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(228979776125966651)
,p_event_id=>wwv_flow_imp.id(228979757147966650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (1>0){',
unistr('    alert(''\4E0B\8F7D\4E2D\FF0C\8BF7\60A8\8010\5FC3\7B49\5F85'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(228981775955966671)
,p_name=>unistr('\8D77\6B62\65F6\95F4\53D8\66F4\5237\65B0\5BF9\5E94\8BBE\5907')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P308_START_DATE,P308_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(228981963442966672)
,p_event_id=>wwv_flow_imp.id(228981775955966671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P308_DEVICE_CODE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(228981971031966673)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(228982137044966674)
,p_event_id=>wwv_flow_imp.id(228981971031966673)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\521D\59CB\5316\8BBE\5907')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P308_DEVICE_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct DEVICE_CODE RN',
'FROM CHECK_DEVICE_THIRD_PARTY_VALUE',
'where BASE_DEPT_ID = :BASE_DEPT_ID',
'  and DATA_TYPE = ''EFFICIENCY'' and STATUS=''NORMAL''',
'  and START_TIME >= to_date(:P308_START_DATE, ''yyyy-mm-dd'')',
'  and END_TIME < to_date(:P308_END_DATE, ''yyyy-mm-dd'')+1',
'--   and VALUE <> 0.000000',
'  and rownum = 1',
'',
'',
''))
,p_attribute_07=>'P308_START_DATE,P308_END_DATE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(236000150972995735)
,p_process_sequence=>10
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\4E0B\8F7D\6570\636E\8D8B\52BF')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_context apex_exec.t_context;',
'    l_export  apex_data_export.t_export;',
'    v_err_msg nvarchar2(2000);',
'/*',
'--DATE: 2024/11/26 14:19',
unistr('--DESCRIBE:P308 \5BFC\51FA\6570\636E\8D8B\52BF'),
'--DATE: 2024/12/12 15:19',
'--DESCRIBE:15.3.2',
'--DATE: 2024/12/27 11:03',
unistr('--DESCRIBE:V1.3.10 \53D8\66F4\70B9\5C55\793A\65F6\95F4\6BB5\9700\6839\636E\8BB0\5F55\65F6\95F4+\5F71\54CD\65F6\95F4\5F97\5230\7684\65F6\95F4\70B9\8FDB\884C\5C55\793A'),
'*/',
'BEGIN',
'    -- JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''debug'', V_ERR_MSG,:MPF_USER_ID, :USER_TENANT,',
'    --                  :APP_NAME , :APP_ID, :APP_CODE);',
'    l_context := apex_exec.open_query_context(',
'        p_location    => apex_exec.c_location_local_db,',
unistr('        p_sql_query   => ''select to_char(t.START_TIME, ''''yyyy-mm-dd'''') AS \65E5\671F,'),
unistr('       t.DATE_FORMAT AS \65F6\95F4,'),
'       case',
'           when to_char(t.START_TIME, ''''hh24'''') >= ''''08'''' and',
unistr('                to_char(t.START_TIME, ''''hh24'''') < ''''20'''' then ''''\767D\73ED'''''),
unistr('           else ''''\591C\73ED'''''),
unistr('        end AS \73ED\6B21,'),
unistr('       t.DEVICE_CODE AS "\7EBF\522B(\8BBE\5907)",'),
unistr('       t.VALUE AS \6548\7387 ,'),
unistr('       r.DEPT_NAME AS   \8BB0\5F55\90E8\95E8  ,'),
unistr('       r.content AS \53D8\66F4\70B9\8BB0\5F55,'),
unistr('       r.images AS   \56FE\7247URL'),
'from CHECK_DEVICE_THIRD_PARTY_VALUE t',
'         left join (',
'    select s.DEVICE_CODE ||',
'           s.AREA_NAME ||',
unistr('           ''''\53D8\66F4\5185\5BB9:'''' || listagg(s.CONTENT, '''' '''') ||'),
'           s.REMARK ||',
'           s.RECORD_NAME ||',
'           s.CREATION_DATE || s.EFFECT_MINUTE content,',
'           s.images,',
'           s.RECORD_DATE,',
'           s.DEPT_NAME,',
'           s.EFFECTIVE_END_DATE',
'    from (select r.RECORD_ID,',
'                 r.IMAGES,',
unistr('                 ''''\8BBE\5907\7F16\7801: '''' || d.DEVICE_CODE || chr(13)                                                 DEVICE_CODE,'),
unistr('                 ''''\533A\57DF: '''' || r.AREA_NAME || chr(13)                                                     AREA_NAME,'),
unistr('                 ''''\53D8\66F4\9879\63CF\8FF0: '''' || t.ITEM_NAME || '''';'''' || chr(13) || ''''\586B\5199\5185\5BB9:'''' || t.CONTENT || '''';'''' || chr(13) CONTENT,'),
unistr('                 ''''\5907\6CE8: '''' || r.REMARK || chr(13)                                                        REMARK,'),
unistr('                 ''''\8BB0\5F55\4EBA: '''' || r.RECORD_JOB_NUMBER || ''''-'''' || r.RECORD_NAME || chr(13)                    RECORD_NAME,'),
unistr('                 ''''\8BB0\5F55\65F6\95F4: '''' || to_char(r.CREATION_DATE, ''''yyyy-mm-dd hh24:mi:ss'''') || chr(13)                         CREATION_DATE,'),
unistr('                 ''''\5F71\54CD\65F6\95F4\FF08\5206\949F\FF09:'''' || r.EFFECT_MINUTE AS EFFECT_MINUTE,'),
'                 r.DEPT_NAME,',
'                 r.RECORD_DATE,',
unistr('                 r.RECORD_DATE + r.EFFECT_MINUTE / (24 * 60) as EFFECTIVE_END_DATE -- \8BA1\7B97\5F71\54CD\7ED3\675F\65F6\95F4'),
'          from CHECK_CHANGE_RECORD r',
'                   left join CHECK_CHANGE_RECORD_ITEM t on r.RECORD_ID = t.RECORD_ID',
'                   left join CHECK_CHANGE_RECORD_DEVICE d on r.RECORD_ID = d.RECORD_ID',
'          where r.BASE_DEPT_ID = :BASE_DEPT_ID',
'            and r.CREATION_DATE >= to_date(:P308_START_DATE, ''''yyyy-mm-dd hh24:mi:ss'''')',
'            and r.CREATION_DATE < to_date(:P308_END_DATE, ''''yyyy-mm-dd hh24:mi:ss'''') ) s',
'    group by s.images, s.DEVICE_CODE, s.AREA_NAME, s.REMARK, s.RECORD_NAME, s.CREATION_DATE,  s.EFFECT_MINUTE,s.DEPT_NAME,',
'             s.RECORD_DATE,s.EFFECTIVE_END_DATE) r on',
unistr('    t.START_TIME <= r.EFFECTIVE_END_DATE and t.END_TIME >= r.EFFECTIVE_END_DATE -- \4F7F\7528\65B0\7684\7ED3\675F\65F6\95F4\8FDB\884C\6BD4\8F83'),
'where t.DATA_TYPE = ''''EFFICIENCY''''',
'  and t.STATUS = ''''NORMAL''''',
'  and t.START_TIME >= to_date(:P308_START_DATE, ''''yyyy-mm-dd hh24:mi:ss'''')',
'  and t.START_TIME < to_date(:P308_END_DATE, ''''yyyy-mm-dd hh24:mi:ss'''')',
unistr('order by \65E5\671F desc, \65F6\95F4 desc ,"\7EBF\522B(\8BBE\5907)" desc;'),
' '' );',
'',
'    l_export := apex_data_export.export (',
'                        p_context   => l_context,',
'                        p_format    => apex_data_export.c_format_xlsx ,',
unistr('                        p_file_name => ''\6570\636E\8D8B\52BF.xlsx'');'),
'',
'    apex_exec.close( l_context );',
'',
'    apex_data_export.download( p_export => l_export );',
'',
'EXCEPTION',
'            when others then',
'                  apex_exec.close( l_context );',
'  rollback;',
unistr('-- \56E0apex\7EC4\4EF6\539F\56E0\6570\636E\5BFC\51FA\4F1A\62A5\9519\FF0C\6545\6CE8\91CA\6389'),
'        -- v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        -- JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' ||  :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        --             :APP_NAME , :APP_ID, :APP_CODE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>unistr('\4E0B\8F7D\6210\529F\FF01')
,p_internal_uid=>89755054019834649
);
wwv_flow_imp.component_end;
end;
/
