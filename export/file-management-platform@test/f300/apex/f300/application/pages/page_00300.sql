prompt --application/pages/page_00300
begin
--   Manifest
--     PAGE: 00300
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
 p_id=>300
,p_name=>unistr('\5206\5E73\53F0\7BA1\7406\540E\53F0')
,p_alias=>'SUB_PLATFORM_ADMIN'
,p_step_title=>unistr('\5206\5E73\53F0\7BA1\7406\540E\53F0')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9763788194092138495)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function p300RefreshReport() {',
'    var region = apex.region("p300-report");',
'    if (region && region.refresh) {',
'        region.refresh();',
'    }',
'}',
'',
'function p300ApplyFilter() {',
'    var keywordEl = document.getElementById("p300-keyword");',
'    var tableEl = document.getElementById("report_table_p300-report");',
'    if (!tableEl) {',
'        return;',
'    }',
'',
'    var keyword = keywordEl ? keywordEl.value.trim().toLowerCase() : "";',
'    var rows = tableEl.querySelectorAll("tbody tr");',
'',
'    Array.prototype.forEach.call(rows, function (row) {',
'        var haystack = (row.innerText || row.textContent || "").toLowerCase();',
'        row.style.display = !keyword || haystack.indexOf(keyword) > -1 ? "" : "none";',
'    });',
'}',
'',
'function p300Delete(systemId) {',
unistr('    if (!window.confirm("\786E\8BA4\5220\9664\8BE5\5B50\5E73\53F0\5417\FF1F")) {'),
'        return;',
'    }',
'    apex.server.process("P300_DELETE_SUB_PLATFORM", {',
'        x01: systemId',
'    }, {',
'        dataType: "json",',
'        success: function (data) {',
'            if (data && data.code === "200") {',
unistr('                apex.message.showPageSuccess("\5220\9664\6210\529F");'),
'                p300RefreshReport();',
'                return;',
'            }',
unistr('            apex.message.alert((data && data.message) || "\5220\9664\5931\8D25");'),
'        },',
'        error: function () {',
unistr('            apex.message.alert("\5220\9664\5931\8D25");'),
'        }',
'    });',
'}',
'',
'function p300Enter(systemId, targetUrl) {',
'    apex.server.process("SET_CURRENT_SYSTEM", {',
'        x01: systemId',
'    }, {',
'        dataType: "json",',
'        success: function (data) {',
'            if (data && data.code === "200") {',
'                apex.navigation.redirect(targetUrl);',
'                return;',
'            }',
unistr('            apex.message.alert((data && data.message) || "\5B50\5E73\53F0\5207\6362\5931\8D25");'),
'        },',
'        error: function () {',
unistr('            apex.message.alert("\5B50\5E73\53F0\5207\6362\5931\8D25");'),
'        }',
'    });',
'}',
'',
'function p300OpenDialog(targetUrl) {',
'    if (!targetUrl) {',
'        return;',
'    }',
'    var dialogTrigger = apex.jQuery("#p300-app");',
'',
'    apex.navigation.dialog(targetUrl, {',
unistr('        title: "\7EF4\62A4\5206\5E73\53F0",'),
'        height: "560",',
'        width: "720",',
'        modal: true',
'    }, "t-Dialog-page--standard", dialogTrigger);',
'}',
'',
'function p300Create() {',
'    p300OpenDialog("f?p=&APP_ID.:301:&APP_SESSION.::&DEBUG.:::");',
'}',
'',
'function p300Edit(editUrl) {',
'    p300OpenDialog(editUrl);',
'}',
'',
'apex.jQuery(function () {',
'    var keywordEl = document.getElementById("p300-keyword");',
'    if (!keywordEl) {',
'        return;',
'    }',
'',
'    p300ApplyFilter();',
'',
'    document.addEventListener("click", function (evt) {',
'        var rawTarget = evt.target;',
'        var target = rawTarget && rawTarget.closest ? rawTarget.closest("button") : rawTarget;',
'        if (!target) {',
'            return;',
'        }',
'        if (target && target.id === "p300-create-btn") {',
'            p300Create();',
'            return;',
'        }',
'        if (target && target.dataset && target.dataset.act === "delete") {',
'            p300Delete(target.dataset.id);',
'            return;',
'        }',
'        if (target && target.dataset && target.dataset.act === "edit") {',
'            p300Edit(target.dataset.url);',
'            return;',
'        }',
'        if (target && target.dataset && target.dataset.act === "enter") {',
'            p300Enter(target.dataset.id, target.dataset.url);',
'        }',
'    });',
'',
'    keywordEl.addEventListener("input", p300ApplyFilter);',
'',
'    apex.jQuery("#p300-report").on("apexafterrefresh", p300ApplyFilter);',
'    apex.jQuery("#p300-app").on("apexafterclosedialog", p300RefreshReport);',
'});'))
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
'.p300-wrap {',
'    background: #fff;',
'    border: 1px solid #f0f0f0;',
'    border-radius: 8px;',
'    padding: 20px 24px;',
'}',
'.p300-head {',
'    display: flex;',
'    justify-content: space-between;',
'    align-items: center;',
'    gap: 16px;',
'    margin-bottom: 12px;',
'}',
'.p300-head .t-Button {',
'    height: 36px;',
'    line-height: 34px;',
'    padding: 0 14px;',
'    border-radius: 6px;',
'    font-size: 14px;',
'    font-weight: 500;',
'}',
'.p300-title {',
'    margin: 0;',
'    font-size: 30px;',
'    line-height: 1.2;',
'    font-weight: 600;',
'    color: #111827;',
'}',
'.p300-search-row {',
'    margin-bottom: 14px;',
'}',
'.p300-search {',
'    width: 360px;',
'    max-width: 100%;',
'    height: 40px;',
'    border: 1px solid #d1d5db;',
'    border-radius: 6px;',
'    padding: 0 12px;',
'    font-size: 14px;',
'    color: #111827;',
'    background: #fff;',
'}',
'.p300-table-wrap {',
'    border: 1px solid #e5e7eb;',
'    border-radius: 8px;',
'    overflow: hidden;',
'}',
'.p300-report-region {',
'    margin-top: 0;',
'}',
'.p300-report-region .t-Report-report {',
'    width: 100%;',
'    border-collapse: collapse;',
'}',
'.p300-report-region .t-Report-colHead {',
'    background: #fafafa;',
'    color: #374151;',
'    font-size: 14px;',
'    font-weight: 600;',
'    text-align: left;',
'    padding: 12px 16px;',
'    border-bottom: 1px solid #e5e7eb;',
'}',
'.p300-report-region .t-Report-cell {',
'    padding: 13px 16px;',
'    border-bottom: 1px solid #f3f4f6;',
'    color: #111827;',
'    font-size: 14px;',
'    vertical-align: middle;',
'}',
'.p300-report-region .t-Report-report tbody tr:hover .t-Report-cell {',
'    background: #f8fbff;',
'}',
'.p300-admin-tag {',
'    display: inline-block;',
'    padding: 2px 10px;',
'    border-radius: 999px;',
'    background: #f5f7fb;',
'    border: 1px solid #e6ebf2;',
'    color: #4b5563;',
'    font-size: 12px;',
'    line-height: 20px;',
'    margin-right: 6px;',
'    margin-bottom: 4px;',
'}',
'.p300-admin-text {',
'    color: #6b7280;',
'}',
'.p300-report-region .t-Report-report tbody tr:last-child .t-Report-cell {',
'    border-bottom: none;',
'}',
'.p300-op-cell {',
'    white-space: nowrap;',
'}',
'.p300-op {',
'    border: none;',
'    background: none;',
'    cursor: pointer;',
'    font-size: 14px;',
'    font-weight: 600;',
'    margin-right: 12px;',
'    padding: 0;',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 4px;',
'}',
'.p300-op .fa {',
'    font-size: 12px;',
'}',
'.p300-op-enter {',
'    color: #2563eb;',
'}',
'.p300-op-edit {',
'    color: #d97706;',
'}',
'.p300-op-delete {',
'    color: #dc2626;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13000031042188853764)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9763584751541540271)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9795439067225686436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9763647187114540316)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13000031042188853765)
,p_plug_name=>unistr('\5206\5E73\53F0\5217\8868')
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(9763562566439540264)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="p300-app" class="p300-wrap">',
'  <div class="p300-head">',
unistr('    <h2 class="p300-title">\5206\5E73\53F0\5217\8868</h2>'),
unistr('    <button id="p300-create-btn" type="button" class="t-Button t-Button--hot">+ \521B\5EFA\5206\5E73\53F0</button>'),
'  </div>',
'  <div class="p300-search-row">',
unistr('    <input id="p300-keyword" class="p300-search" type="text" placeholder="\641C\7D22\5E73\53F0\7F16\53F7\3001\540D\79F0\6216\7BA1\7406\5458..." />'),
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13000031042188853769)
,p_plug_name=>unistr('\5206\5E73\53F0\62A5\8868')
,p_region_name=>'p300-report'
,p_plug_template=>wwv_flow_imp.id(9763562566439540264)
,p_plug_display_sequence=>30
,p_region_css_classes=>'p300-table-wrap p300-report-region'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_row_count number := 0;',
'',
'    procedure p(p_text in varchar2) is',
'    begin',
'        sys.htp.p(p_text);',
'    end;',
'begin',
'    p(''<div class="p300-table-wrap p300-report-region">'');',
'    p(''<table id="report_table_p300-report" class="t-Report-report" role="table">'');',
'    p(''<thead><tr>'' ||',
'      ''<th class="t-Report-colHead" scope="col">'' || unistr(''\5E73\53F0\7F16\53F7'') || ''</th>'' ||',
'      ''<th class="t-Report-colHead" scope="col">'' || unistr(''\5E73\53F0\540D\79F0'') || ''</th>'' ||',
'      ''<th class="t-Report-colHead" scope="col">'' || unistr(''\4E1A\52A1\7BA1\7406\5458'') || ''</th>'' ||',
'      ''<th class="t-Report-colHead" scope="col">'' || unistr(''\521B\5EFA\65F6\95F4'') || ''</th>'' ||',
'      ''<th class="t-Report-colHead" scope="col">'' || unistr(''\64CD\4F5C'') || ''</th></tr></thead><tbody>'');',
'',
'    for r in (',
'        select ''PLT-'' || lpad(to_char(s.system_id), 3, ''0'') as system_code,',
'               s.system_name,',
'               nvl((',
'                    select listagg(''<span class="p300-admin-tag">'' || apex_escape.html(x.admin_name) || ''</span>'', '''') within group (order by x.admin_name)',
'                      from (select distinct nvl(bu.name, sc.range_id) as admin_name',
'                              from sts_scope sc',
'                              left join basic_user bu',
'                                on bu.tenant_id = to_number(nvl(nullif(v(''USER_TENANT''), ''''), ''0''))',
'                               and bu.del_flag = 0',
'                               and (sc.range_id = nvl(bu.union_id, to_char(bu.user_id))',
'                                    or sc.range_id = to_char(bu.user_id))',
'                             where sc.reference_type = ''SYSTEM''',
'                               and sc.permissions_type = ''MANAGE''',
'                               and sc.range_type = ''USER''',
'                               and sc.reference_id = s.system_id',
'                           ) x',
'               ), ''<span class="p300-admin-text">-</span>'') as admin_html,',
'               to_char(nvl(s.creation_date, sysdate), ''yyyy-mm-dd'') as creation_date,',
'               ''<div class="p300-op-cell"><button type="button" class="p300-op p300-op-enter" data-act="enter" data-id="'' || s.system_id || ''" data-url="'' || apex_escape.html_attribute(apex_util.prepare_url(p_url => ''f?p=299:9999:0:P300_HANDOFF:'' || v(''DEBUG'') || '':9999:P9999_HANDOFF_USER,P9999_HANDOFF_SYSTEM_ID:'' || nvl(v(''USER_JOB_NUMBER''), v(''APP_USER'')) || '','' || s.system_id, p_checksum_type => ''PUBLIC_BOOKMARK'')) || ''"><span class="fa fa-external-link" aria-hidden="true"></span><span>'' || unistr(''\8FDB\5165'') || ''</span></button>'' ||',
'               ''<button type="button" class="p300-op p300-op-edit" data-act="edit" data-url="'' || apex_escape.html_attribute(apex_page.get_url(p_page => 301, p_items => ''P301_SYSTEM_ID'', p_values => s.system_id)) || ''"><span class="fa fa-pencil" aria-hidden="true"></span><span>'' || unistr(''\7F16\8F91'') || ''</span></button>'' ||',
'               ''<button type="button" class="p300-op p300-op-delete" data-act="delete" data-id="'' || s.system_id || ''"><span class="fa fa-trash-o" aria-hidden="true"></span><span>'' || unistr(''\5220\9664'') || ''</span></button></div>'' as operation_html',
'          from sts_system s',
'         where nvl(s.del_flag, 0) = 0',
'           and nvl(s.is_enable, 1) = 1',
'         order by s.system_id',
'    ) loop',
'        l_row_count := l_row_count + 1;',
'        p(''<tr>'' ||',
'          ''<td class="t-Report-cell">'' || apex_escape.html(r.system_code) || ''</td>'' ||',
'          ''<td class="t-Report-cell">'' || apex_escape.html(r.system_name) || ''</td>'' ||',
'          ''<td class="t-Report-cell">'' || r.admin_html || ''</td>'' ||',
'          ''<td class="t-Report-cell">'' || apex_escape.html(r.creation_date) || ''</td>'' ||',
'          ''<td class="t-Report-cell">'' || r.operation_html || ''</td></tr>'');',
'    end loop;',
'',
'    if l_row_count = 0 then',
'        p(''<tr><td class="t-Report-cell p300-admin-text" colspan="5">'' || unistr(''\6682\65E0\6570\636E'') || ''</td></tr>'');',
'    end if;',
'',
'    p(''</tbody></table>'');',
'    p(''</div>'');',
'end;'))
,p_ajax_enabled=>'Y'
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13000031042188853775)
,p_name=>unistr('\5206\5E73\53F0\5BF9\8BDD\6846\5173\95ED\540E\5237\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(13000031042188853769)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13000031042188853776)
,p_event_id=>wwv_flow_imp.id(13000031042188853775)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(13000031042188853769)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13000031042188853768)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P300_DELETE_SUB_PLATFORM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_system_id       number;',
'    v_next_system_id  number;',
'begin',
'    v_system_id := to_number(apex_application.g_x01);',
'',
'    update sts_system',
'       set del_flag = 1,',
'           is_enable = 0,',
'           updated_by = to_number(v(''MPF_USER_ID'')),',
'           update_date = sysdate',
'     where system_id = v_system_id',
'       and nvl(del_flag, 0) = 0;',
'',
'    apex_json.open_object;',
'    if sql%rowcount = 0 then',
'        apex_json.write(''code'', ''404'');',
unistr('        apex_json.write(''message'', ''\5B50\5E73\53F0\4E0D\5B58\5728\6216\5DF2\5220\9664'');'),
'        apex_json.close_object;',
'        return;',
'    end if;',
'',
'    delete from sts_scope',
'     where reference_type = ''SYSTEM''',
'       and permissions_type = ''MANAGE''',
'       and reference_id = v_system_id;',
'',
'    if to_char(v(''SYSTEM_ID'')) = to_char(v_system_id) then',
'        select min(system_id)',
'          into v_next_system_id',
'          from sts_system',
'         where nvl(del_flag, 0) = 0',
'           and nvl(is_enable, 1) = 1;',
'',
'        apex_util.set_session_state(''SYSTEM_ID'', nvl(v_next_system_id, 1));',
'    end if;',
'',
'    commit;',
'    apex_json.write(''code'', ''200'');',
unistr('    apex_json.write(''message'', ''\5220\9664\6210\529F'');'),
'    apex_json.close_object;',
'exception',
'    when others then',
'        rollback;',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''500'');',
unistr('        apex_json.write(''message'', ''\5220\9664\5931\8D25'');'),
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13061466163549059216
);
wwv_flow_imp.component_end;
end;
/
