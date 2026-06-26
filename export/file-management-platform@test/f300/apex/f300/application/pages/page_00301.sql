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
,p_group_id=>wwv_flow_imp.id(9731818236280992258)
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
'    background: #ffffff;',
'    padding: 0 !important;',
'}',
'.ui-widget-overlay.ui-front {',
'    background: rgba(0,0,0,0.45);',
'    opacity: 1;',
'}',
'.ui-dialog.ui-widget.ui-widget-content {',
'    border: none !important;',
'    border-radius: 12px !important;',
'    padding: 0 !important;',
'    box-shadow: 0 12px 48px rgba(0,0,0,0.15) !important;',
'    overflow: hidden;',
'}',
'.ui-dialog .ui-dialog-content {',
'    padding: 0;',
'    overflow: hidden;',
'}',
'.ui-dialog .ui-dialog-titlebar {',
'    padding: 20px 24px;',
'    border-bottom: 1px solid #f0f0f0;',
'    background: #ffffff;',
'}',
'.ui-dialog .ui-dialog-title {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 8px;',
'    font-size: 16px;',
'    font-weight: 600;',
'    color: #333333;',
'}',
'.ui-dialog .ui-dialog-titlebar-close {',
'    width: 28px;',
'    height: 28px;',
'    margin: 0;',
'    border-radius: 6px;',
'    border: none;',
'    background: transparent;',
'    color: #999999;',
'}',
'.ui-dialog .ui-dialog-titlebar-close:hover {',
'    background: #f5f5f5;',
'    color: #333333;',
'}',
'.p301-form-region {',
'    --p301-field-width: 432px;',
'    max-width: none;',
'    border: none;',
'    box-shadow: none;',
'    background: #ffffff;',
'    overflow: hidden;',
'}',
'.p301-form-region,',
'.p301-form-region * {',
'    box-sizing: border-box;',
'}',
'.p301-form-region .t-Region-bodyWrap,',
'.p301-form-region .t-Region-body {',
'    padding: 24px 24px 0;',
'    background: #ffffff;',
'}',
'.p301-form-region .t-Form-fieldContainer {',
'    padding: 0;',
'    margin: 0 0 16px;',
'    width: 100%;',
'    max-width: 432px;',
'    max-width: var(--p301-field-width);',
'}',
'.p301-form-region .t-Form-fieldContainer:last-of-type {',
'    margin-bottom: 0;',
'}',
'.p301-form-region .t-Form-labelContainer {',
'    padding-bottom: 8px;',
'}',
'.p301-form-region .t-Form-label,',
'.p301-form-region .a-Form-label {',
'    color: #666666;',
'    font-size: 13px;',
'    font-weight: 500;',
'    line-height: 1.5;',
'}',
'.p301-form-region .t-Form-inputContainer {',
'    width: 100%;',
'}',
'.p301-form-region .t-Form-itemWrapper {',
'    width: 100%;',
'    max-width: 100%;',
'}',
'.p301-form-region .t-Form-fieldContainer,',
'.p301-form-region .t-Form-inputContainer,',
'.p301-form-region .t-Form-itemWrapper {',
'    border-bottom: none !important;',
'    box-shadow: none !important;',
'    background-image: none !important;',
'}',
'.p301-form-region .apex-item-text,',
'.p301-form-region .apex-item-popup-lov,',
'.p301-form-region .apex-item-textarea {',
'    width: 100%;',
'    max-width: 100%;',
'    min-height: 40px;',
'    border: 1px solid #d9d9d9 !important;',
'    border-radius: 6px !important;',
'    background: #ffffff;',
'    box-shadow: none !important;',
'    transition: border-color .15s ease, box-shadow .15s ease, background-color .15s ease;',
'}',
'.p301-form-region .apex-item-text {',
'    padding: 0 12px;',
'    font-size: 14px;',
'    color: #333333;',
'}',
'.p301-form-region .apex-item-textarea {',
'    padding: 10px 12px;',
'    min-height: 88px;',
'    font-size: 14px;',
'    line-height: 1.5;',
'    color: #333333;',
'    resize: vertical;',
'}',
'#P301_REMARK_CONTAINER,',
'#P301_REMARK_CONTAINER .t-Form-inputContainer,',
'#P301_REMARK_CONTAINER .t-Form-itemWrapper {',
'    border: none !important;',
'    box-shadow: none !important;',
'    background: transparent !important;',
'}',
'#P301_REMARK {',
'    display: block;',
'    margin: 0;',
'    background-image: none !important;',
'}',
'.p301-form-region .apex-item-text::placeholder {',
'    color: #bfbfbf;',
'}',
'.p301-form-region .apex-item-text:focus,',
'.p301-form-region .apex-item-textarea:focus,',
'.p301-form-region .apex-item-popup-lov:focus-within {',
'    border-color: #1890ff !important;',
'    box-shadow: 0 0 0 3px rgba(24, 144, 255, 0.10) !important;',
'    outline: none !important;',
'}',
'.p301-form-region .apex-item-popup-lov {',
'    max-width: 100%;',
'}',
'.p301-form-region .t-ButtonRegion-col--content {',
'    position: relative;',
'    padding: 0 0 68px;',
'}',
'.p301-form-region table[role="presentation"] {',
'    position: absolute;',
'    left: 0;',
'    right: 0;',
'    bottom: 0;',
'    width: 100%;',
'    display: block;',
'    padding: 16px 24px;',
'    border-top: none;',
'    background: #ffffff;',
'}',
'.p301-form-region table[role="presentation"] tbody,',
'.p301-form-region table[role="presentation"] tr {',
'    display: block;',
'    width: 100%;',
'}',
'.p301-form-region table[role="presentation"] td[align="right"] {',
'    display: flex;',
'    justify-content: flex-end;',
'    align-items: center;',
'    gap: 8px;',
'    padding-right: 0;',
'}',
'.p301-form-region .ja-btn + .ja-btn {',
'    margin-left: 0;',
'}',
'.p301-form-region .t-Button {',
'    min-width: 88px;',
'    height: 36px;',
'    line-height: 34px;',
'    padding: 0 20px;',
'    border-radius: 6px !important;',
'    font-size: 14px;',
'    font-weight: 500;',
'    box-shadow: none;',
'}',
'.p301-form-region .t-Button:not(.t-Button--hot) {',
'    border-color: #d9d9d9;',
'    color: #666666;',
'    background: #ffffff;',
'}',
'.p301-form-region .t-Button:not(.t-Button--hot):hover {',
'    border-color: #1890ff;',
'    color: #1890ff;',
'}',
'.p301-form-region .t-Button--hot {',
'    background: #1890ff !important;',
'    color: #ffffff !important;',
'    border-color: #1890ff !important;',
'}',
'.p301-form-region .t-Button--hot:hover {',
'    background: #40a9ff !important;',
'    border-color: #40a9ff !important;',
'}',
'#P301_ADMIN_IDS_CONTAINER .t-Form-inputContainer,',
'#P301_ADMIN_IDS_CONTAINER .t-Form-itemWrapper {',
'    width: 100% !important;',
'    max-width: 100% !important;',
'}',
'#P301_ADMIN_IDS_CONTAINER .t-Form-itemWrapper {',
'    display: block !important;',
'}',
'#P301_ADMIN_IDS_CONTAINER .apex-item-group,',
'#P301_ADMIN_IDS_CONTAINER .apex-item-group.apex-item-group--popup-lov,',
'#P301_ADMIN_IDS_CONTAINER .apex-item-group--popup-lov {',
'    display: flex !important;',
'    align-items: stretch;',
'    flex-wrap: nowrap;',
'    position: relative;',
'    width: 100% !important;',
'    min-width: 0 !important;',
'    max-width: 100% !important;',
'    box-sizing: border-box;',
'    padding-right: 0;',
'    min-height: 44px;',
'    overflow: visible;',
'    background: #ffffff !important;',
'    border: 1px solid #d9d9d9 !important;',
'    border-radius: 6px !important;',
'    box-shadow: none !important;',
'}',
'#P301_ADMIN_IDS_CONTAINER .apex-item-group::before,',
'#P301_ADMIN_IDS_CONTAINER .apex-item-group::after,',
'#P301_ADMIN_IDS_CONTAINER .apex-item-group--popup-lov::before,',
'#P301_ADMIN_IDS_CONTAINER .apex-item-group--popup-lov::after {',
'    display: none !important;',
'    border: none !important;',
'    box-shadow: none !important;',
'    background: none !important;',
'}',
'#P301_ADMIN_IDS_CONTAINER .apex-item-group--popup-lov:focus-within {',
'    border-color: #1890ff !important;',
'    box-shadow: 0 0 0 3px rgba(24, 144, 255, 0.10) !important;',
'}',
'#P301_ADMIN_IDS_CONTAINER .apex-item-multi {',
'    display: flex !important;',
'    flex-wrap: wrap;',
'    align-items: center;',
'    flex: 1 1 auto;',
'    width: auto !important;',
'    max-width: 100% !important;',
'    min-width: 0;',
'    margin: 0;',
'    box-sizing: border-box;',
'    padding: 7px 8px 7px 14px;',
'    min-height: 44px;',
'    gap: 6px;',
'    list-style: none;',
'    border: none !important;',
'    box-shadow: none !important;',
'    background-image: none !important;',
'}',
'#P301_ADMIN_IDS_CONTAINER .apex-item-multi-item {',
'    display: inline-flex;',
'    align-items: center;',
'    min-width: 0;',
'    margin: 0;',
'    list-style: none;',
'    border: none !important;',
'    box-shadow: none !important;',
'}',
'#P301_ADMIN_IDS_CONTAINER .apex-item-multi-item:not([data-value]) {',
'    flex: 1 1 160px;',
'    min-width: 120px;',
'    width: auto;',
'    padding: 0;',
'    border: none;',
'    border-radius: 0;',
'    background: transparent;',
'    box-shadow: none;',
'}',
'#P301_ADMIN_IDS_CONTAINER .apex-item-multi-item[data-value] {',
'    flex: 0 0 auto;',
'    padding: 3px 10px;',
'    border: none;',
'    border-radius: 4px;',
'    background: #e6f7ff;',
'    color: #1890ff;',
'    font-size: 12px;',
'    font-weight: 500;',
'    line-height: 18px;',
'}',
'#P301_ADMIN_IDS {',
'    width: 100% !important;',
'    max-width: 100% !important;',
'    flex: 1 1 auto;',
'    min-width: 0;',
'    min-height: 28px;',
'    height: 28px;',
'    margin: 0;',
'    padding: 0;',
'    border: none !important;',
'    border-radius: 0 !important;',
'    outline: none !important;',
'    box-shadow: none !important;',
'    background: transparent !important;',
'    color: #111827;',
'    appearance: none;',
'    -webkit-appearance: none;',
'    -moz-appearance: none;',
'}',
'#P301_ADMIN_IDS_CONTAINER .a-Button--popupLOV,',
'#P301_ADMIN_IDS_lov_btn {',
'    position: static !important;',
'    display: flex;',
'    flex: 0 0 40px;',
'    align-items: center;',
'    justify-content: center;',
'    width: 40px;',
'    min-width: 40px;',
'    height: 42px;',
'    min-height: 42px;',
'    border: none !important;',
'    border-left: 1px solid #f0f0f0 !important;',
'    border-radius: 0 6px 6px 0 !important;',
'    background: #ffffff !important;',
'    box-shadow: none !important;',
'    margin: 0;',
'    align-self: stretch;',
'    z-index: 1;',
'}',
'#P301_ADMIN_IDS::placeholder {',
'    color: #bfbfbf;',
'}',
'#P301_ADMIN_IDS_CONTAINER .apex-item-multi-remove {',
'    color: #1890ff;',
'    opacity: .85;',
'}',
'.t-Dialog-page .t-Dialog-body {',
'    height: 100% !important;',
'}',
'.t-Dialog-page .t-Dialog-footer {',
'    display: none;',
'}',
'.a-PopupLOV-results {',
'    max-height: 260px;',
'    overflow-y: auto;',
'}',
'.a-PopupLOV-search {',
'    min-height: 40px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'500'
,p_dialog_width=>'480'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(12968161084377707528)
,p_plug_name=>unistr('\5206\5E73\53F0\8868\5355')
,p_region_css_classes=>'p301-form-region'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noPadding'
,p_plug_template=>wwv_flow_imp.id(9763528715409540252)
,p_plug_display_sequence=>60
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12968161084377707529)
,p_button_sequence=>25
,p_button_plug_id=>wwv_flow_imp.id(12968161084377707528)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9763645548249540315)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(12968161084377707530)
,p_button_sequence=>35
,p_button_plug_id=>wwv_flow_imp.id(12968161084377707528)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9763645548249540315)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'&P301_SUBMIT_LABEL.'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
p_id=>wwv_flow_imp.id(12968161084377707531)
,p_name=>'P301_SYSTEM_NAME'
,p_item_sequence=>35
,p_item_plug_id=>wwv_flow_imp.id(12968161084377707528)
,p_prompt=>unistr('\5E73\53F0\540D\79F0')
,p_placeholder=>unistr('\4FDD\5B58\540E\81EA\52A8\751F\6210')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9763642899403540310)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'Y',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12968161084377707532)
,p_name=>'P301_ADMIN_IDS'
,p_is_required=>true
,p_item_sequence=>55
,p_item_plug_id=>wwv_flow_imp.id(12968161084377707528)
,p_prompt=>unistr('\4E1A\52A1\7BA1\7406\5458')
,p_placeholder=>unistr('\8BF7\9009\62E9\4E1A\52A1\7BA1\7406\5458')
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
,p_field_template=>wwv_flow_imp.id(9763642899403540310)
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
 p_id=>wwv_flow_imp.id(12968161084377707540)
