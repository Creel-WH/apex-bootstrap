prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_name=>unistr('\6D3E\5355\89C4\5219\8BE6\60C5')
,p_alias=>unistr('\6D3E\5355\89C4\5219\8BE6\60C5')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6D3E\5355\89C4\5219\8BE6\60C5')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $(function () {',
'//     $(''div[class="layui-form"]'').remove();',
'//     var div = `<div class="layui-form">',
'//     <div class="layui-form-item">',
'//         <div class="layui-inline ">',
'//             <div class="layui-input-inline">',
unistr('//               <label class="layui-form-label t-Form-labelContainer col col-2 " style="display: inline-block;padding-right:16px">\5F00\59CB\65F6\95F4  </label>  '),
'//               <input type="text" class="layui-input" style="display:inline-block;width:247px;height:32px;',
'//               background-color:#f9f9f9;',
'//              border:1px solid #dfdfdf;',
'//               " id="my_start_date">',
'//             </div>',
'//         </div>',
'//     </div>',
'// </div>`;',
'//     var div2 = `<div class="layui-form">',
'//     <div class="layui-form-item">',
'//         <div class="layui-inline ">',
'//             <div class="layui-input-inline">',
unistr('//               <label class="layui-form-label t-Form-labelContainer col col-2 " style="display: inline-block;padding-right:16px">\7ED3\675F\65F6\95F4  </label>  '),
'//               <input type="text" class="layui-input" style="display:inline-block;width:247px;height:32px;',
'//               background-color:#f9f9f9;',
'//              border:1px solid #dfdfdf;',
'//               " id="my_end_date" >',
'//             </div>',
'//         </div>',
'//     </div>',
'// </div>`;',
'',
'',
'//     $($(''#my_static_div'').find(''.container .row'')[2]).after(div2);',
'//     $($(''#my_static_div'').find(''.container .row'')[2]).after(div);',
'// })',
'',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P92_BEGIN_TIME'',',
'        type: ''time'',',
'        format: ''HH:mm'',',
'        // value: new Date(),',
'        done: function (value, date, endDate) {',
'            console.log(value);',
'            $s(''P92_BEGIN_TIME'', value);',
'        },',
'        ready: formatminutes,',
'        trigger: ''click''',
'    });',
'    function formatminutes(date) {',
unistr('        $($(".laydate-time-list li ol")[2]).find("li").remove();//\6E05\7A7A\79D2'),
'    };',
'})',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P92_END_TIME'',',
'        type: ''time'',',
'        format: ''HH:mm'',',
'        // value: new Date(),',
'        done: function (value, date, endDate) {',
'            console.log(value);',
'            $s(''P92_END_TIME'', value);',
'        },',
'        ready: formatminutes,',
'        trigger: ''click''',
'    });',
'    function formatminutes(date) {',
unistr('        $($(".laydate-time-list li ol")[2]).find("li").remove();//\6E05\7A7A\79D2'),
'    };',
'})'))
,p_css_file_urls=>'#WORKSPACE_FILES#static/layui-v2.6.13/layui/css/modules/layer/default/layer.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.layui-laydate-content>.layui-laydate-list {',
'    padding-bottom: 0px;',
'    overflow: hidden;',
'}',
'.layui-laydate-content>.layui-laydate-list>li{',
'    width:50%',
'}',
'',
'.merge-box .scrollbox .merge-list {',
'    padding-bottom: 5px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2280785156194676478)
,p_plug_name=>unistr('\6D3E\5355\89C4\5219\8BE6\60C5')
,p_region_name=>'my_static_div'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPATCH_CONFIG_ID,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       REMARK,',
'       TENANT_ID,',
'       IS_GLOBAL,',
'       EXT_ORG_ID,',
'       NAME,',
'       IS_ENABLE,',
'       BEGIN_TIME,',
'       END_TIME,',
'       BASE_DEPT_ID as org_id',
'from TENANT_DISPATCH_CONFIG where TENANT_ID=:USERTENANT AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2174218754183034362)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2174219213697034362)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2143768083305279661)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P92_DISPATCH_CONFIG_ID'
,p_button_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2174234900721034369)
,p_branch_action=>'f?p=&APP_ID.:91:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(570389367586478354)
,p_name=>'P92_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(570389468304478355)
,p_name=>'P92_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(570389675776478357)
,p_name=>'P92_ORG_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_default=>'BASE_DEPT_ID'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2143768228965279662)
,p_name=>'P92_OLDID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174219975959034363)
,p_name=>'P92_DISPATCH_CONFIG_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dispatch Config Id'
,p_source=>'DISPATCH_CONFIG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174220388573034363)
,p_name=>'P92_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174220752153034363)
,p_name=>'P92_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174221189219034363)
,p_name=>'P92_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_default=>':USERTENANT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174221543194034364)
,p_name=>'P92_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_prompt=>unistr('\540D\79F0')
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174222016765034364)
,p_name=>'P92_IS_GLOBAL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_default=>'0'
,p_prompt=>unistr('\662F\5426\5168\5C40')
,p_source=>'IS_GLOBAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\662F;1,\5426;0')
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174222371338034364)
,p_name=>'P92_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_default=>'1'
,p_prompt=>unistr('\662F\5426\53EF\7528')
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\662F;1,\5426;0')
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174222746723034364)
,p_name=>'P92_EXT_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_prompt=>unistr('\90E8\95E8')
,p_source=>'EXT_ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name,ext_org_id from MPF_SHARE_DEPT_V where del_flag = 0 and tenant_id = :USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID;'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_display_when=>'P92_DISPATCH_CONFIG_ID'
,p_display_when_type=>'ITEM_IS_NULL_OR_ZERO'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174223209409034364)
,p_name=>'P92_BEGIN_TIME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_prompt=>unistr('\5F00\59CB\65F6\95F4')
,p_source=>'BEGIN_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174223546493034364)
,p_name=>'P92_END_TIME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_prompt=>unistr('\7ED3\675F\65F6\95F4')
,p_source=>'END_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174223981912034365)
,p_name=>'P92_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_item_source_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_prompt=>unistr('\5907\6CE8')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174224332248034365)
,p_name=>'P92_ROW_COUNT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2280785156194676478)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2174229050692034367)
,p_name=>unistr('\663E\793A\548C\9690\85CF')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P92_IS_GLOBAL'
,p_condition_element=>'P92_IS_GLOBAL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174229537636034367)
,p_event_id=>wwv_flow_imp.id(2174229050692034367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_EXT_ORG_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174230069259034367)
,p_event_id=>wwv_flow_imp.id(2174229050692034367)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_EXT_ORG_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2174230511890034367)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174231009650034368)
,p_event_id=>wwv_flow_imp.id(2174230511890034367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',92,''\6D3E\5355\89C4\5219\8BE6\60C5'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2174231383301034368)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2174219213697034362)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174234383167034369)
,p_event_id=>wwv_flow_imp.id(2174231383301034368)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$v(''P92_NAME'')) {',
unistr('    alert(''\8BF7\8F93\5165\540D\79F0'');'),
'    return false;',
'}',
'',
'if ($v(''P92_IS_GLOBAL'') == 0 && (!$v(''P92_EXT_ORG_ID'') && !$v(''P92_OLDID''))) {',
unistr('    alert(''\8BF7\9009\62E9\90E8\95E8'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174231904203034368)
,p_event_id=>wwv_flow_imp.id(2174231383301034368)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'start_exist number(10) := 0;',
'end_exist number(10);',
'',
'begin',
'  select count(*)',
'    INTO start_exist',
'    from tenant_dispatch_config',
'    where tenant_id = :USERTENANT',
'      and (ext_org_id = :P92_EXT_ORG_ID OR ext_org_id = :P92_OLDID)',
'      and nvl(:P92_DISPATCH_CONFIG_ID, 0) <> DISPATCH_CONFIG_ID',
'      and (end_time > :P92_BEGIN_TIME AND begin_time < :P92_BEGIN_TIME',
'               and BASE_DEPT_ID = :BASE_DEPT_ID',
'        OR end_time > :P92_END_TIME AND begin_time < :P92_END_TIME);',
'',
'    apex_util.set_session_state(''P92_ROW_COUNT'',start_exist);',
'end;'))
,p_attribute_02=>'P92_EXT_ORG_ID,P92_BEGIN_TIME,P92_END_TIME,P92_DISPATCH_CONFIG_ID,P92_OLDID'
,p_attribute_03=>'P92_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174232374638034368)
,p_event_id=>wwv_flow_imp.id(2174231383301034368)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P92_ROW_COUNT'') > 0){',
unistr('    alert(''\540C\4E00\90E8\95E8\7684\6267\884C\65F6\95F4\91CD\590D'')'),
'    return false;',
'}',
'else{',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174232864166034368)
,p_event_id=>wwv_flow_imp.id(2174231383301034368)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    row_count   number(3) := 0;',
'    ORG_NAME    VARCHAR2(40);',
'    DISPATCH_ID NUMBER ;',
'BEGIN',
'    IF :P92_DISPATCH_CONFIG_ID IS NULL THEN',
'        INSERT INTO TENANT_DISPATCH_CONFIG(CREATED_BY,',
'                                           CREATION_DATE,',
'                                           UPDATED_BY,',
'                                           UPDATE_DATE,',
'                                           REMARK,',
'                                           TENANT_ID,',
'                                           IS_GLOBAL,',
'                                           EXT_ORG_ID,',
'                                           NAME,',
'                                           IS_ENABLE,',
'                                           BEGIN_TIME,',
'                                           END_TIME,',
'                                           BASE_DEPT_ID)',
'        VALUES (:USER_ID,',
'                sysdate,',
'                :USER_ID,',
'                sysdate,',
'                :P92_REMARK,',
'                :USERTENANT,',
'                :P92_IS_GLOBAL,',
'                :P92_EXT_ORG_ID,',
'                :P92_NAME,',
'                :P92_IS_ENABLE,',
'                :P92_BEGIN_TIME,',
'                :P92_END_TIME,',
'                :BASE_DEPT_ID);',
'        row_count := SQL%ROWCOUNT;',
'        IF row_count > 0 AND :P92_IS_GLOBAL = 0 THEN',
'            SELECT NAME',
'              INTO ORG_NAME',
'              FROM MPF_SHARE_DEPT_V',
'             WHERE EXT_ORG_ID = :P92_EXT_ORG_ID AND TENANT_ID = :USERTENANT',
'            and BASE_DEPT_ID = :BASE_DEPT_ID',
'            ;',
'            SELECT DISPATCH_CONFIG_ID',
'              INTO DISPATCH_ID',
'              FROM TENANT_DISPATCH_CONFIG',
'             WHERE NAME = :P92_NAME AND TENANT_ID = :USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID',
'            ;',
'',
'            INSERT INTO TENANT_DISPATCH_WORK_SCHEDULE (CREATED_BY, CREATION_DATE, UPDATED_BY, UPDATE_DATE, REMARK,',
'                                                       TENANT_ID, START_DATE, DUTY_USER_COUNT, DISPATCH_CONFIG_ID,',
'                                                       LAST_DISPATCH_SORT_NUM, ORG_ID,BASE_DEPT_ID)',
'            VALUES (:USER_ID, SYSDATE, :USER_ID, SYSDATE, ORG_NAME, :USERTENANT, SYSDATE, 1,',
'                    DISPATCH_ID, 0, :P92_EXT_ORG_ID,:BASE_DEPT_ID);',
'        END IF;',
'    ELSE',
'        UPDATE TENANT_DISPATCH_CONFIG',
'           SET UPDATED_BY  = :USER_ID,',
'               UPDATE_DATE = sysdate,',
'               REMARK      = :P92_REMARK,',
'               TENANT_ID   = :USERTENANT,',
'               IS_GLOBAL   = :P92_IS_GLOBAL,',
'               EXT_ORG_ID  = :P92_OLDID,',
'               NAME        = :P92_NAME,',
'               IS_ENABLE   = :P92_IS_ENABLE,',
'               BEGIN_TIME  =:P92_BEGIN_TIME,',
'               END_TIME    = :P92_END_TIME',
'         WHERE DISPATCH_CONFIG_ID = :P92_DISPATCH_CONFIG_ID',
'        and BASE_DEPT_ID = :BASE_DEPT_ID',
'        ;',
'        row_count := SQL%ROWCOUNT;',
'    END IF;',
'    apex_util.set_session_state(''P92_ROW_COUNT'', row_count);',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT',
'        ,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P92_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P92_NAME,P92_IS_GLOBAL,P92_IS_ENABLE,P92_EXT_ORG_ID,P92_REMARK,P92_BEGIN_TIME,P92_END_TIME,P92_DISPATCH_CONFIG_ID,P92_OLDID'
,p_attribute_03=>'P92_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174233335168034369)
,p_event_id=>wwv_flow_imp.id(2174231383301034368)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P92_ROW_COUNT'') > 0) {',
unistr('    alert(''\4FDD\5B58\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\4FDD\5B58\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2174233891971034369)
,p_event_id=>wwv_flow_imp.id(2174231383301034368)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2143768265175279663)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2143768083305279661)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2143768354771279664)
,p_event_id=>wwv_flow_imp.id(2143768265175279663)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'BEGIN',
' DELETE FROM TENANT_DISPATCH_CONFIG WHERE DISPATCH_CONFIG_ID= :P92_DISPATCH_CONFIG_ID',
'  and BASE_DEPT_ID = :BASE_DEPT_ID',
' ;',
' COMMIT;',
'END;'))
,p_attribute_02=>'P92_DISPATCH_CONFIG_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2143768523570279665)
,p_event_id=>wwv_flow_imp.id(2143768265175279663)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2174227908491034366)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2280785156194676478)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \6D3E\5355\89C4\5219\8BE6\60C5')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>48664767920249510
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2174227449187034366)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2280785156194676478)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \6D3E\5355\89C4\5219\8BE6\60C5')
,p_internal_uid=>48664308616249510
);
wwv_flow_imp.component_end;
end;
/
