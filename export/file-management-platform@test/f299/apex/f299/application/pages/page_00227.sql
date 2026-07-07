prompt --application/pages/page_00227
begin
--   Manifest
--     PAGE: 00227
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>227
,p_name=>unistr('\7BA1\7406\540E\53F0')
,p_alias=>unistr('\7BA1\7406\540E\53F0')
,p_step_title=>unistr('\7BA1\7406\540E\53F0')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9760301804667862479)
,p_page_template_options=>'#DEFAULT#'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.p227-tabs-region .apex-rds-container {',
'    border-bottom: 1px solid #dfe6ef;',
'}',
'',
'.p227-tabs-region .apex-rds a,',
'.p227-tabs-region .apex-rds button {',
'    border: 0;',
'    box-shadow: none;',
'    border-radius: 0;',
'}',
'',
'.p227-tabs-region .apex-rds .apex-rds-selected a,',
'.p227-tabs-region .apex-rds .apex-rds-selected button,',
'.p227-tabs-region .apex-rds .is-active a,',
'.p227-tabs-region .apex-rds .is-active button {',
'    border: 0;',
'    box-shadow: none;',
'    border-radius: 0;',
'    outline: none;',
'}',
'',
'.p227-tabs-region .t-Tabs-item:focus,',
'.p227-tabs-region .t-Tabs-item:focus-visible,',
'.p227-tabs-region .t-Tabs-link:focus,',
'.p227-tabs-region .t-Tabs-link:focus-visible,',
'.p227-tabs-region .apex-rds a:focus,',
'.p227-tabs-region .apex-rds a:focus-visible,',
'.p227-tabs-region .apex-rds button:focus,',
'.p227-tabs-region .apex-rds button:focus-visible {',
'    outline: none;',
'    box-shadow: none;',
'}'))
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910002270000000001)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760098362117264255)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9759982719990264183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9760160797690264300)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910002270000000002)
,p_plug_name=>unistr('\7BA1\7406\540E\53F0\6807\7B7E')
,p_region_name=>'p227_tabs_region'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(9760095805010264254)
,p_plug_display_sequence=>20
,p_region_css_classes=>'p227-tabs-region'
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910002270000000006)
,p_plug_name=>unistr('\5E73\53F0\4FE1\606F')
,p_parent_plug_id=>wwv_flow_imp.id(910002270000000002)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_region_css_classes=>'p227-tab-panel'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910002270000000007)
,p_plug_name=>unistr('\7EDF\8BA1\529F\80FD')
,p_parent_plug_id=>wwv_flow_imp.id(910002270000000002)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_region_css_classes=>'p227-tab-panel'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910002270000000003)
,p_plug_name=>unistr('\5E73\53F0\540D\79F0\4FEE\6539')
,p_parent_plug_id=>wwv_flow_imp.id(910002270000000006)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<div style="margin-bottom:12px;color:#6b7280;">\4FEE\6539\540E\4F1A\540C\6B65\66F4\65B0\5F53\524D\5B50\5E73\53F0\540D\79F0\FF0C\5E76\5728\9875\9762\5237\65B0\540E\540C\6B65\53CD\6620\5230\9876\90E8\5B50\5E73\53F0\5207\6362\6A21\5757\3002</div>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_source_type=>'NATIVE_STATIC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910002270000000004)
,p_plug_name=>unistr('\8DEF\5F84\4FEE\6539')
,p_parent_plug_id=>wwv_flow_imp.id(910002270000000006)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<div style="min-height:96px;display:flex;align-items:center;justify-content:center;border:1px dashed #d0d7de;border-radius:12px;background:#fafbfc;color:#6b7280;">\9996\671F\6682\4E0D\5F00\653E\8DEF\5F84\4FEE\6539</div>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_source_type=>'NATIVE_STATIC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910002270000000005)
,p_plug_name=>unistr('\7EDF\8BA1\529F\80FD')
,p_parent_plug_id=>wwv_flow_imp.id(910002270000000007)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="min-height:240px;border:1px dashed #d0d7de;border-radius:12px;background:#fafbfc;"></div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_source_type=>'NATIVE_STATIC'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910002270000000010)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(910002270000000003)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910002270000000020)
,p_name=>'P227_PLATFORM_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(910002270000000003)
,p_prompt=>unistr('\5E73\53F0\540D\79F0')
,p_placeholder=>unistr('\8BF7\8F93\5165\5E73\53F0\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>50
,p_colspan=>8
,p_field_template=>wwv_flow_imp.id(9760156813457264295)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_required=>true
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(910002270000000021)
,p_computation_sequence=>10
,p_computation_item=>'P227_PLATFORM_NAME'
,p_computation_point=>'AFTER_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(',
'           (',
'               select x.system_name',
'                 from (',
'                       select system_name',
'                         from fmp_system',
'                        where system_id = nvl(to_number(nullif(:SYSTEM_ID, '''')), 42)',
'                          and is_enable = 1',
'                          and nvl(del_flag, 0) = 0',
'                        order by update_date desc nulls last, system_id desc',
'                 ) x',
'                where rownum = 1',
'           ),',
'           :APP_NAME',
'       )',
'  from dual'))
,p_compute_when=>'P227_PLATFORM_NAME'
,p_compute_when_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910002270000000030)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\6821\9A8C\7BA1\7406\540E\53F0\8BBF\95EE\6743\9650')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF NOT fmp_is_system_manager(',
'        NVL(TO_NUMBER(NULLIF(:SYSTEM_ID, '''')), 42),',
'        :DIAN_USER_ID,',
'        :USER_TENANT',
'    ) THEN',
unistr('        raise_application_error(-20001, ''\4EC5\5B50\5E73\53F0\7BA1\7406\5458\53EF\8BBF\95EE\7BA1\7406\540E\53F0\9875\9762'');'),
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910002270000000031)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\4FDD\5B58\5E73\53F0\540D\79F0\914D\7F6E')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_system_id NUMBER := NVL(TO_NUMBER(NULLIF(:SYSTEM_ID, '''')), 42);',
'    v_name      VARCHAR2(50) := TRIM(:P227_PLATFORM_NAME);',
'    v_old_name  fmp_system.system_name%TYPE;',
'    v_root_id   fmp_system.root_folder_file_id%TYPE;',
'    v_err_msg   VARCHAR2(4000);',
'BEGIN',
'    SELECT system_name,',
'           root_folder_file_id',
'      INTO v_old_name,',
'           v_root_id',
'      FROM fmp_system',
'     WHERE system_id = v_system_id',
'       AND is_enable = 1',
'       AND nvl(del_flag, 0) = 0;',
'',
'    UPDATE fmp_system',
'       SET system_name = v_name,',
'           updated_by = :USER_ID,',
'           update_date = SYSDATE',
'     WHERE system_id = v_system_id',
'       AND is_enable = 1',
'       AND nvl(del_flag, 0) = 0;',
'',
'    IF SQL%ROWCOUNT = 0 THEN',
'        raise_application_error(-20002, ''Current sub-platform not found or disabled'');',
'    END IF;',
'',
'    IF v_old_name <> v_name THEN',
'        IF v_root_id IS NULL THEN',
'            SELECT MIN(file_id)',
'              INTO v_root_id',
'              FROM fmp_file',
'             WHERE tenant_id = :USER_TENANT',
'               AND system_id = v_system_id',
'               AND file_type = ''FOLDER''',
'               AND parent_folder_id IS NULL',
'               AND nvl(del_flag, 0) = 0;',
'        END IF;',
'',
'        IF v_root_id IS NOT NULL THEN',
'            UPDATE fmp_file',
'               SET file_name = v_name,',
'                   updated_by = :USER_ID,',
'                   update_date = SYSDATE',
'             WHERE file_id = v_root_id',
'               AND tenant_id = :USER_TENANT',
'               AND nvl(del_flag, 0) = 0;',
'',
'            MERGE INTO fmp_file target',
'            USING (',
'                SELECT file_id,',
'                       LEVEL AS new_level,',
'                       CASE',
'                           WHEN LEVEL = 1 THEN NULL',
'                           ELSE LTRIM(REGEXP_REPLACE(SYS_CONNECT_BY_PATH(file_name, ''/''), ''/[^/]+$'', ''''), ''/'')',
'                       END AS new_file_path',
'                  FROM fmp_file',
'                 WHERE tenant_id = :USER_TENANT',
'                   AND system_id = v_system_id',
'                   AND nvl(del_flag, 0) = 0',
'                 START WITH file_id = v_root_id',
'               CONNECT BY PRIOR file_id = parent_folder_id',
'                     AND tenant_id = :USER_TENANT',
'                     AND system_id = v_system_id',
'                     AND nvl(del_flag, 0) = 0',
'            ) src',
'               ON (target.file_id = src.file_id)',
'             WHEN MATCHED THEN',
'                UPDATE SET target.root_folder_id = CASE',
'                                                    WHEN src.file_id = v_root_id THEN NULL',
'                                                    ELSE v_root_id',
'                                                 END,',
'                           target.file_level = src.new_level,',
'                           target.file_path = src.new_file_path,',
'                           target.updated_by = :USER_ID,',
'                           target.update_date = SYSDATE;',
'        END IF;',
'    END IF;',
'',
unistr('    apex_application.g_print_success_message := ''\5B50\5E73\53F0\540D\79F0\5DF2\4FDD\5B58'';'),
'EXCEPTION',
'    WHEN OTHERS THEN',
'        v_err_msg := ''P227_SAVE_SYSTEM_NAME err='' || SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        BEGIN',
'            JA_WRITE_LOG(',
'                ''P227:SAVE_SYSTEM_NAME'',',
'                ''ERROR'',',
'                v_err_msg,',
'                NVL(:USER_ID, 0),',
'                :USER_TENANT,',
'                :APP_NAME,',
'                :APP_ID,',
'                :APP_CODE',
'            );',
'        EXCEPTION',
'            WHEN OTHERS THEN',
'                NULL;',
'        END;',
'        RAISE;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(910002270000000010)
);
wwv_flow_imp.component_end;
end;
/