,p_name=>'P301_REMARK'
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_imp.id(12968161084377707528)
,p_prompt=>unistr('\5907\6CE8')
,p_placeholder=>unistr('\8BF7\8F93\5165\5907\6CE8')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(9763642899403540310)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12968161084377707541)
,p_name=>'P301_SUBMIT_LABEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(12968161084377707528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12968161084377707535)
,p_name=>'P301_SYSTEM_ID'
,p_item_sequence=>15
,p_item_plug_id=>wwv_flow_imp.id(12968161084377707528)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(12968161084377707534)
,p_name=>unistr('\53D6\6D88 Dialog')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(12968161084377707529)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(12968161084377707538)
,p_event_id=>wwv_flow_imp.id(12968161084377707534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12968161084377707533)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P301_SAVE_SUB_PLATFORM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_system_name       varchar2(100);',
'    v_admin_ids         varchar2(32767);',
'    v_remark            varchar2(500);',
'    v_system_id         number;',
'    v_admin_cnt         number := 0;',
'    v_range_id          varchar2(256);',
'begin',
'    v_system_id := to_number(nullif(:P301_SYSTEM_ID, ''''));',
'    v_system_name := case',
unistr('                         when v_system_id is null then ''\5B50\6587\4EF6\7BA1\7406\5E73\53F0\5F85\751F\6210'''),
unistr('                         else ''\5B50\6587\4EF6\7BA1\7406\5E73\53F0'' || to_char(v_system_id)'),
'                     end;',
'    v_admin_ids := trim(:P301_ADMIN_IDS);',
'    v_remark := trim(:P301_REMARK);',
'',
'    if v_admin_ids is null then',
unistr('        raise_application_error(-20001, ''\8BF7\9009\62E9\81F3\5C11\4E00\4F4D\4E1A\52A1\7BA1\7406\5458'');'),
'    end if;',
'',
'    if v_system_id is null then',
'        insert into FMP_SYSTEM(',
'            system_name,',
'            is_enable,',
'            del_flag,',
'            remark,',
'            created_by,',
'            creation_date,',
'            updated_by,',
'            update_date',
'        ) values (',
'            v_system_name,',
'            1,',
'            0,',
'            v_remark,',
'            to_number(v(''MPF_USER_ID'')),',
'            sysdate,',
'            to_number(v(''MPF_USER_ID'')),',
'            sysdate',
'        )',
'        returning system_id into v_system_id;',
'',
unistr('        v_system_name := ''\5B50\6587\4EF6\7BA1\7406\5E73\53F0'' || to_char(v_system_id);'),
'',
'        update FMP_SYSTEM',
'           set system_name = v_system_name',
'         where system_id = v_system_id;',
'    else',
'        update FMP_SYSTEM',
'           set remark = v_remark,',
'               updated_by = to_number(v(''MPF_USER_ID'')),',
'               update_date = sysdate',
'         where system_id = v_system_id',
'           and nvl(del_flag, 0) = 0;',
'',
'        if sql%rowcount = 0 then',
unistr('            raise_application_error(-20001, ''\5F85\4FDD\5B58\7684\5206\5E73\53F0\4E0D\5B58\5728\6216\5DF2\88AB\5220\9664'');'),
'        end if;',
'',
'        delete from FMP_SCOPE',
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
'        update FMP_SCOPE',
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
'            insert into FMP_SCOPE(',
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
,p_process_when_button_id=>wwv_flow_imp.id(12968161084377707530)
,p_internal_uid=>13061566163549059217
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12968161084377707539)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13030101000000000013
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(12968161084377707536)
,p_process_sequence=>5
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P301_LOAD_SUB_PLATFORM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P301_SYSTEM_ID is null then',
unistr('        :P301_SYSTEM_NAME := ''\5B50\6587\4EF6\7BA1\7406\5E73\53F0\FF08\4FDD\5B58\540E\81EA\52A8\751F\6210\FF09'';'),
unistr('        :P301_SUBMIT_LABEL := ''\786E\8BA4\6DFB\52A0'';'),
'        :P301_ADMIN_IDS := null;',
'        :P301_REMARK := null;',
'        return;',
'    end if;',
'',
'    select s.system_name,',
'           s.remark,',
'           (',
'               select listagg(x.admin_id, '':'') within group (order by x.admin_id)',
'                 from (select distinct',
'                              case',
'                                  when bu.user_id is not null then to_char(bu.user_id)',
'                                  when regexp_like(sc.range_id, ''^\d+$'') then sc.range_id',
'                              end as admin_id',
'                         from FMP_SCOPE sc',
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
'      into :P301_SYSTEM_NAME, :P301_REMARK, :P301_ADMIN_IDS',
'      from FMP_SYSTEM s',
'     where s.system_id = to_number(:P301_SYSTEM_ID)',
'       and nvl(s.del_flag, 0) = 0;',
'',
unistr('    :P301_SUBMIT_LABEL := ''\786E\8BA4\4FEE\6539'';'),
'exception',
'    when no_data_found then',
unistr('        raise_application_error(-20001, ''\5F85\7F16\8F91\7684\5206\5E73\53F0\4E0D\5B58\5728\6216\5DF2\88AB\5220\9664'');'),
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13061566163549059220
);
wwv_flow_imp.component_end;
end;
/
