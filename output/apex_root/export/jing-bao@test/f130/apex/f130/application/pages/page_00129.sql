prompt --application/pages/page_00129
begin
--   Manifest
--     PAGE: 00129
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
 p_id=>129
,p_name=>'TEST_LOV'
,p_alias=>unistr('\4E3B\9875-\770B\677F')
,p_step_title=>unistr('\90E8\95E8\65F6\957F\5361\7247')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// document.addEventListener("click", function (event) {',
'//     console.log("Click event occurred.");',
'//     var buttonElements = document.querySelectorAll(''.t-Button--small, .t-Button--large, .t-Button--xlarge'');',
'//     buttonElements.forEach(function (buttonElement) {',
'//         // buttonElement.style.setProperty(''--a-button-padding-x'', ''0'', ''important'');',
'//         console.log(buttonElement);',
'//         $(buttonElement).css({ ''font-size'': ''10px'', ''--a-button-padding-x'': ''0px'' });',
'//         $(''span[class="t-Report-paginationText"]'').css({ ''padding-left'': ''0px'', ''padding-right'': ''0px'' });',
'//         $(buttonElement).find(''a'').css({ ''font-size'': ''10px'', ''--a-button-padding-x'': ''0px'' });',
'',
'//     });',
'// });',
'',
'',
'// var submitButton = document.getElementById("P129_TYPE_1");',
'',
'// var submitButton = $(''input[name="P129_TYPE_1"]'');',
'// console.log(submitButton);',
'',
'// submitButton.addEventListener("click", function (e) {',
'// 	//  alert(5);',
'// 	console.log($v(''P129_TYPE_1''));',
'// 	$s(''P129_TYPE_HIDE'', $(e).val());',
'',
'// 	apex.region(''test'').refresh();',
'// });',
'',
unistr('// \4E2A\4EBA\6570\91CF'),
'var submitButton = document.getElementsByName("P129_TYPE_1");',
'',
'function individual_quantity_refresh() {',
'	apex.region(''individual_quantity'').refresh();',
'}',
'',
'submitButton.forEach(function (buttonElement) {',
'',
'	buttonElement.addEventListener("click", function (e) {',
'		console.log(2, e.target);',
'		console.log($v(''P129_TYPE_1'') + ''a'');',
'		$s(''P129_TYPE'', $(e.target).val());',
'		individual_quantity_refresh();',
'		// console.log(e + ''e'');',
'',
'	});',
'',
'});',
'',
unistr('// \4E2A\4EBA\5E73\5747\65F6\957F'),
'var submitButton_2 = document.getElementsByName("P129_TYPE_2");',
'function individual_duration_refresh() {',
'	apex.region(''individual_duration'').refresh();',
'}',
'',
'submitButton_2.forEach(function (buttonElement_2) {',
'',
'	buttonElement_2.addEventListener("click", function (e) {',
'		individual_duration_refresh();',
'		console.log(e + ''e'');',
'',
'	});',
'',
'});',
'',
unistr('// \4E2A\4EBA\5E73\5747\54CD\5E94\65F6\957F'),
'var submitButton_3 = document.getElementsByName("P129_TYPE_3");',
'function individual_response_refresh() {',
'	apex.region(''individual_response'').refresh();',
'}',
'',
'submitButton_3.forEach(function (buttonElement_3) {',
'',
'	buttonElement_3.addEventListener("click", function () {',
'		individual_response_refresh();',
'	});',
'',
'});',
'',
'',
'',
unistr('//  \56E2\961F\6570\91CF'),
'var team_1 = document.getElementsByName("P129_TEAM_TYPE_1");',
'function team_quantity_refresh() {',
'	apex.region(''team_quantity'').refresh();',
'}',
'',
'team_1.forEach(function (team_buttonElement_1) {',
'',
'	team_buttonElement_1.addEventListener("click", function () {',
'	team_quantity_refresh();',
'	});',
'',
'});',
'',
unistr('//  \56E2\961F\5E73\5747\65F6\957F'),
'var team_2 = document.getElementsByName("P129_TEAM_TYPE_2");',
'function team_duration_refresh() {',
'	apex.region(''team_duration'').refresh();',
'}',
'',
'team_2.forEach(function (team_buttonElement_2) {',
'',
'	team_buttonElement_2.addEventListener("click", function () {',
'		team_duration_refresh();',
'	});',
'',
'});',
'',
'',
unistr('//  \56E2\961F\5E73\5747\54CD\5E94\65F6\957F'),
'var team_3 = document.getElementsByName("P129_TEAM_TYPE_3");',
'function team_response_refresh() {',
'	apex.region(''team_response'').refresh();',
'}',
'',
'team_3.forEach(function (team_buttonElement_3) {',
'',
'	team_buttonElement_3.addEventListener("click", function () {',
'		team_response_refresh();',
'	});',
'',
'});',
'',
'',
unistr('//  \90E8\95E8\6570\91CF'),
'var department_1 = document.getElementsByName("P129_DEPARTMENT_TYPE_1");',
'function department_quantity_refresh() {',
'	apex.region(''department_quantity'').refresh();',
'}',
'',
'department_1.forEach(function (department_buttonElement_1) {',
'',
'	department_buttonElement_1.addEventListener("click", function () {',
'	department_quantity_refresh();',
'	});',
'',
'});',
'',
unistr('//  \90E8\95E8\5E73\5747\65F6\957F'),
'var department_2 = document.getElementsByName("P129_DEPARTMENT_TYPE_2");',
'function department_duration_refresh() {',
'	apex.region(''department_duration'').refresh();',
'}',
'',
'department_2.forEach(function (department_buttonElement_2) {',
'',
'	department_buttonElement_2.addEventListener("click", function () {',
'	department_duration_refresh();',
'	});',
'',
'});',
'',
unistr('//  \90E8\95E8\5E73\5747\54CD\5E94\65F6\957F'),
'var department_3 = document.getElementsByName("P129_DEPARTMENT_TYPE_3");',
'function department_response_refresh() {',
'	apex.region(''department_response'').refresh();',
'}',
'',
'department_3.forEach(function (department_buttonElement_3) {',
'',
'	department_buttonElement_3.addEventListener("click", function () {',
'	department_response_refresh();',
'	});',
'',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region-buttons-right{',
'    margin-top: -25px;',
'    margin-bottom: -25px;',
'} ',
'',
'.apex-item-option{',
'    width:50px;',
'}',
'',
'.t-BadgeList--dash .t-BadgeList-wrap{',
'    padding:var(--ut-badgelist-wrap-padding,1.35rem) !important;',
'    margin-top:20px !important;',
'    --ut-badgelist-label-line-height:35px !important;',
'}',
'',
'.t-CardsRegion.u-colors.margin-top-md {',
'  margin-block-start: 1.0rem !important;',
'}',
'',
'',
'',
'.t-Report-wrap{',
'    width:100%;',
'    overflow-x: auto;',
'}',
'',
'',
'.fa:before {',
'   margin-right: 10px; ',
'}',
'',
'.t-AVPList--variableLabelLarge{',
'--ut-avp-label-width:20% !important}',
'',
'/* .t-Form-fieldContainer--floatingLabel{',
'    --ut-field-fl-label-offset: 7px !important;',
'} */'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2559724796881548576)
,p_plug_name=>unistr('\770B\677F')
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple:t-TabsRegion-mod--large'
,p_plug_template=>wwv_flow_imp.id(2302052297226836202)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2559724854170548577)
,p_plug_name=>unistr('\4E2A\4EBA\770B\677F')
,p_parent_plug_id=>wwv_flow_imp.id(2559724796881548576)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2566190178014402868)
,p_name=>unistr('\4E2A\4EBA\5F02\5E38\8BA1\6570')
,p_parent_plug_id=>wwv_flow_imp.id(2559724854170548577)
,p_template=>wwv_flow_imp.id(2302045568724836200)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-lg'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_new_grid_row=>false
,p_grid_column_span=>3
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select event_type, total, decode(event_type, ''\5DF2\5B8C\6210\7684\5DE5\5355\6570'', ''RESOLVED'', ''WAIT_RESOLVE'') event_status'),
'from (',
unistr('    select s1.\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38 + s2.\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38 "\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38",'),
unistr('           s1.\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38 + s2.\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38 "\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38",'),
unistr('           s1.\5DF2\5B8C\6210\7684\5DE5\5355\6570 + s2.\5DF2\5B8C\6210\7684\5DE5\5355\6570   "\5DF2\5B8C\6210\7684\5DE5\5355\6570"'),
'    from (',
'             select ''A''                         tag,',
'                    nvl(sum(case',
'                                when e.STATUS = ''RESOLVED'' then',
'                                    1',
unistr('                                else 0 end), 0) "\5DF2\5B8C\6210\7684\5DE5\5355\6570",'),
'                    nvl(sum(case',
'                                when e.IS_STOP_LINE = ''TRUE'' AND',
'                                     e.STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                                    then',
'                                    1',
unistr('                                else 0 end), 0) "\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38",'),
'                    nvl(sum(case',
'                                when e.IS_STOP_LINE = ''FALSE'' AND',
'                                     e.STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                                    then',
'                                    1',
unistr('                                else 0 end), 0) "\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38"'),
'             from TENANT_EVENT e',
'             WHERE e.TENANT_ID = :USERTENANT',
'               and e.SUBMIT_USER_ID = :USER_ID',
'               and e.BASE_DEPT_ID = :BASE_DEPT_ID',
'               AND e.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'               AND e.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1) s1',
'             inner join (',
'        SELECT ''A''                         tag,',
'               nvl(sum(case',
'                           when t.EVENT_STATUS = ''RESOLVED'' then',
'                               1',
unistr('                           else 0 end), 0) "\5DF2\5B8C\6210\7684\5DE5\5355\6570",'),
'               nvl(sum(case',
'                           when t.IS_STOP_LINE = ''TRUE'' AND',
'                                t.EVENT_STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                               then',
'                               1',
unistr('                           else 0 end), 0) "\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38",'),
'               nvl(sum(case',
'                           when t.IS_STOP_LINE = ''FALSE'' AND',
'                                t.EVENT_STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                               then',
'                               1',
unistr('                           else 0 end), 0) "\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38"'),
'        FROM TENANT_EVENT_USER_CONVERGE t',
'        WHERE t.IS_ARCHIVE = 0',
'          AND t.TENANT_ID = :USERTENANT',
'          AND t.USER_IDENTITY=''MAIN''',
unistr('          AND t.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'          and t.BASE_DEPT_ID = :BASE_DEPT_ID',
'          AND t.JOB_NUMBER = :USERJOBNUMBER',
'          AND t.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'          AND t.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'    ) s2 on s1.tag = s2.tag',
unistr(') s unpivot ( total for event_type in ("\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38","\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38","\5DF2\5B8C\6210\7684\5DE5\5355\6570"))'),
unistr('order by decode(event_type, ''\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38'', 1, ''\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38'', 2, ''\5DF2\5B8C\6210\7684\5DE5\5355\6570'', 3);'),
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2302072847545836211)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2353426949740712111)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Event Type'
,p_column_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:45:P45_BEGIN,P45_END,P45_STATUS:&P129_START_TIME.,&P129_END_TIME.,#EVENT_STATUS#'
,p_column_linktext=>'#EVENT_TYPE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2353427380066712110)
,p_query_column_id=>2
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>20
,p_column_heading=>'Total'
,p_column_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:45:P45_BEGIN,P45_END,P45_STATUS:&P129_START_TIME.,&P129_END_TIME.,#EVENT_STATUS#'
,p_column_linktext=>'#TOTAL#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2352229791128676164)
,p_query_column_id=>3
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2566190429046402871)
,p_name=>unistr('\4E2A\4EBA\65F6\957F\5361\7247')
,p_region_name=>'p_card'
,p_parent_plug_id=>wwv_flow_imp.id(2559724854170548577)
,p_template=>wwv_flow_imp.id(2302029553726836195)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleA:margin-top-none'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--cols t-BadgeList--3cols:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select s1.event_type              as event_type_1,',
'       to_char(nvl(s1.total, 0), ''fm999999990.0'') as total_1,',
'       s2.event_type              as event_type_2,',
'       to_char(nvl(s2.total, 0), ''fm999999990.0'') as total_2,',
'       s3.event_type              as event_type_3,',
'       to_char(nvl(s3.total, 0), ''fm999999990.0'') as total_3',
'',
'from (select sum(',
'                     OWN_DURATION_MINUTE / 60',
'                 ) as   total,',
unistr('             ''\4E3B\8D23-\603B\89E3\51B3\65F6\957F'' event_type,'),
'             ''A''        tag',
'',
'      from TENANT_EVENT_USER_CONVERGE s',
unistr('      where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'        and s.USER_IDENTITY = ''MAIN''',
'        and s.IS_ARCHIVE = 0',
'        and s.TENANT_ID = :USERTENANT',
'        and s.JOB_NUMBER = :USERJOBNUMBER',
'        and s.EVENT_STATUS = ''RESOLVED''',
'        and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'        and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'        and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1) s1',
'         inner join',
'',
'     (select avg(',
'                     OWN_DURATION_MINUTE / 60',
'                 ) as    total,',
unistr('             ''\4E3B\8D23-\5E73\5747\89E3\51B3\65F6\957F'' event_type,'),
'             ''A''         tag',
'',
'      from TENANT_EVENT_USER_CONVERGE s',
unistr('      where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'        and s.USER_IDENTITY = ''MAIN''',
'        and s.IS_ARCHIVE = 0',
'        and s.TENANT_ID = :USERTENANT',
'        and s.JOB_NUMBER = :USERJOBNUMBER',
'        and s.EVENT_STATUS = ''RESOLVED''',
'        and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'        and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'        and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1) s2 on s2.tag = s1.tag',
'         inner join (',
'    select avg(',
'                   OWN_RESPONSE_TIME / 60',
'               ) as    total,',
unistr('           ''\4E3B\8D23-\5E73\5747\54CD\5E94\65F6\957F'' event_type,'),
'           ''A''         tag',
'    from TENANT_EVENT_USER_CONVERGE s',
unistr('    where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'      and s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
'      and s.USER_IDENTITY = ''MAIN''',
'      and s.IS_ARCHIVE = 0',
'      and s.TENANT_ID = :USERTENANT',
'      and s.JOB_NUMBER = :USERJOBNUMBER',
'      and s.EVENT_STATUS = ''RESOLVED''',
'      and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'      and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'      and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1) s3 on s3.tag = s1.tag;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2302057469616836205)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124727263850986958)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPE_1'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124727405505986959)
,p_query_column_id=>2
,p_column_alias=>'TOTAL_1'
,p_column_display_sequence=>20
,p_column_heading=>unistr('\603B\89E3\51B3\65F6\957F(\4E3B\8D23)')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124727488777986960)
,p_query_column_id=>3
,p_column_alias=>'EVENT_TYPE_2'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124727631516986961)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_2'
,p_column_display_sequence=>40
,p_column_heading=>unistr('\5E73\5747\89E3\51B3\65F6\957F(\4E3B\8D23)')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124727674819986962)
,p_query_column_id=>5
,p_column_alias=>'EVENT_TYPE_3'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124727770406986963)
,p_query_column_id=>6
,p_column_alias=>'TOTAL_3'
,p_column_display_sequence=>60
,p_column_heading=>unistr('\5E73\5747\54CD\5E94\65F6\957F(\4E3B\8D23)')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2566191017110402876)
,p_plug_name=>unistr('\5DF2\5B8C\6210\7684\5DE5\5355')
,p_parent_plug_id=>wwv_flow_imp.id(2559724854170548577)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EVENT_CODE, EVENT_TYPE, sum(E_COUNT) EVENT_COUNT',
'from (',
'         SELECT t.SECOND_EVENT_CODE EVENT_CODE,',
'                t.SECOND_EVENT_NAME EVENT_TYPE,',
'                count(EVENT_ID)     E_COUNT',
'         FROM TENANT_EVENT_USER_CONVERGE t',
'         WHERE t.IS_ARCHIVE = 0',
'           and t.TENANT_ID = :USERTENANT',
'           and t.EVENT_STATUS = ''RESOLVED''',
unistr('           AND t.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           AND t.JOB_NUMBER = :USERJOBNUMBER',
'           and t.BASE_DEPT_ID = :BASE_DEPT_ID',
'           AND t.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'           AND t.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'         group by t.SECOND_EVENT_CODE, t.SECOND_EVENT_NAME',
'',
'         union all',
'',
'         select e.SECOND_EVENT_CODE EVENT_CODE,',
'                c.NAME              EVENT_TYPE,',
'                count(EVENT_ID)     E_COUNT',
'         from TENANT_EVENT e',
'                  inner join TENANT_EVENT_CATEGORY c on e.SECOND_EVENT_CODE = c.CODE and c.TENANT_ID = e.TENANT_ID',
'         WHERE e.DEL_FLAG = 0',
'           and e.STATUS = ''RESOLVED''',
'           AND e.TENANT_ID = :USERTENANT',
'           AND e.SUBMIT_USER_ID = :USER_ID',
'           and e.BASE_DEPT_ID = :BASE_DEPT_ID',
'           AND e.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'           AND e.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'         group by e.SECOND_EVENT_CODE, c.NAME)',
'group by EVENT_CODE, EVENT_TYPE'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353435191506712105)
,p_region_id=>wwv_flow_imp.id(2566191017110402876)
,p_chart_type=>'pie'
,p_height=>'395'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'on'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'percent'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'end'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353435730554712105)
,p_chart_id=>wwv_flow_imp.id(2353435191506712105)
,p_seq=>10
,p_name=>unistr('\4E2A\4EBA\5DF2\5B8C\6210\7684\5DE5\5355-\997C\56FE')
,p_max_row_count=>10000
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'EVENT_COUNT'
,p_items_label_column_name=>'EVENT_TYPE'
,p_items_short_desc_column_name=>'EVENT_COUNT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2566191453926402881)
,p_plug_name=>unistr('\4E2A\4EBA\53C2\4E0E\5DE5\5355\6570\91CF\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\4E2A\FF09')
,p_region_name=>'individual_quantity'
,p_parent_plug_id=>wwv_flow_imp.id(2559724854170548577)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353436638016712104)
,p_region_id=>wwv_flow_imp.id(2566191453926402881)
,p_chart_type=>'combo'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353438241822712104)
,p_chart_id=>wwv_flow_imp.id(2353436638016712104)
,p_seq=>10
,p_name=>unistr('\4E2A\4EBA\53C2\4E0E\5DE5\5355\6570\91CF\5BF9\6BD4\67F1\72B6\56FE')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_CONDITION = ''yyyy-iw'' and :P129_TYPE = ''ACCOUNTABILITY'' then',
'        return q''~',
' select to_char(s.BEGIN_TIME, :P129_CONDITION) date_type,',
'                ''#086EFE''                              color,',
'                count(1)                                      total,',
unistr('                ''\4E3B\8D23''                                   event_type'),
'         from TENANT_EVENT_USER_CONVERGE s',
unistr('         where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.USER_IDENTITY = ''MAIN''',
'           and s.IS_ARCHIVE = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and s.JOB_NUMBER = :USERJOBNUMBER',
'group by to_char(s.BEGIN_TIME, :P129_CONDITION) order by to_char(s.BEGIN_TIME, :P129_CONDITION)',
'         ~'';',
'    elsif :P129_CONDITION = ''yyyy-iw'' and :P129_TYPE = ''ASSIST'' then',
'        return q''~   ',
'         select to_char(s.BEGIN_TIME, :P129_CONDITION) date_type,',
'                ''#4EA8FB''                              color,',
'                count(1)                                      total,',
unistr('                ''\534F\52A9''                                   event_type'),
'         from TENANT_EVENT_USER_CONVERGE s',
unistr('         where not (s.OBLIGATION_DEPT = ''\4E3B\8D23'' and s.USER_IDENTITY = ''MAIN'')'),
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and (s.USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'           and s.IS_ARCHIVE = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and s.JOB_NUMBER = :USERJOBNUMBER',
'         group by to_char(s.BEGIN_TIME, :P129_CONDITION) order by to_char(s.BEGIN_TIME, :P129_CONDITION);',
'         ~'';',
'    elsif :P129_CONDITION = ''yyyy-iw'' and :P129_TYPE = ''HARMONIZE'' then',
'        return q''~',
'         select to_char(s.BEGIN_TIME, :P129_CONDITION) date_type,',
'                ''#64E1D2''                              color,',
'                count(1)                                      total,',
unistr('                ''\534F\8C03''                                   event_type'),
'         from TENANT_EVENT_USER_CONVERGE s',
'         where s.USER_IDENTITY in (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.IS_ARCHIVE = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and s.JOB_NUMBER = :USERJOBNUMBER',
'          group by to_char(s.BEGIN_TIME, :P129_CONDITION) order by to_char(s.BEGIN_TIME, :P129_CONDITION);',
'         ~'';',
'    elsif :P129_CONDITION = ''yyyy-iw'' and :P129_TYPE = ''REPORT'' then',
'        return q''~',
'         select to_char(s.BEGIN_TIME, :P129_CONDITION) date_type,',
'                ''#26CABD''                              color,',
'                count(1)                                      total,',
unistr('                ''\4E0A\62A5''                                   event_type'),
'         from TENANT_EVENT s',
'         where not exists(',
'                 select 1',
'                 from TENANT_EVENT_USER_CONVERGE e',
'                 where e.IS_ARCHIVE = 0',
'                   and e.EVENT_STATUS = ''RESOLVED''',
'                   and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'                   and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                   and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'                   and e.TENANT_ID = :USERTENANT',
'                   and e.EVENT_ID = s.EVENT_ID',
'             )',
'           and s.STATUS = ''RESOLVED''',
'           and s.DEL_FLAG = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and s.SUBMIT_USER_ID = :USER_ID',
'           group by to_char(s.BEGIN_TIME, :P129_CONDITION) order by to_char(s.BEGIN_TIME, :P129_CONDITION);',
'         ~'';',
'    elsif :P129_CONDITION = ''yyyy-mm'' and :P129_TYPE = ''ACCOUNTABILITY'' then',
'        return q''~',
'         select to_char(s.BEGIN_TIME, :P129_CONDITION) date_type,',
'                ''#086EFE''                              color,',
'                count(1)                                      total,',
unistr('                ''\4E3B\8D23''                                   event_type'),
'         from TENANT_EVENT_USER_CONVERGE s',
unistr('         where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.USER_IDENTITY = ''MAIN''',
'           and s.IS_ARCHIVE = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and s.JOB_NUMBER = :USERJOBNUMBER',
'          group by to_char(s.BEGIN_TIME, :P129_CONDITION) order by to_char(s.BEGIN_TIME, :P129_CONDITION);',
'         ~'';',
'    elsif :P129_CONDITION = ''yyyy-mm'' and :P129_TYPE = ''ASSIST'' then',
'        return q''~',
'         select to_char(s.BEGIN_TIME, :P129_CONDITION) date_type,',
'                ''#4EA8FB''                              color,',
'                count(1)                                      total,',
unistr('                ''\534F\52A9''                                   event_type'),
'',
'         from TENANT_EVENT_USER_CONVERGE s',
unistr('         where not (s.OBLIGATION_DEPT = ''\4E3B\8D23'' and s.USER_IDENTITY = ''MAIN'')'),
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and (s.USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'           and s.IS_ARCHIVE = 0',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and s.JOB_NUMBER = :USERJOBNUMBER',
'          group by to_char(s.BEGIN_TIME, :P129_CONDITION) order by to_char(s.BEGIN_TIME, :P129_CONDITION);',
'          ~'';',
'    elsif :P129_CONDITION = ''yyyy-mm'' and :P129_TYPE = ''HARMONIZE'' then',
'        return q''~',
'         select to_char(s.BEGIN_TIME, :P129_CONDITION) date_type,',
'                ''#64E1D2''                              color,',
'                count(1)                                      total,',
unistr('                ''\534F\8C03''                                   event_type'),
'',
'         from TENANT_EVENT_USER_CONVERGE s',
'         where s.USER_IDENTITY in (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.IS_ARCHIVE = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and s.JOB_NUMBER = :USERJOBNUMBER',
'         group by to_char(s.BEGIN_TIME, :P129_CONDITION) order by to_char(s.BEGIN_TIME, :P129_CONDITION);',
'          ~'';',
'    else',
'        return q''~',
'         select to_char(s.BEGIN_TIME, :P129_CONDITION) date_type,',
'                ''#26CABD''                              color,',
'                count(1)                                    total,',
unistr('                ''\4E0A\62A5''                                   event_type'),
'         from TENANT_EVENT s',
'         where not exists(',
'                 select 1',
'                 from TENANT_EVENT_USER_CONVERGE e',
'                 where e.IS_ARCHIVE = 0',
'                   and e.EVENT_STATUS = ''RESOLVED''',
'                   and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'                   and e.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                   and e.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'                   and e.TENANT_ID = :USERTENANT',
'                   and e.EVENT_ID = s.EVENT_ID',
'             )',
'           and s.STATUS = ''RESOLVED''',
'           and s.DEL_FLAG = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and s.SUBMIT_USER_ID = :USER_ID',
'         group by to_char(s.BEGIN_TIME, :P129_CONDITION) order by to_char(s.BEGIN_TIME, :P129_CONDITION);',
'         ~'';',
'    end if;',
'end;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME,P129_CONDITION,P129_TYPE'
,p_series_type=>'bar'
,p_series_name_column_name=>'EVENT_TYPE'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'DATE_TYPE'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353437668690712104)
,p_chart_id=>wwv_flow_imp.id(2353436638016712104)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353437042219712104)
,p_chart_id=>wwv_flow_imp.id(2353436638016712104)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2566192013647402886)
,p_plug_name=>unistr('\4E2A\4EBA\590D\76D8\6570\91CF\7EDF\8BA1\56FE')
,p_parent_plug_id=>wwv_flow_imp.id(2559724854170548577)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353439608280712102)
,p_region_id=>wwv_flow_imp.id(2566192013647402886)
,p_chart_type=>'bar'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353441332172712102)
,p_chart_id=>wwv_flow_imp.id(2353439608280712102)
,p_seq=>10
,p_name=>unistr('\4E2A\4EBA\590D\76D8\6570\91CF\7EDF\8BA1\56FE-\67F1\72B6\56FE')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_CONDITION_5 = ''yyyy-iw'' then',
'        return q''~',
'select count(EVENT_ANALYZE_ID)                                                              e_count,',
'       to_char(UPDATE_DATE, :P129_CONDITION_5) || decode(:P129_CONDITION_5, ''yyyy-iw'', ''W'', '''') date_type',
'from TENANT_EVENT_ANALYZE a',
'where a.TENANT_ID = :USERTENANT',
'  and a.DEL_FLAG = 0',
'  and a.AUDIT_STATE = ''COMPLETE''',
'  and a.SUBMIT_USER_ID = :USER_ID',
'  and a.BASE_DEPT_ID = :BASE_DEPT_ID',
'  and a.UPDATE_DATE >= GET_DAY_OF_WEEK(to_date(:P129_START_TIME, ''yyyy-mm-dd''), 1)',
'  and a.UPDATE_DATE <= GET_DAY_OF_WEEK(to_date(:P129_END_TIME, ''yyyy-mm-dd''), 7) + 1',
'group by to_char(UPDATE_DATE, :P129_CONDITION_5) || decode(:P129_CONDITION_5, ''yyyy-iw'', ''W'', '''')',
'            ~'';',
'    else',
'        return q''~',
'select count(EVENT_ANALYZE_ID)                                                              e_count,',
'       to_char(UPDATE_DATE, :P129_CONDITION_5) || decode(:P129_CONDITION_5, ''yyyy-iw'', ''W'', '''') date_type',
'from TENANT_EVENT_ANALYZE a',
'where a.TENANT_ID = :USERTENANT',
'  and a.DEL_FLAG = 0',
'  and a.AUDIT_STATE = ''COMPLETE''',
'  and a.SUBMIT_USER_ID = :USER_ID',
'  and a.BASE_DEPT_ID = :BASE_DEPT_ID',
'  and a.UPDATE_DATE >= GET_DAY_OF_MONTH(to_date(:P129_START_TIME, ''yyyy-mm-dd''), ''first'')',
'  and a.UPDATE_DATE <= GET_DAY_OF_MONTH(to_date(:P129_END_TIME, ''yyyy-mm-dd''), ''last'') + 1',
'group by to_char(UPDATE_DATE, :P129_CONDITION_5) || decode(:P129_CONDITION_5, ''yyyy-iw'', ''W'', '''')',
'            ~'';',
'    end if;',
'end;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME,P129_CONDITION_5'
,p_items_value_column_name=>'E_COUNT'
,p_items_label_column_name=>'DATE_TYPE'
,p_color=>'#50a9fe'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353440138051712102)
,p_chart_id=>wwv_flow_imp.id(2353439608280712102)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353440737104712102)
,p_chart_id=>wwv_flow_imp.id(2353439608280712102)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2566192518404402891)
,p_plug_name=>unistr('\4E2A\4EBA\5E73\5747\89E3\51B3\65F6\957F\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\5C0F\65F6\FF09')
,p_region_name=>'individual_duration'
,p_parent_plug_id=>wwv_flow_imp.id(2559724854170548577)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'.t-Region-buttons-right{    margin-top: -25px;    margin-bottom: -25px;} .apex-item-option{    width:50px;}.t-BadgeList--dash .t-BadgeList-wrap{    padding:var(--ut-badgelist-wrap-padding,1.35rem) !important;}.t-CardsRegion.u-colors.margin-top-md {  '
||'margin-block-start: 1.2rem !important;}/* .margin-top-lg{    margin-right:-4.2rem !important;}.margin-top-md{    margin-left:3.5rem !important;} */'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353442607687712101)
,p_region_id=>wwv_flow_imp.id(2566192518404402891)
,p_chart_type=>'combo'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353444295278712100)
,p_chart_id=>wwv_flow_imp.id(2353442607687712101)
,p_seq=>10
,p_name=>unistr('\4E2A\4EBA\5E73\5747\89E3\51B3\65F6\957F-\67F1\72B6\56FE')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_CONDITION_2 = ''yyyy-iw'' and :P129_TYPE_2 = ''ACCOUNTABILITY'' then',
'        return q''~',
'             select to_char(BEGIN_TIME, :P129_CONDITION_2) date_type,',
'                avg(OWN_DURATION_MINUTE) / 60',
'                    as                         TOTAL,',
unistr('                ''\4E3B\8D23''                           EVENT_TYPE,'),
'                ''#086EFE''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
unistr('         where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           and s.USER_IDENTITY = ''MAIN''',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_2) order by to_char(BEGIN_TIME, :P129_CONDITION_2);',
'         ~'';',
'    elsif :P129_CONDITION_2 = ''yyyy-iw'' and :P129_TYPE_2 = ''ASSIST'' then',
'        return q''~',
'        select to_char(BEGIN_TIME, :P129_CONDITION_2) date_type,',
'                avg(OWN_DURATION_MINUTE) / 60',
'                    as                         TOTAL,',
unistr('                ''\534F\52A9''                           EVENT_TYPE,'),
'                ''#4EA8FB''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
unistr('         where not (OBLIGATION_DEPT = ''\4E3B\8D23'' and USER_IDENTITY = ''MAIN'')'),
'           and (USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'            and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_2) order by to_char(BEGIN_TIME, :P129_CONDITION_2)',
'         ~'';',
'    elsif :P129_CONDITION_2 = ''yyyy-iw'' and :P129_TYPE_2 = ''HARMONIZE'' then',
'        return q''~',
'         select to_char(BEGIN_TIME, :P129_CONDITION_2) date_type,',
'                avg(OWN_DURATION_MINUTE) / 60',
'                    as                         TOTAL,',
unistr('                ''\534F\8C03''                           EVENT_TYPE,'),
'                ''#64E1D2''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
'         where s.USER_IDENTITY in',
'               (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_2) order by to_char(BEGIN_TIME, :P129_CONDITION_2);',
'         ~'';',
'    elsif :P129_CONDITION_2 = ''yyyy-iw'' and :P129_TYPE_2 = ''REPORT'' then',
'        return q''~',
'          select to_char(BEGIN_TIME, :P129_CONDITION_2)        date_type,',
'                avg(ceil((e.END_TIME - e.BEGIN_TIME) * 24)) TOTAL,',
unistr('                ''\4E0A\62A5''                                   EVENT_TYPE,'),
'                ''#26CABD''                              COLOR',
'         from TENANT_EVENT e',
'         where not exists(',
'                 select 1',
'                 from TENANT_EVENT_USER_CONVERGE s',
'                 where s.IS_ARCHIVE = 0',
'                   and s.EVENT_STATUS = ''RESOLVED''',
'                   and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'                   and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                   and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'                   and s.TENANT_ID = :USERTENANT',
'                   and e.EVENT_ID = s.EVENT_ID',
'             )',
'           and e.TENANT_ID = :USERTENANT',
'           and e.DEL_FLAG = 0',
'           and e.STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and e.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and e.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'            and e.SUBMIT_USER_ID = :USER_ID',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_2) order by to_char(BEGIN_TIME, :P129_CONDITION_2);',
'         ~'';',
'    elsif :P129_CONDITION_2 = ''yyyy-mm'' and :P129_TYPE_2 = ''ACCOUNTABILITY'' then',
'        return q''~',
'        select to_char(BEGIN_TIME, :P129_CONDITION_2) date_type,',
'                avg(OWN_DURATION_MINUTE) / 60',
'                    as                         TOTAL,',
unistr('                ''\4E3B\8D23''                           EVENT_TYPE,'),
'                ''#086EFE''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
unistr('         where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           and s.USER_IDENTITY = ''MAIN''',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_2) order by to_char(BEGIN_TIME, :P129_CONDITION_2);',
'         ~'';',
'    elsif :P129_CONDITION_2 = ''yyyy-mm'' and :P129_TYPE_2 = ''ASSIST'' then',
'        return q''~',
'         select to_char(BEGIN_TIME, :P129_CONDITION_2) date_type,',
'                avg(OWN_DURATION_MINUTE)/ 60',
'                    as                         TOTAL,',
unistr('                ''\534F\52A9''                           EVENT_TYPE,'),
'                ''#4EA8FB''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
unistr('         where not (OBLIGATION_DEPT = ''\4E3B\8D23'' and USER_IDENTITY = ''MAIN'')'),
'           and (USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_2) order by to_char(BEGIN_TIME, :P129_CONDITION_2);',
'          ~'';',
'    elsif :P129_CONDITION_2 = ''yyyy-mm'' and :P129_TYPE_2 = ''HARMONIZE'' then',
'        return q''~',
'         select to_char(BEGIN_TIME,:P129_CONDITION_2) date_type,',
'                avg(OWN_DURATION_MINUTE)/ 60',
'                    as                         TOTAL,',
unistr('                ''\534F\8C03''                           EVENT_TYPE,'),
'                ''#64E1D2''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
'         where s.USER_IDENTITY in',
'               (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_2) order by to_char(BEGIN_TIME, :P129_CONDITION_2);',
'          ~'';',
'    else',
'        return q''~',
'         select to_char(BEGIN_TIME,:P129_CONDITION_2)        date_type,',
'                avg(ceil((e.END_TIME - e.BEGIN_TIME) * 24)) TOTAL,',
unistr('                ''\4E0A\62A5''                                   EVENT_TYPE,'),
'                ''#26CABD''                              COLOR',
'         from TENANT_EVENT e',
'         where not exists(',
'                 select 1',
'                 from TENANT_EVENT_USER_CONVERGE s',
'                 where s.IS_ARCHIVE = 0',
'                   and s.EVENT_STATUS = ''RESOLVED''',
'                   and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'                   and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                   and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'                   and s.TENANT_ID = :USERTENANT',
'                   and e.EVENT_ID = s.EVENT_ID',
'             )',
'           and e.TENANT_ID = :USERTENANT',
'           and e.DEL_FLAG = 0',
'           and e.STATUS = ''RESOLVED''',
'           and e.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and e.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and e.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and e.SUBMIT_USER_ID = :USER_ID',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_2) order by to_char(BEGIN_TIME, :P129_CONDITION_2);',
'         ~'';',
'    end if;',
'end;',
''))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_CONDITION_2,P129_START_TIME,P129_END_TIME,P129_TYPE_2'
,p_series_type=>'bar'
,p_series_name_column_name=>'EVENT_TYPE'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'DATE_TYPE'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353443694867712100)
,p_chart_id=>wwv_flow_imp.id(2353442607687712101)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353443120221712100)
,p_chart_id=>wwv_flow_imp.id(2353442607687712101)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2566193090402402897)
,p_plug_name=>unistr('\4E2A\4EBA\9891\53D1\4E8B\4EF6\7EDF\8BA1\56FE (\4E3B\8D23)')
,p_parent_plug_id=>wwv_flow_imp.id(2559724854170548577)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353428081860712109)
,p_region_id=>wwv_flow_imp.id(2566193090402402897)
,p_chart_type=>'bar'
,p_height=>'395'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353429826817712109)
,p_chart_id=>wwv_flow_imp.id(2353428081860712109)
,p_seq=>10
,p_name=>unistr('\4E2A\4EBA\9891\53D1\4E8B\4EF6\7EDF\8BA1\56FE')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EVENT_CODE, EVENT_TYPE, EVENT_COUNT',
'from (',
'         with user_v as (SELECT :USER_ID EXT_USER_ID, :USERJOBNUMBER JOB_NUMBER',
'                         FROM dual V)',
'         SELECT EVENT_CODE, EVENT_TYPE, sum(1) EVENT_COUNT',
'         FROM (',
'                  SELECT T.SECOND_EVENT_CODE EVENT_CODE,',
'                         T.SECOND_EVENT_NAME EVENT_TYPE,',
'                         T.EVENT_ID',
'                  FROM TENANT_EVENT_USER_CONVERGE T',
'                           INNER JOIN user_v V ON T.JOB_NUMBER = V.JOB_NUMBER',
'                  WHERE T.IS_ARCHIVE = 0',
unistr('                    AND T.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'                    AND T.USER_IDENTITY = ''MAIN''',
'                    AND T.EVENT_STATUS = ''RESOLVED''',
'                    and T.BASE_DEPT_ID = :BASE_DEPT_ID',
'                    AND T.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'                    AND T.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'                    AND T.TENANT_ID = :USERTENANT',
'              )',
'         group by EVENT_CODE, EVENT_TYPE',
'         order by 3 desc)',
'where ROWNUM < 8;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_items_value_column_name=>'EVENT_COUNT'
,p_items_label_column_name=>'EVENT_TYPE'
,p_color=>'#4daafb'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353429231226712109)
,p_chart_id=>wwv_flow_imp.id(2353428081860712109)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353428621449712109)
,p_chart_id=>wwv_flow_imp.id(2353428081860712109)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2566193528258402902)
,p_plug_name=>unistr('\4E2A\4EBA\77E5\8BC6\5E93\83B7\8D5E\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\6B21\FF09')
,p_parent_plug_id=>wwv_flow_imp.id(2559724854170548577)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353430652264712108)
,p_region_id=>wwv_flow_imp.id(2566193528258402902)
,p_chart_type=>'combo'
,p_height=>'335'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353432366670712107)
,p_chart_id=>wwv_flow_imp.id(2353430652264712108)
,p_seq=>10
,p_name=>unistr('\4E2A\4EBA\77E5\8BC6\5E93\83B7\8D5E\5BF9\6BD4\56FE-\67F1\72B6\56FE')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_CONDITION_4 = ''yyyy-iw'' then',
'        return q''~',
'select count(s.EVENT_ANALYZE_LIKE_ID)              total,',
'       ''#4EA8FB''                                   color,',
'       to_char(s.CREATION_DATE, :P129_CONDITION_4) date_type',
'from TENANT_EVENT_ANALYZE_LIKE_RECORD s',
'         inner join TENANT_EVENT_ANALYZE a on s.EVENT_ANALYZE_ID = a.EVENT_ANALYZE_ID and a.DEL_FLAG = 0',
'where a.SUBMIT_USER_ID = :USER_ID',
'  and s.CREATION_DATE >= GET_DAY_OF_WEEK(to_date(:P129_START_TIME, ''yyyy-mm-dd''), 1)',
'  and s.CREATION_DATE <= GET_DAY_OF_WEEK(to_date(:P129_END_TIME, ''yyyy-mm-dd''), 7) + 1',
'  and s.TENANT_ID = :USERTENANT',
'  and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'  and a.BASE_DEPT_ID = :BASE_DEPT_ID',
'group by to_char(s.CREATION_DATE, :P129_CONDITION_4) order by to_char(s.CREATION_DATE, :P129_CONDITION_4);',
'            ~'';',
'    else',
'        return q''~',
'select count(s.EVENT_ANALYZE_LIKE_ID)              total,',
'       ''#4EA8FB''                                   color,',
'       to_char(s.CREATION_DATE, :P129_CONDITION_4) date_type',
'from TENANT_EVENT_ANALYZE_LIKE_RECORD s',
'         inner join TENANT_EVENT_ANALYZE a on s.EVENT_ANALYZE_ID = a.EVENT_ANALYZE_ID and a.DEL_FLAG = 0',
'where a.SUBMIT_USER_ID = :USER_ID',
'  and s.CREATION_DATE >= GET_DAY_OF_MONTH(to_date(:P129_START_TIME, ''yyyy-mm-dd''), ''first'')',
'  and s.CREATION_DATE <= GET_DAY_OF_MONTH(to_date(:P129_END_TIME, ''yyyy-mm-dd''), ''last'') + 1',
'  and s.TENANT_ID = :USERTENANT',
'   and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'  and a.BASE_DEPT_ID = :BASE_DEPT_ID',
'group by to_char(s.CREATION_DATE, :P129_CONDITION_4) order by to_char(s.CREATION_DATE, :P129_CONDITION_4); ',
'            ~'';',
'    end if;',
'end ;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME,P129_CONDITION_4'
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'DATE_TYPE'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353431157662712108)
,p_chart_id=>wwv_flow_imp.id(2353430652264712108)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353431816806712107)
,p_chart_id=>wwv_flow_imp.id(2353430652264712108)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568533452723024704)
,p_plug_name=>unistr('\4E2A\4EBA\5E73\5747\54CD\5E94\65F6\957F\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\5C0F\65F6\FF09')
,p_region_name=>'individual_response'
,p_parent_plug_id=>wwv_flow_imp.id(2559724854170548577)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353423986040712119)
,p_region_id=>wwv_flow_imp.id(2568533452723024704)
,p_chart_type=>'combo'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353425664879712114)
,p_chart_id=>wwv_flow_imp.id(2353423986040712119)
,p_seq=>10
,p_name=>unistr('\4E2A\4EBA\5E73\5747\54CD\5E94\65F6\957F\5BF9\6BD4\56FE-\67F1\72B6\56FE')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_CONDITION_3 = ''yyyy-iw'' and :P129_TYPE_3 = ''ACCOUNTABILITY'' then',
'       return q''~',
'            select to_char(BEGIN_TIME, :P129_CONDITION_3) date_type,',
'                AVG(OWN_RESPONSE_TIME) / 60',
'                    as                         TOTAL,',
unistr('                ''\4E3B\8D23''                           EVENT_TYPE,'),
'                ''#086EFE''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
'         where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
unistr('           and s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           and s.USER_IDENTITY = ''MAIN''',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_3) order by to_char(BEGIN_TIME, :P129_CONDITION_3);',
'         ~'';',
'    elsif :P129_CONDITION_3 = ''yyyy-iw'' and :P129_TYPE_3 = ''ASSIST'' then',
'        return q''~',
'        select to_char(BEGIN_TIME, :P129_CONDITION_3) date_type,',
'                AVG(OWN_RESPONSE_TIME) / 60',
'                    as                         TOTAL,',
unistr('                ''\534F\52A9''                           EVENT_TYPE,'),
'                ''#4EA8FB''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
'         where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
unistr('           and not (OBLIGATION_DEPT = ''\4E3B\8D23'' and USER_IDENTITY = ''MAIN'')'),
'           and (USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_3) order by to_char(BEGIN_TIME, :P129_CONDITION_3);',
'         ~'';',
'    elsif :P129_CONDITION_3 = ''yyyy-iw'' and :P129_TYPE_3 = ''HARMONIZE'' then',
'        return q''~',
'         select to_char(BEGIN_TIME,  :P129_CONDITION_3) date_type,',
'                avg(OWN_RESPONSE_TIME) / 60',
'                    as                         TOTAL,',
unistr('                ''\534F\8C03''                           EVENT_TYPE,'),
'                ''#64E1D2''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
'         where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
'           and s.USER_IDENTITY in',
'               (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_3) order by to_char(BEGIN_TIME, :P129_CONDITION_3);',
'         ~'';',
'    elsif :P129_CONDITION_3 = ''yyyy-mm'' and :P129_TYPE_3 = ''ACCOUNTABILITY'' then',
'        return q''~',
'        select to_char(BEGIN_TIME, :P129_CONDITION_3) date_type,',
'                avg(OWN_RESPONSE_TIME) / 60',
'                    as                         TOTAL,',
unistr('                ''\4E3B\8D23''                           EVENT_TYPE,'),
'                ''#086EFE''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
'         where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
unistr('           and s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           and s.USER_IDENTITY = ''MAIN''',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_3) order by to_char(BEGIN_TIME, :P129_CONDITION_3);',
'         ~'';',
'    elsif :P129_CONDITION_3 = ''yyyy-mm'' and :P129_TYPE_3 = ''ASSIST'' then',
'        return q''~',
'          select to_char(BEGIN_TIME,:P129_CONDITION_3) date_type,',
'                avg(OWN_RESPONSE_TIME) / 60',
'                    as                         TOTAL,',
unistr('                ''\534F\52A9''                           EVENT_TYPE,'),
'                ''#4EA8FB''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
'         where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
unistr('           and not (OBLIGATION_DEPT = ''\4E3B\8D23'' and USER_IDENTITY = ''MAIN'')'),
'           and (USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_3) order by to_char(BEGIN_TIME, :P129_CONDITION_3);',
'          ~'';',
'    else',
'       return q''~',
'         select to_char(BEGIN_TIME, :P129_CONDITION_3) date_type,',
'                avg(OWN_RESPONSE_TIME) / 60',
'                    as                         TOTAL,',
unistr('                ''\534F\8C03''                           EVENT_TYPE,'),
'                ''#64E1D2''                      COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
'         where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
'           and s.USER_IDENTITY in',
'               (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and S.JOB_NUMBER=:USERJOBNUMBER',
'        group by to_char(BEGIN_TIME, :P129_CONDITION_3) order by to_char(BEGIN_TIME, :P129_CONDITION_3)',
'         ~'';',
'    end if;',
'end;',
''))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME,P129_CONDITION_3,P129_TYPE_3'
,p_series_type=>'bar'
,p_series_name_column_name=>'EVENT_TYPE'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'DATE_TYPE'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353424472118712117)
,p_chart_id=>wwv_flow_imp.id(2353423986040712119)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353425087480712116)
,p_chart_id=>wwv_flow_imp.id(2353423986040712119)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2559724951913548578)
,p_plug_name=>unistr('\56E2\961F\770B\677F')
,p_parent_plug_id=>wwv_flow_imp.id(2559724796881548576)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number(10);',
'',
'begin',
'',
'    select count(1)',
'    into v_count',
'    from MPF_SHARE_BASIC_USER_INFO_V',
'    where LEADER_USER_ID = :USER_ID',
'      and IS_LEAVE = 0',
'      and TENANT_ID = :USERTENANT',
'      and BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
'    if v_count > 0 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2568495723899067964)
,p_name=>unistr('\56E2\961F\5F02\5E38\8BA1\6570')
,p_parent_plug_id=>wwv_flow_imp.id(2559724951913548578)
,p_template=>wwv_flow_imp.id(2302045568724836200)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-lg'
,p_component_template_options=>'#DEFAULT#:t-AVPList--variableLabelLarge:t-AVPList--rightAligned'
,p_grid_column_span=>2
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select event_type, total, decode(event_type, ''\5DF2\5B8C\6210\7684\5DE5\5355\6570'', ''RESOLVED'', ''WAIT_RESOLVE'') event_status'),
'from (',
'    with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                    from MPF_USER_DEPT_MAIN_ASSO_V v',
'                    where v.LEADER_EXT_USER_ID = :USER_ID',
'                      and v.TENANT_ID = :USERTENANT',
'                      AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
unistr('    select nvl(sum("\5DF2\5B8C\6210\7684\5DE5\5355\6570"),0) "\5DF2\5B8C\6210\7684\5DE5\5355\6570", nvl(sum("\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38"),0) "\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38", nvl(sum("\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38"),0) "\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38"'),
'    from (',
'             select e.EVENT_ID,',
'                    case',
'                        when e.STATUS = ''RESOLVED'' then',
'                            1',
unistr('                        else 0 end "\5DF2\5B8C\6210\7684\5DE5\5355\6570",'),
'                    case',
'                        when e.IS_STOP_LINE = ''TRUE'' AND',
'                             e.STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                            then',
'                            1',
unistr('                        else 0 end "\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38",'),
'                    case',
'                        when e.IS_STOP_LINE = ''FALSE'' AND',
'                             e.STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                            then',
'                            1',
unistr('                        else 0 end "\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38"'),
'             from TENANT_EVENT e',
'                      inner join user_v v on v.EXT_USER_ID = e.SUBMIT_USER_ID',
'             WHERE e.TENANT_ID = :USERTENANT',
'             and e.BASE_DEPT_ID = :BASE_DEPT_ID',
'               AND e.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'               AND e.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'             union all',
'             SELECT distinct t.EVENT_ID,',
'                    case',
'                        when t.EVENT_STATUS = ''RESOLVED'' then',
'                            1',
unistr('                        else 0 end "\5DF2\5B8C\6210\7684\5DE5\5355\6570",'),
'                    case',
'                        when t.IS_STOP_LINE = ''TRUE'' AND',
'                             t.EVENT_STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                            then',
'                            1',
unistr('                        else 0 end "\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38",'),
'                    case',
'                        when t.IS_STOP_LINE = ''FALSE'' AND',
'                             t.EVENT_STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                            then',
'                            1',
unistr('                        else 0 end "\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38"'),
'             FROM TENANT_EVENT_USER_CONVERGE t',
'                      inner join user_v v on v.JOB_NUMBER = t.JOB_NUMBER',
'             WHERE not exists(',
'                     select 1',
'                     from TENANT_EVENT e',
'                              inner join user_v v on v.EXT_USER_ID = e.SUBMIT_USER_ID',
'                     WHERE e.TENANT_ID = :USERTENANT',
'                     and e.BASE_DEPT_ID = :BASE_DEPT_ID',
'                       AND e.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'                       AND e.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'                       and e.EVENT_ID = t.EVENT_ID',
'                 )',
'               and t.IS_ARCHIVE = 0',
'               AND t.USER_IDENTITY=''MAIN''',
'               AND t.TENANT_ID = :USERTENANT',
unistr('               AND t.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'               and t.BASE_DEPT_ID = :BASE_DEPT_ID',
'               AND t.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'               AND t.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
unistr('         )) s unpivot ( total for event_type in ("\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38","\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38","\5DF2\5B8C\6210\7684\5DE5\5355\6570"))'),
unistr('order by decode(event_type, ''\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38'', 1, ''\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38'', 2, ''\5DF2\5B8C\6210\7684\5DE5\5355\6570'', 3);'),
'',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2302072847545836211)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2353447034162712097)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Event Type'
,p_column_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:45:P45_BEGIN,P45_END,P45_STATUS:&P129_START_TIME.,&P129_END_TIME.,#EVENT_STATUS#'
,p_column_linktext=>'#EVENT_TYPE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2353447369091712097)
,p_query_column_id=>2
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>20
,p_column_heading=>'Total'
,p_column_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:45:P45_BEGIN,P45_END,P45_STATUS:&P129_START_TIME.,&P129_END_TIME.,#EVENT_STATUS#'
,p_column_linktext=>'#TOTAL#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2352229988219676166)
,p_query_column_id=>3
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2568496090259067967)
,p_name=>unistr('\56E2\961F\65F6\957F\5361\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2559724951913548578)
,p_template=>wwv_flow_imp.id(2302029553726836195)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--cols:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with user_v as (select v.JOB_NUMBER',
'                from MPF_USER_DEPT_MAIN_ASSO_V v',
'                where v.LEADER_EXT_USER_ID = :USER_ID',
'                  and v.TENANT_ID = :USERTENANT',
'                  AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'select s1.event_type_2                               as event_type_2,',
'       to_char(nvl(s1.total_2, 0), ''fm999999990.0'') as total_2,',
'       s3.event_type                                 as event_type_3,',
'       to_char(nvl(s3.total, 0), ''fm999999990.0'')   as total_3',
'from (',
'         select ''A''         tag,',
'                avg(',
'                        OWN_DURATION_MINUTE / 60',
'                    ) as    total_2,',
unistr('                ''\4E3B\8D23-\5E73\5747\89E3\51B3\65F6\957F'' event_type_2'),
'',
'         from TENANT_EVENT_USER_CONVERGE s',
'                  inner join user_v v on v.JOB_NUMBER = s.JOB_NUMBER',
unistr('         where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           and s.USER_IDENTITY = ''MAIN''',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT) s1',
'         inner join (',
'    select avg(',
'                   OWN_RESPONSE_TIME / 60',
'               ) as    total,',
unistr('           ''\4E3B\8D23-\5E73\5747\54CD\5E94\65F6\957F'' event_type,'),
'           ''A''         tag',
'    from TENANT_EVENT_USER_CONVERGE s',
'             inner join user_v v on v.JOB_NUMBER = s.JOB_NUMBER',
unistr('    where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'      and s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
'      and s.USER_IDENTITY = ''MAIN''',
'      and s.IS_ARCHIVE = 0',
'      and s.EVENT_STATUS = ''RESOLVED''',
'      and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'      and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'      and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'')+1',
'      and s.TENANT_ID = :USERTENANT) s3 on s3.tag = s1.tag;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2302057469616836205)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124727907962986964)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPE_2'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124727974204986965)
,p_query_column_id=>2
,p_column_alias=>'TOTAL_2'
,p_column_display_sequence=>20
,p_column_heading=>unistr('\56E2\961F\5E73\5747\89E3\51B3\65F6\957F(\4E3B\8D23)')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124728123966986966)
,p_query_column_id=>3
,p_column_alias=>'EVENT_TYPE_3'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124728194262986967)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_3'
,p_column_display_sequence=>40
,p_column_heading=>unistr('\56E2\961F\53C2\4E0E\5E73\5747\54CD\5E94\65F6\957F(\4E3B\8D23)')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568531571818024685)
,p_plug_name=>unistr('\56E2\961F\6210\5458')
,p_parent_plug_id=>wwv_flow_imp.id(2559724951913548578)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2568531832364024688)
,p_name=>unistr('\6210\5458\5217\8868')
,p_parent_plug_id=>wwv_flow_imp.id(2568531571818024685)
,p_template=>wwv_flow_imp.id(2302017113938836190)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-AVPList--fixedLabelSmall:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.NAME',
'from MPF_SHARE_BASIC_USER_INFO_V v',
'where v.LEADER_USER_ID = :USER_ID',
'  and v.IS_LEAVE = 0',
'  and v.TENANT_ID = :USERTENANT',
'  AND v.BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2302072847545836211)
,p_query_num_rows=>40
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2353448768980712095)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>10
,p_column_heading=>unistr('\56E2\961F\6210\5458')
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568656930098455288)
,p_plug_name=>unistr('\5BB9\56681')
,p_parent_plug_id=>wwv_flow_imp.id(2559724951913548578)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568496430180067971)
,p_plug_name=>unistr('\56E2\961F\5DF2\5B8C\6210\7684\5DE5\5355')
,p_parent_plug_id=>wwv_flow_imp.id(2568656930098455288)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EVENT_CODE, EVENT_TYPE, sum(1) EVENT_COUNT',
'from (with user_v as (SELECT V.EXT_USER_ID, V.NAME, V.JOB_NUMBER',
'                      FROM MPF_USER_DEPT_MAIN_ASSO_V V',
'                      WHERE V.LEADER_EXT_USER_ID = :USER_ID',
'                        AND V.TENANT_ID = :USERTENANT',
'                        AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'      SELECT DISTINCT EVENT_CODE, EVENT_TYPE, EVENT_ID EVENT_COUNT',
'      FROM (',
'               SELECT T.SECOND_EVENT_CODE EVENT_CODE,',
'                      T.SECOND_EVENT_NAME EVENT_TYPE,',
'                      T.EVENT_ID',
'               FROM TENANT_EVENT_USER_CONVERGE T',
'                        INNER JOIN user_v V ON T.JOB_NUMBER = V.JOB_NUMBER',
'               WHERE T.IS_ARCHIVE = 0',
unistr('                 AND T.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'                 AND T.EVENT_STATUS = ''RESOLVED''',
'                 and T.BASE_DEPT_ID = :BASE_DEPT_ID',
'                 AND T.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'                 AND T.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'                 AND T.TENANT_ID = :USERTENANT',
'',
'               UNION ALL',
'',
'               SELECT E.SECOND_EVENT_CODE EVENT_CODE,',
'                      C.NAME              EVENT_TYPE,',
'                      E.EVENT_ID',
'               FROM TENANT_EVENT E',
'                        INNER JOIN TENANT_EVENT_CATEGORY C',
'                                   ON E.SECOND_EVENT_CODE = C.CODE AND C.TENANT_ID = E.TENANT_ID',
'                        INNER JOIN user_v V ON E.SUBMIT_USER_ID = V.EXT_USER_ID',
'               WHERE E.DEL_FLAG = 0',
'                 AND E.STATUS = ''RESOLVED''',
'                 and E.BASE_DEPT_ID = :BASE_DEPT_ID',
'                 and C.BASE_DEPT_ID = :BASE_DEPT_ID',
'                 AND E.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'                 AND E.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'                 AND E.TENANT_ID = :USERTENANT))',
'group by EVENT_CODE, EVENT_TYPE;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353452438697712092)
,p_region_id=>wwv_flow_imp.id(2568496430180067971)
,p_chart_type=>'pie'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>2
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'end'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353452874576712092)
,p_chart_id=>wwv_flow_imp.id(2353452438697712092)
,p_seq=>10
,p_name=>unistr('\56E2\961F\5DF2\5B8C\6210\7684\5DE5\5355-\997C\56FE')
,p_max_row_count=>10000
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'EVENT_COUNT'
,p_items_label_column_name=>'EVENT_TYPE'
,p_items_short_desc_column_name=>'EVENT_COUNT'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568496772705067974)
,p_plug_name=>unistr('\56E2\961F\4EBA\5458\53C2\4E0E\5DE5\5355\6570\91CF\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\4E2A\FF09')
,p_region_name=>'team_quantity'
,p_parent_plug_id=>wwv_flow_imp.id(2568656930098455288)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353453745831712091)
,p_region_id=>wwv_flow_imp.id(2568496772705067974)
,p_chart_type=>'combo'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353455520726712091)
,p_chart_id=>wwv_flow_imp.id(2353453745831712091)
,p_seq=>10
,p_name=>unistr('\56E2\961F\4EBA\5458\53C2\4E0E\5DE5\5355\6570\91CF\5BF9\6BD4\56FE')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_TEAM_TYPE_1 = ''ACCOUNTABILITY'' then',
'        return q''~',
'            with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                         from MPF_USER_DEPT_MAIN_ASSO_V v',
'                         where v.LEADER_EXT_USER_ID = :USER_ID',
'                           and v.TENANT_ID = :USERTENANT',
'                           AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'         select v.NAME,',
'                v.JOB_NUMBER,',
'                ''#086EFE'' color,',
'                count(1)         total,',
unistr('                ''\4E3B\8D23''      event_type'),
'         from TENANT_EVENT_USER_CONVERGE s',
'                  inner join user_v v on v.JOB_NUMBER = s.JOB_NUMBER',
unistr('         where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           and S.EVENT_STATUS = ''RESOLVED''',
'           and s.USER_IDENTITY = ''MAIN''',
'           and s.IS_ARCHIVE = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'     group by v.NAME,  v.JOB_NUMBER order by total desc;',
'         ~'';',
'    elsif :P129_TEAM_TYPE_1 = ''ASSIST'' then',
'        return q''~',
'        with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                from MPF_USER_DEPT_MAIN_ASSO_V v',
'                where v.LEADER_EXT_USER_ID = :USER_ID',
'                  and v.TENANT_ID = :USERTENANT',
'                  AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'        select v.NAME,',
'               v.JOB_NUMBER,',
'               ''#4EA8FB'' color,',
'               count(1)  total,',
unistr('               ''\534F\52A9''      event_type'),
'',
'        from TENANT_EVENT_USER_CONVERGE s',
'                 inner join user_v v on v.JOB_NUMBER = s.JOB_NUMBER',
unistr('        where not (s.OBLIGATION_DEPT = ''\4E3B\8D23'' and s.USER_IDENTITY = ''MAIN'')'),
'          and S.EVENT_STATUS = ''RESOLVED''',
'          and (s.USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'          and s.IS_ARCHIVE = 0',
'          and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'          and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'          and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'          and s.TENANT_ID = :USERTENANT',
'group by v.NAME, v.JOB_NUMBER order by total desc;',
'         ~'';',
'    elsif :P129_TEAM_TYPE_1 = ''HARMONIZE'' then',
'        return q''~',
'         with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                from MPF_USER_DEPT_MAIN_ASSO_V v',
'                where v.LEADER_EXT_USER_ID = :USER_ID',
'                  and v.TENANT_ID = :USERTENANT',
'                  AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'        select v.NAME,',
'                v.JOB_NUMBER,',
'                ''#64E1D2'' color,',
'                count(1)         total,',
unistr('                ''\534F\8C03''      event_type'),
'',
'         from TENANT_EVENT_USER_CONVERGE s',
'                  inner join user_v v on v.JOB_NUMBER = s.JOB_NUMBER',
'         where s.USER_IDENTITY in (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'           and S.EVENT_STATUS = ''RESOLVED''',
'           and s.IS_ARCHIVE = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'        group by v.NAME, v.JOB_NUMBER order by total desc;',
'         ~'';',
'    else',
'        return q''~',
'         with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                from MPF_USER_DEPT_MAIN_ASSO_V v',
'                where v.LEADER_EXT_USER_ID = :USER_ID',
'                  and v.TENANT_ID = :USERTENANT',
'                  AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'  select v.NAME,',
'                v.JOB_NUMBER,',
'                ''#26CABD'' color,',
'                count(1)         total,',
unistr('                ''\4E0A\62A5''      event_type'),
'         from TENANT_EVENT s',
'                  inner join user_v v on v.EXT_USER_ID = s.SUBMIT_USER_ID',
'         where not exists(',
'                 select 1',
'                 from TENANT_EVENT_USER_CONVERGE e',
'                 where e.IS_ARCHIVE = 0',
'                   and e.EVENT_STATUS = ''RESOLVED''',
'                   and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'                   and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                   and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'                   and e.TENANT_ID = :USERTENANT',
'                   and e.EVENT_ID = s.EVENT_ID',
'             )',
'           and s.STATUS = ''RESOLVED''',
'           and s.DEL_FLAG = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'        group by v.NAME, v.JOB_NUMBER order by total desc;',
'         ~'';',
'    end if;',
'end;',
''))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME,P129_TEAM_TYPE_1'
,p_series_type=>'bar'
,p_series_name_column_name=>'EVENT_TYPE'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'NAME'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353454246669712091)
,p_chart_id=>wwv_flow_imp.id(2353453745831712091)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353454899269712091)
,p_chart_id=>wwv_flow_imp.id(2353453745831712091)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568497284693067979)
,p_plug_name=>unistr('\56E2\961F\9891\53D1\4E8B\4EF6\7EDF\8BA1\56FE(\4E3B\8D23)')
,p_parent_plug_id=>wwv_flow_imp.id(2568656930098455288)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353456397836712090)
,p_region_id=>wwv_flow_imp.id(2568497284693067979)
,p_chart_type=>'bar'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353458124758712089)
,p_chart_id=>wwv_flow_imp.id(2353456397836712090)
,p_seq=>10
,p_name=>unistr('\56E2\961F\9891\53D1\4E8B\4EF6\7EDF\8BA1\56FE')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TOTAL, FIRST_EVENT_CODE, SECOND_EVENT_CODE, SECOND_EVENT_NAME',
'FROM (',
'         SELECT COUNT(EVENT_ID) AS TOTAL, FIRST_EVENT_CODE, SECOND_EVENT_CODE, SECOND_EVENT_NAME',
'         FROM TENANT_EVENT_USER_CONVERGE S',
'                  inner JOIN (',
'             select v.EXT_USER_ID, v.JOB_NUMBER, v.NAME',
'             from MPF_USER_DEPT_MAIN_ASSO_V v',
'             where v.LEADER_EXT_USER_ID = :USER_ID',
'               and v.TENANT_ID = :USERTENANT',
'            and v.BASE_DEPT_ID = :BASE_DEPT_ID',
'         ) U ON S.JOB_NUMBER = U.JOB_NUMBER ',
'         WHERE S.IS_ARCHIVE = 0',
'           AND S.TENANT_ID = :USERTENANT',
'           AND S.EVENT_STATUS = ''RESOLVED''',
unistr('           AND S.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           AND S.USER_IDENTITY = ''MAIN''',
'            and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           AND S.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'           AND S.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'         GROUP BY FIRST_EVENT_CODE, SECOND_EVENT_CODE, SECOND_EVENT_NAME',
'         ORDER BY COUNT(EVENT_ID) desc)',
'WHERE ROWNUM <= 8;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'SECOND_EVENT_NAME'
,p_color=>'#4daafb'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353457526139712090)
,p_chart_id=>wwv_flow_imp.id(2353456397836712090)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353456879065712090)
,p_chart_id=>wwv_flow_imp.id(2353456397836712090)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568497798177067984)
,p_plug_name=>unistr('\56E2\961F\4EBA\5458\5E73\5747\89E3\51B3\65F6\957F\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\5C0F\65F6\FF09')
,p_region_name=>'team_duration'
,p_parent_plug_id=>wwv_flow_imp.id(2568656930098455288)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>80
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353458947396712089)
,p_region_id=>wwv_flow_imp.id(2568497798177067984)
,p_chart_type=>'combo'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353460675822712088)
,p_chart_id=>wwv_flow_imp.id(2353458947396712089)
,p_seq=>10
,p_name=>unistr('\56E2\961F\4EBA\5458\5E73\5747\89E3\51B3\65F6\957F')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_TEAM_TYPE_2 = ''ACCOUNTABILITY'' then',
'        return q''~',
'          with user_v as (select v.NAME, v.JOB_NUMBER',
'                from MPF_USER_DEPT_MAIN_ASSO_V v',
'                where v.LEADER_EXT_USER_ID = :USER_ID',
'                  and v.TENANT_ID = :USERTENANT',
'                  and v.BASE_DEPT_ID = :BASE_DEPT_ID',
'                  )',
'        select s.NAME,',
'               v.JOB_NUMBER,',
'               round(avg(nvl(OWN_DURATION_MINUTE,0)) / 60,1)',
'                   as    TOTAL,',
unistr('               ''\4E3B\8D23''      EVENT_TYPE,'),
'               ''#086EFE'' COLOR',
'        from TENANT_EVENT_USER_CONVERGE s',
'                 inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
unistr('        where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'          and s.USER_IDENTITY = ''MAIN''',
'          and s.IS_ARCHIVE = 0',
'          and s.EVENT_STATUS = ''RESOLVED''',
'          and s.BASE_DEPT_ID=:BASE_DEPT_ID',
'          and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'          and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'          and s.TENANT_ID = :USERTENANT',
'          and s.BASE_DEPT_ID=:BASE_DEPT_ID',
'        group by s.NAME, v.JOB_NUMBER',
'        order by total desc;',
'         ~'';',
'    elsif :P129_TEAM_TYPE_2 = ''ASSIST'' then',
'        return q''~',
'            with user_v as (select v.NAME, v.JOB_NUMBER',
'                            from MPF_USER_DEPT_MAIN_ASSO_V v',
'                            where v.LEADER_EXT_USER_ID = :USER_ID',
'                              and v.TENANT_ID = :USERTENANT and v.BASE_DEPT_ID=:BASE_DEPT_ID)',
'            select s.NAME,',
'                   v.JOB_NUMBER,',
'                   round(avg(nvl(OWN_DURATION_MINUTE, 0)) / 60, 1)',
'                       as    TOTAL,',
unistr('                   ''\534F\52A9''      EVENT_TYPE,'),
'                   ''#4EA8FB'' COLOR',
'            from TENANT_EVENT_USER_CONVERGE s',
'                     inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
unistr('            where not (s.OBLIGATION_DEPT = ''\4E3B\8D23'' and s.USER_IDENTITY = ''MAIN'')'),
'              and (s.USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'              and s.IS_ARCHIVE = 0',
'              and s.EVENT_STATUS = ''RESOLVED''',
'              and s.BASE_DEPT_ID=:BASE_DEPT_ID',
'              and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'              and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'              and s.TENANT_ID = :USERTENANT',
'              and s.BASE_DEPT_ID=:BASE_DEPT_ID',
'            group by s.NAME, v.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    else',
'        return q''~',
'            with user_v as (select v.NAME, v.JOB_NUMBER',
'                            from MPF_USER_DEPT_MAIN_ASSO_V v',
'                            where v.LEADER_EXT_USER_ID = :USER_ID',
'                              and v.TENANT_ID = :USERTENANT and v.BASE_DEPT_ID=:BASE_DEPT_ID)',
'            select s.NAME,',
'                   v.JOB_NUMBER,',
'                   round(avg(nvl(OWN_DURATION_MINUTE, 0)) / 60, 1)',
'                       as    TOTAL,',
unistr('                   ''\534F\8C03''      EVENT_TYPE,'),
'                   ''#64E1D2'' COLOR',
'            from TENANT_EVENT_USER_CONVERGE s',
'                     inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
'            where s.USER_IDENTITY in',
'                  (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'              and s.IS_ARCHIVE = 0',
'              and s.EVENT_STATUS = ''RESOLVED''',
'              and s.BASE_DEPT_ID=:BASE_DEPT_ID',
'              and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'              and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'              and s.TENANT_ID = :USERTENANT',
'              and s.BASE_DEPT_ID=:BASE_DEPT_ID',
'            group by s.NAME, v.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    end if;',
'end;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME,P129_TEAM_TYPE_2'
,p_series_type=>'bar'
,p_series_name_column_name=>'EVENT_TYPE'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'NAME'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353459525871712088)
,p_chart_id=>wwv_flow_imp.id(2353458947396712089)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353460053909712088)
,p_chart_id=>wwv_flow_imp.id(2353458947396712089)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568498254437067989)
,p_plug_name=>unistr('\56E2\961F\4EBA\5458\590D\76D8\6570\91CF\7EDF\8BA1\56FE')
,p_parent_plug_id=>wwv_flow_imp.id(2568656930098455288)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353461543889712087)
,p_region_id=>wwv_flow_imp.id(2568498254437067989)
,p_chart_type=>'bar'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353463328176712086)
,p_chart_id=>wwv_flow_imp.id(2353461543889712087)
,p_seq=>10
,p_name=>unistr('\56E2\961F\4EBA\5458\590D\76D8\6570\91CF\7EDF\8BA1\56FE')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(EVENT_ANALYZE_ID)                                                              e_count,',
'       v.USER_ID,',
'       v.NAME',
'from TENANT_EVENT_ANALYZE a',
'         inner join (',
'    select v.USER_ID, v.NAME, v.JOB_NUMBER',
'    from MPF_SHARE_BASIC_USER_INFO_V v',
'    where v.LEADER_USER_ID = :USER_ID',
'      and v.TENANT_ID = :USERTENANT',
'      and v.BASE_DEPT_ID = :BASE_DEPT_ID',
') v on a.SUBMIT_USER_ID = v.USER_ID',
'where a.TENANT_ID = :USERTENANT',
'  and a.DEL_FLAG = 0',
'  and a.AUDIT_STATE = ''COMPLETE''',
'  and a.BASE_DEPT_ID = :BASE_DEPT_ID',
'  and a.UPDATE_DATE >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'  and a.UPDATE_DATE <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'group by v.USER_ID, v.NAME  order by e_count desc'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_items_value_column_name=>'E_COUNT'
,p_items_label_column_name=>'NAME'
,p_color=>'#50a9fe'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353462113853712087)
,p_chart_id=>wwv_flow_imp.id(2353461543889712087)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353462718993712087)
,p_chart_id=>wwv_flow_imp.id(2353461543889712087)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568498729511067994)
,p_plug_name=>unistr('\56E2\961F\77E5\8BC6\5E93\83B7\8D5E\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\6B21\FF09')
,p_parent_plug_id=>wwv_flow_imp.id(2568656930098455288)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>110
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353464227045712086)
,p_region_id=>wwv_flow_imp.id(2568498729511067994)
,p_chart_type=>'combo'
,p_height=>'335'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353465924731712085)
,p_chart_id=>wwv_flow_imp.id(2353464227045712086)
,p_seq=>10
,p_name=>unistr('\56E2\961F\77E5\8BC6\5E93\83B7\8D5E\5BF9\6BD4\56FE')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(S.EVENT_ANALYZE_LIKE_ID) TOTAL,',
'       ''#4EA8FB''                      COLOR,',
'       U.NAME                         NAME,',
'       U.JOB_NUMBER',
'FROM TENANT_EVENT_ANALYZE_LIKE_RECORD S',
'         INNER JOIN TENANT_EVENT_ANALYZE A ON S.EVENT_ANALYZE_ID = A.EVENT_ANALYZE_ID AND A.DEL_FLAG = 0',
'         LEFT JOIN MPF_USER_DEPT_MAIN_ASSO_V U',
'                   ON A.SUBMIT_USER_ID = U.EXT_USER_ID',
'                       AND S.TENANT_ID = U.TENANT_ID',
'WHERE U.LEADER_EXT_USER_ID = :USER_ID',
'  AND S.CREATION_DATE >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'  AND S.CREATION_DATE <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'  AND S.TENANT_ID = :USERTENANT',
'  and s.BASE_DEPT_ID=:BASE_DEPT_ID',
'  and A.BASE_DEPT_ID=:BASE_DEPT_ID',
'  and U.BASE_DEPT_ID=:BASE_DEPT_ID',
'GROUP BY U.NAME,U.JOB_NUMBER order by COUNT(S.EVENT_ANALYZE_LIKE_ID) desc;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'NAME'
,p_color=>'#50a9fe'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353464689510712086)
,p_chart_id=>wwv_flow_imp.id(2353464227045712086)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353465277557712085)
,p_chart_id=>wwv_flow_imp.id(2353464227045712086)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568532968733024699)
,p_plug_name=>unistr('\56E2\961F\4EBA\5458\5E73\5747\54CD\5E94\65F6\957F\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\5C0F\65F6\FF09')
,p_region_name=>'team_response'
,p_parent_plug_id=>wwv_flow_imp.id(2568656930098455288)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353449785230712094)
,p_region_id=>wwv_flow_imp.id(2568532968733024699)
,p_chart_type=>'combo'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353451476561712093)
,p_chart_id=>wwv_flow_imp.id(2353449785230712094)
,p_seq=>10
,p_name=>unistr('\56E2\961F\4EBA\5458\5E73\5747\54CD\5E94\65F6\957F\5BF9\6BD4\56FE')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_TEAM_TYPE_3 = ''ACCOUNTABILITY'' then',
'        return q''~',
'            with user_v as (select v.NAME, v.JOB_NUMBER',
'                            from MPF_USER_DEPT_MAIN_ASSO_V v',
'                            where v.LEADER_EXT_USER_ID = :USER_ID',
'                              and v.TENANT_ID = :USERTENANT',
'                              AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'            select v.NAME,',
'                   v.JOB_NUMBER,',
'                   round(avg(nvl(OWN_RESPONSE_TIME,0)) / 60,1)',
'                       as    TOTAL,',
unistr('                   ''\4E3B\8D23''      EVENT_TYPE,'),
'                   ''#086EFE'' COLOR',
'            from TENANT_EVENT_USER_CONVERGE s',
'                     inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
'            where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
unistr('              and s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'              and s.USER_IDENTITY = ''MAIN''',
'              and s.IS_ARCHIVE = 0',
'              and s.EVENT_STATUS = ''RESOLVED''',
'              and s.BASE_DEPT_ID=:BASE_DEPT_ID',
'              and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'              and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'              and s.TENANT_ID = :USERTENANT',
'            group by v.NAME, v.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    elsif :P129_TEAM_TYPE_3 = ''ASSIST'' then',
'        return q''~',
'            with user_v as (select v.NAME, v.JOB_NUMBER',
'                            from MPF_USER_DEPT_MAIN_ASSO_V v',
'                            where v.LEADER_EXT_USER_ID = :USER_ID',
'                              and v.TENANT_ID = :USERTENANT',
'                              AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'            select v.NAME,',
'                   v.JOB_NUMBER,',
'                   round(avg(nvl(OWN_RESPONSE_TIME, 0)) / 60, 1)',
'                       as    TOTAL,',
unistr('                   ''\534F\52A9''      EVENT_TYPE,'),
'                   ''#4EA8FB'' COLOR',
'            from TENANT_EVENT_USER_CONVERGE s',
'                     inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
'            where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
unistr('              and not (s.OBLIGATION_DEPT = ''\4E3B\8D23'' and s.USER_IDENTITY = ''MAIN'')'),
'              and (s.USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'              and s.IS_ARCHIVE = 0',
'              and s.EVENT_STATUS = ''RESOLVED''',
'              and s.BASE_DEPT_ID=:BASE_DEPT_ID',
'              and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'              and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'              and s.TENANT_ID = :USERTENANT',
'            group by v.NAME, v.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    else',
'        return q''~',
'             with user_v as (select v.NAME, v.JOB_NUMBER',
'                    from MPF_USER_DEPT_MAIN_ASSO_V v',
'                    where v.LEADER_EXT_USER_ID = :USER_ID',
'                      and v.TENANT_ID = :USERTENANT',
'                      AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'            select v.NAME,',
'                   v.JOB_NUMBER,',
'                   round(avg(nvl(OWN_RESPONSE_TIME, 0)) / 60, 1)',
'                       as    TOTAL,',
unistr('                   ''\534F\8C03''      EVENT_TYPE,'),
'                   ''#64E1D2'' COLOR',
'            from TENANT_EVENT_USER_CONVERGE s',
'                     inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
'            where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
'              and s.USER_IDENTITY in',
'                  (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'              and s.IS_ARCHIVE = 0',
'              and s.EVENT_STATUS = ''RESOLVED''',
'              and s.BASE_DEPT_ID=:BASE_DEPT_ID',
'              and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'              and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'              and s.TENANT_ID = :USERTENANT',
'            group by v.NAME, v.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    end if;',
'end;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME,P129_TEAM_TYPE_3'
,p_series_type=>'bar'
,p_series_name_column_name=>'EVENT_TYPE'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'NAME'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353450871641712094)
,p_chart_id=>wwv_flow_imp.id(2353449785230712094)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_min_step=>1
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353450325789712094)
,p_chart_id=>wwv_flow_imp.id(2353449785230712094)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2559725046085548579)
,p_plug_name=>unistr('\90E8\95E8\770B\677F')
,p_parent_plug_id=>wwv_flow_imp.id(2559724796881548576)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number(10);',
'',
'begin',
'',
'    select count(1)',
'    into v_count',
'    from TENANT_AREA_UPGRADE_USERS_V',
'    where TENANT_ID = :USERTENANT',
'      and EXT_ORG_ID = :USERDEPT',
'      and EXT_USER_ID = :USER_ID',
'      and UPGRADE_LEVEL > 0',
'      and BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
'    if v_count > 0 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2568499280603067999)
,p_name=>unistr('\90E8\95E8\5F02\5E38\8BA1\6570')
,p_parent_plug_id=>wwv_flow_imp.id(2559725046085548579)
,p_template=>wwv_flow_imp.id(2302045568724836200)
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-lg'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_grid_column_span=>2
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select event_type, total, decode(event_type, ''\5DF2\5B8C\6210\7684\5DE5\5355\6570'', ''RESOLVED'', ''WAIT_RESOLVE'') event_status'),
'from (',
'    with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                    from MPF_USER_DEPT_MAIN_ASSO_V v',
'                    where v.EXT_ORG_ID = :USERDEPT',
'                      and v.TENANT_ID = :USERTENANT',
'                      AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
unistr('    select nvl(sum("\5DF2\5B8C\6210\7684\5DE5\5355\6570"),0) "\5DF2\5B8C\6210\7684\5DE5\5355\6570", nvl(sum("\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38"),0) "\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38", nvl(sum("\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38"),0) "\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38"'),
'    from (',
'             select e.EVENT_ID,',
'                    case',
'                        when e.STATUS = ''RESOLVED'' then',
'                            1',
unistr('                        else 0 end "\5DF2\5B8C\6210\7684\5DE5\5355\6570",'),
'                    case',
'                        when e.IS_STOP_LINE = ''TRUE'' AND',
'                             e.STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                            then',
'                            1',
unistr('                        else 0 end "\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38",'),
'                    case',
'                        when e.IS_STOP_LINE = ''FALSE'' AND',
'                             e.STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                            then',
'                            1',
unistr('                        else 0 end "\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38"'),
'             from TENANT_EVENT e',
'                      inner join user_v v on v.EXT_USER_ID = e.SUBMIT_USER_ID',
'             WHERE e.TENANT_ID = :USERTENANT',
'               AND e.BASE_DEPT_ID = :BASE_DEPT_ID',
'               AND e.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'               AND e.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'             union all',
'             SELECT distinct t.EVENT_ID,',
'                    case',
'                        when t.EVENT_STATUS = ''RESOLVED'' then',
'                            1',
unistr('                        else 0 end "\5DF2\5B8C\6210\7684\5DE5\5355\6570",'),
'                    case',
'                        when t.IS_STOP_LINE = ''TRUE'' AND',
'                             t.EVENT_STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                            then',
'                            1',
unistr('                        else 0 end "\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38",'),
'                    case',
'                        when t.IS_STOP_LINE = ''FALSE'' AND',
'                             t.EVENT_STATUS IN (''WAIT_RESOLVE'', ''WAIT_ASSIGNED'', ''WAIT_RECEIVE'')',
'                            then',
'                            1',
unistr('                        else 0 end "\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38"'),
'             FROM TENANT_EVENT_USER_CONVERGE t',
'                      inner join user_v v on v.JOB_NUMBER = t.JOB_NUMBER',
'             WHERE not exists(',
'                     select 1',
'                     from TENANT_EVENT e',
'                              inner join user_v v on v.EXT_USER_ID = e.SUBMIT_USER_ID',
'                     WHERE e.TENANT_ID = :USERTENANT',
'                       AND e.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'                       AND e.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'                       and e.EVENT_ID = t.EVENT_ID',
'                     AND e.BASE_DEPT_ID = :BASE_DEPT_ID',
'                 )',
'               and t.IS_ARCHIVE = 0',
'               AND t.TENANT_ID = :USERTENANT',
'               AND t.USER_IDENTITY=''MAIN''',
unistr('               AND t.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'               AND t.BASE_DEPT_ID = :BASE_DEPT_ID',
'               AND t.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'               AND t.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
unistr('         )) s unpivot ( total for event_type in ("\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38","\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38","\5DF2\5B8C\6210\7684\5DE5\5355\6570"))'),
unistr('order by decode(event_type, ''\8FDB\884C\4E2D\7684\91CD\5927\5F02\5E38'', 1, ''\8FDB\884C\4E2D\7684\4E00\822C\5F02\5E38'', 2, ''\5DF2\5B8C\6210\7684\5DE5\5355\6570'', 3);'),
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2302072847545836211)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2353467070034712084)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Event Type'
,p_column_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:45:P45_BEGIN,P45_END,P45_STATUS:&P129_START_TIME.,&P129_END_TIME.,#EVENT_STATUS#'
,p_column_linktext=>'#EVENT_TYPE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2353467515049712084)
,p_query_column_id=>2
,p_column_alias=>'TOTAL'
,p_column_display_sequence=>20
,p_column_heading=>'Total'
,p_column_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:45:P45_BEGIN,P45_END,P45_STATUS:&P129_START_TIME.,&P129_END_TIME.,#EVENT_STATUS#'
,p_column_linktext=>'#TOTAL#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2352230127020676167)
,p_query_column_id=>3
,p_column_alias=>'EVENT_STATUS'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2568499567947068002)
,p_name=>unistr('\90E8\95E8\65F6\957F\5361\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2559725046085548579)
,p_template=>wwv_flow_imp.id(2302029553726836195)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_component_template_options=>'#DEFAULT#:u-colors:t-BadgeList--large:t-BadgeList--dash:t-BadgeList--cols:t-Report--hideNoPagination'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with user_v as (select v.JOB_NUMBER',
'                from MPF_USER_DEPT_MAIN_ASSO_V v',
'                where v.EXT_ORG_ID = :USERDEPT',
'                AND v.BASE_DEPT_ID = :BASE_DEPT_ID',
'                  and v.TENANT_ID = :USERTENANT)',
'select s1.event_type_2                              as event_type_2,',
'       to_char(nvl(s1.total_2, 0), ''fm999999990.0'') as total_2,',
'       s3.event_type                                as event_type_3,',
'       to_char(nvl(s3.total, 0), ''fm999999990.0'')   as total_3',
'from (select ''A''                 tag,',
'             avg(',
'                     OWN_DURATION_MINUTE / 60',
'             ) as                total_2,',
unistr('             ''\4E3B\8D23-\5E73\5747\89E3\51B3\65F6\957F'' event_type_2'),
'',
'      from TENANT_EVENT_USER_CONVERGE s',
'               inner join user_v v on v.JOB_NUMBER = s.JOB_NUMBER',
unistr('      where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'        and s.USER_IDENTITY = ''MAIN''',
'        and s.IS_ARCHIVE = 0',
'        and s.EVENT_STATUS = ''RESOLVED''',
'        and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'        and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'        and s.TENANT_ID = :USERTENANT',
'        and s.BASE_DEPT_ID = :BASE_DEPT_ID) s1',
'         inner join (select avg(',
'                                    OWN_RESPONSE_TIME / 60',
'                            ) as                total,',
unistr('                            ''\4E3B\8D23-\5E73\5747\54CD\5E94\65F6\957F'' event_type,'),
'                            ''A''                 tag',
'                     from TENANT_EVENT_USER_CONVERGE s',
'                              inner join user_v v on v.JOB_NUMBER = s.JOB_NUMBER',
unistr('                     where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'                       and s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
'                       and s.USER_IDENTITY = ''MAIN''',
'                       and s.IS_ARCHIVE = 0',
'                       and s.EVENT_STATUS = ''RESOLVED''',
'                       and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                       and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'                       and s.TENANT_ID = :USERTENANT',
'                       and s.BASE_DEPT_ID = :BASE_DEPT_ID) s3',
'                    on s3.tag = s1.tag'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2302057469616836205)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124728292952986968)
,p_query_column_id=>1
,p_column_alias=>'EVENT_TYPE_2'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124728397216986969)
,p_query_column_id=>2
,p_column_alias=>'TOTAL_2'
,p_column_display_sequence=>20
,p_column_heading=>unistr('\90E8\95E8\5E73\5747\89E3\51B3\65F6\957F(\4E3B\8D23)')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124728457748986970)
,p_query_column_id=>3
,p_column_alias=>'EVENT_TYPE_3'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3124728544061986971)
,p_query_column_id=>4
,p_column_alias=>'TOTAL_3'
,p_column_display_sequence=>30
,p_column_heading=>unistr('\90E8\95E8\53C2\4E0E\5E73\5747\54CD\5E94\65F6\957F(\4E3B\8D23)')
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568532278824024692)
,p_plug_name=>unistr('\90E8\95E8\6210\5458')
,p_parent_plug_id=>wwv_flow_imp.id(2559725046085548579)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>130
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>2
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2568532513449024694)
,p_name=>unistr('\90E8\95E8\6210\5458')
,p_parent_plug_id=>wwv_flow_imp.id(2568532278824024692)
,p_template=>wwv_flow_imp.id(2302017113938836190)
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--noBorders'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.NAME',
'from MPF_USER_DEPT_MAIN_ASSO_V v',
'where v.EXT_ORG_ID = :USERDEPT',
'  and v.TENANT_ID = :USERTENANT',
'  and v.BASE_DEPT_ID = :BASE_DEPT_ID',
'  ;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2302068286936836209)
,p_query_num_rows=>36
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_LEFT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2198216496274277199)
,p_query_column_id=>1
,p_column_alias=>'NAME'
,p_column_display_sequence=>10
,p_disable_sort_column=>'N'
,p_display_as=>'RICH_TEXT'
,p_attribute_01=>'HTML'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568656014682455278)
,p_plug_name=>unistr('\5BB9\56682')
,p_parent_plug_id=>wwv_flow_imp.id(2559725046085548579)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>120
,p_plug_grid_column_span=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568528636909024656)
,p_plug_name=>unistr('\90E8\95E8\5DF2\5B8C\6210\7684\5DE5\5355')
,p_parent_plug_id=>wwv_flow_imp.id(2568656014682455278)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select EVENT_CODE, EVENT_TYPE, sum(1) EVENT_COUNT',
'from (with user_v as (SELECT V.EXT_USER_ID, V.NAME, V.JOB_NUMBER',
'                      FROM MPF_USER_DEPT_MAIN_ASSO_V V',
'                      WHERE V.EXT_ORG_ID = :USERDEPT',
'                        AND V.TENANT_ID = :USERTENANT',
'                        AND V.BASE_DEPT_ID = :BASE_DEPT_ID',
'                        )',
'      SELECT DISTINCT EVENT_CODE, EVENT_TYPE, EVENT_ID EVENT_COUNT',
'      FROM (',
'               SELECT T.SECOND_EVENT_CODE EVENT_CODE,',
'                      T.SECOND_EVENT_NAME EVENT_TYPE,',
'                      T.EVENT_ID',
'               FROM TENANT_EVENT_USER_CONVERGE T',
'                        INNER JOIN user_v V ON T.JOB_NUMBER = V.JOB_NUMBER',
'               WHERE T.IS_ARCHIVE = 0',
unistr('                 AND T.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'                 AND T.EVENT_STATUS = ''RESOLVED''',
'                 AND T.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'                 AND T.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'                 AND T.TENANT_ID = :USERTENANT',
'                AND T.BASE_DEPT_ID = :BASE_DEPT_ID',
'',
'               UNION ALL',
'',
'               SELECT E.SECOND_EVENT_CODE EVENT_CODE,',
'                      C.NAME              EVENT_TYPE,',
'                      E.EVENT_ID',
'               FROM TENANT_EVENT E',
'                        INNER JOIN TENANT_EVENT_CATEGORY C',
'                                   ON E.SECOND_EVENT_CODE = C.CODE AND C.TENANT_ID = E.TENANT_ID',
'                        INNER JOIN user_v V ON E.SUBMIT_USER_ID = V.EXT_USER_ID',
'               WHERE E.DEL_FLAG = 0',
'                 AND E.STATUS = ''RESOLVED''',
'                 AND E.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'                 AND E.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'                 AND E.TENANT_ID = :USERTENANT',
'                 AND E.BASE_DEPT_ID = :BASE_DEPT_ID',
'                 AND C.BASE_DEPT_ID = :BASE_DEPT_ID',
'               ))',
'group by EVENT_CODE, EVENT_TYPE;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353473545845712079)
,p_region_id=>wwv_flow_imp.id(2568528636909024656)
,p_chart_type=>'pie'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'end'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353474098714712079)
,p_chart_id=>wwv_flow_imp.id(2353473545845712079)
,p_seq=>10
,p_name=>unistr('\90E8\95E8\5DF2\5B8C\6210\7684\5DE5\5355-\997C\56FE')
,p_max_row_count=>10000
,p_location=>'REGION_SOURCE'
,p_items_value_column_name=>'EVENT_COUNT'
,p_items_label_column_name=>'EVENT_TYPE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568529012676024659)
,p_plug_name=>unistr('\90E8\95E8\4EBA\5458\53C2\4E0E\5DE5\5355\6570\91CF\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\4E2A\FF09')
,p_region_name=>'department_quantity'
,p_parent_plug_id=>wwv_flow_imp.id(2568656014682455278)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353475005572712078)
,p_region_id=>wwv_flow_imp.id(2568529012676024659)
,p_chart_type=>'combo'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353476656359712078)
,p_chart_id=>wwv_flow_imp.id(2353475005572712078)
,p_seq=>10
,p_name=>unistr('\90E8\95E8\4EBA\5458\53C2\4E0E\5DE5\5355\6570\91CF\5BF9\6BD4\56FE')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_DEPARTMENT_TYPE_1 = ''ACCOUNTABILITY'' then',
'        return q''~',
'            with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                         from MPF_USER_DEPT_MAIN_ASSO_V v',
'                         where v.EXT_ORG_ID = :USERDEPT',
'                           and v.TENANT_ID = :USERTENANT',
'                           AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'         select v.NAME,',
'                v.JOB_NUMBER,',
'                ''#086EFE'' color,',
'                count(1)         total,',
unistr('                ''\4E3B\8D23''      event_type'),
'         from TENANT_EVENT_USER_CONVERGE s',
'                  inner join user_v v on v.JOB_NUMBER = s.JOB_NUMBER',
unistr('         where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.USER_IDENTITY = ''MAIN''',
'           and S.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.IS_ARCHIVE = 0',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           group by v.NAME,V.JOB_NUMBER',
'           order by total desc;',
'         ~'';',
'    elsif :P129_DEPARTMENT_TYPE_1 = ''ASSIST'' then',
'        return q''~',
'       with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                         from MPF_USER_DEPT_MAIN_ASSO_V v',
'                         where v.EXT_ORG_ID = :USERDEPT',
'                           and v.TENANT_ID = :USERTENANT',
'                           AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'         select v.NAME,',
'                v.JOB_NUMBER,',
'                ''#4EA8FB'' color,',
'                count(1)         total,',
unistr('                ''\534F\52A9''      event_type'),
'',
'         from TENANT_EVENT_USER_CONVERGE s',
'                  inner join user_v v on v.JOB_NUMBER = s.JOB_NUMBER',
unistr('         where not (s.OBLIGATION_DEPT = ''\4E3B\8D23'' and s.USER_IDENTITY = ''MAIN'')'),
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and (s.USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'           and s.IS_ARCHIVE = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'            group by v.NAME,V.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'        elsif :P129_DEPARTMENT_TYPE_1 = ''HARMONIZE'' then',
'        return q''~',
'       with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                         from MPF_USER_DEPT_MAIN_ASSO_V v',
'                         where v.EXT_ORG_ID = :USERDEPT',
'                           and v.TENANT_ID = :USERTENANT',
'                           AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'         select v.NAME,',
'                v.JOB_NUMBER,',
'                ''#64E1D2'' color,',
'                count(1)         total,',
unistr('                ''\534F\8C03''      event_type'),
'',
'         from TENANT_EVENT_USER_CONVERGE s',
'                  inner join user_v v on v.JOB_NUMBER = s.JOB_NUMBER',
'         where s.USER_IDENTITY in (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.IS_ARCHIVE = 0',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'            group by v.NAME,V.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    else',
'        return q''~',
'        with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                         from MPF_USER_DEPT_MAIN_ASSO_V v',
'                         where v.EXT_ORG_ID = :USERDEPT',
'                           and v.TENANT_ID = :USERTENANT',
'                           AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'         select v.NAME,',
'                v.JOB_NUMBER,',
'                ''#26CABD'' color,',
'                count(1)         total,',
unistr('                ''\4E0A\62A5''      event_type'),
'         from TENANT_EVENT s',
'                  inner join user_v v on v.EXT_USER_ID = s.SUBMIT_USER_ID',
'         where not exists(',
'                 select 1',
'                 from TENANT_EVENT_USER_CONVERGE e',
'                 where e.IS_ARCHIVE = 0',
'                   and e.EVENT_STATUS = ''RESOLVED''',
'                   and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                   and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'                   and e.TENANT_ID = :USERTENANT',
'                   and e.EVENT_ID = s.EVENT_ID',
'                   and e.BASE_DEPT_ID = :BASE_DEPT_ID',
'             )',
'           and s.STATUS = ''RESOLVED''',
'           and s.DEL_FLAG = 0',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'            group by v.NAME,V.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    end if;',
'end;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME,P129_DEPARTMENT_TYPE_1'
,p_series_type=>'bar'
,p_series_name_column_name=>'EVENT_TYPE'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'NAME'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353476126787712078)
,p_chart_id=>wwv_flow_imp.id(2353475005572712078)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353475529632712078)
,p_chart_id=>wwv_flow_imp.id(2353475005572712078)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568529485375024664)
,p_plug_name=>unistr('\90E8\95E8\9891\53D1\4E8B\4EF6\7EDF\8BA1\56FE(\4E3B\8D23)')
,p_parent_plug_id=>wwv_flow_imp.id(2568656014682455278)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353477569665712077)
,p_region_id=>wwv_flow_imp.id(2568529485375024664)
,p_chart_type=>'bar'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353479331841712076)
,p_chart_id=>wwv_flow_imp.id(2353477569665712077)
,p_seq=>10
,p_name=>unistr('\90E8\95E8\9891\53D1\4E8B\4EF6\7EDF\8BA1\56FE(\4E3B\8D23)')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TOTAL, FIRST_EVENT_CODE, SECOND_EVENT_CODE, SECOND_EVENT_NAME',
'FROM (',
'         SELECT COUNT(EVENT_ID) AS TOTAL, FIRST_EVENT_CODE, SECOND_EVENT_CODE, SECOND_EVENT_NAME',
'         FROM TENANT_EVENT_USER_CONVERGE S',
'                  inner JOIN (',
'             select v.EXT_USER_ID, v.JOB_NUMBER, v.NAME',
'             from MPF_USER_DEPT_MAIN_ASSO_V v',
'             where v.EXT_ORG_ID = :USERDEPT',
'               and v.TENANT_ID = :USERTENANT',
'               and v.BASE_DEPT_ID = :BASE_DEPT_ID',
'         ) U ON S.JOB_NUMBER = U.JOB_NUMBER ',
'         WHERE S.IS_ARCHIVE = 0',
'           AND S.TENANT_ID = :USERTENANT',
'           AND S.EVENT_STATUS = ''RESOLVED''',
unistr('           AND S.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           AND S.USER_IDENTITY = ''MAIN''',
'           and S.BASE_DEPT_ID = :BASE_DEPT_ID',
'           AND S.BEGIN_TIME >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'           AND S.BEGIN_TIME <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'         GROUP BY FIRST_EVENT_CODE, SECOND_EVENT_CODE, SECOND_EVENT_NAME',
'         ORDER BY COUNT(EVENT_ID) desc)',
'WHERE ROWNUM <= 8;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'SECOND_EVENT_NAME'
,p_color=>'#4daafb'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353478101969712077)
,p_chart_id=>wwv_flow_imp.id(2353477569665712077)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353478681235712076)
,p_chart_id=>wwv_flow_imp.id(2353477569665712077)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568530019829024669)
,p_plug_name=>unistr('\90E8\95E8\4EBA\5458\5E73\5747\89E3\51B3\65F6\957F\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\5C0F\65F6\FF09')
,p_region_name=>'department_duration'
,p_parent_plug_id=>wwv_flow_imp.id(2568656014682455278)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353482780741712074)
,p_region_id=>wwv_flow_imp.id(2568530019829024669)
,p_chart_type=>'combo'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353484488989712073)
,p_chart_id=>wwv_flow_imp.id(2353482780741712074)
,p_seq=>10
,p_name=>unistr('\90E8\95E8\4EBA\5458\5E73\5747\89E3\51B3\65F6\957F')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_DEPARTMENT_TYPE_2 = ''ACCOUNTABILITY'' then',
'        return q''~',
'            with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                         from MPF_USER_DEPT_MAIN_ASSO_V v',
'                         where v.EXT_ORG_ID = :USERDEPT',
'                           and v.TENANT_ID = :USERTENANT',
'                           AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'         select s.NAME,',
'                V.JOB_NUMBER,',
'                avg(OWN_DURATION_MINUTE) / 60',
'                    as    TOTAL,',
unistr('                ''\4E3B\8D23''      EVENT_TYPE,'),
'                ''#086EFE'' COLOR',
'         from TENANT_EVENT_USER_CONVERGE s',
'                  inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
unistr('         where s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'           and s.USER_IDENTITY = ''MAIN''',
'           and s.IS_ARCHIVE = 0',
'           and s.EVENT_STATUS = ''RESOLVED''',
'           and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'           and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'           and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           and s.TENANT_ID = :USERTENANT',
'            group by  s.NAME,V.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    elsif :P129_DEPARTMENT_TYPE_2 = ''ASSIST'' then',
'        return q''~',
'            with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                            from MPF_USER_DEPT_MAIN_ASSO_V v',
'                            where v.EXT_ORG_ID = :USERDEPT',
'                              and v.TENANT_ID = :USERTENANT',
'                              AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'            select s.NAME,',
'                   V.JOB_NUMBER,',
'                   avg(OWN_DURATION_MINUTE) / 60',
'                       as    TOTAL,',
unistr('                   ''\534F\52A9''      EVENT_TYPE,'),
'                   ''#4EA8FB'' COLOR',
'            from TENANT_EVENT_USER_CONVERGE s',
'                     inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
unistr('            where not (s.OBLIGATION_DEPT = ''\4E3B\8D23'' and s.USER_IDENTITY = ''MAIN'')'),
'              and (s.USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'              and s.IS_ARCHIVE = 0',
'              and s.EVENT_STATUS = ''RESOLVED''',
'              and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'              and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'              and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'              and s.TENANT_ID = :USERTENANT',
'            group by s.NAME, V.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    else',
'        return q''~',
'            with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                            from MPF_USER_DEPT_MAIN_ASSO_V v',
'                            where v.EXT_ORG_ID = :USERDEPT',
'                              and v.TENANT_ID = :USERTENANT',
'                              AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'            select s.NAME,',
'                   V.JOB_NUMBER,',
'                   avg(OWN_DURATION_MINUTE) / 60',
'                       as    TOTAL,',
unistr('                   ''\534F\8C03''      EVENT_TYPE,'),
'                   ''#64E1D2'' COLOR',
'            from TENANT_EVENT_USER_CONVERGE s',
'                     inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
'            where s.USER_IDENTITY in',
'                  (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'              and s.IS_ARCHIVE = 0',
'              and s.EVENT_STATUS = ''RESOLVED''',
'              and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'              and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'              and s.TENANT_ID = :USERTENANT',
'              and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'            group by s.NAME, V.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    end if;',
'end;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME,P129_DEPARTMENT_TYPE_2'
,p_series_type=>'bar'
,p_series_name_column_name=>'EVENT_TYPE'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'NAME'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353483893687712074)
,p_chart_id=>wwv_flow_imp.id(2353482780741712074)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353483333985712074)
,p_chart_id=>wwv_flow_imp.id(2353482780741712074)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568530479438024674)
,p_plug_name=>unistr('\90E8\95E8\4EBA\5458\590D\76D8\6570\91CF\7EDF\8BA1\56FE')
,p_parent_plug_id=>wwv_flow_imp.id(2568656014682455278)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353485367529712073)
,p_region_id=>wwv_flow_imp.id(2568530479438024674)
,p_chart_type=>'bar'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>false
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353487100975712072)
,p_chart_id=>wwv_flow_imp.id(2353485367529712073)
,p_seq=>10
,p_name=>unistr('\90E8\95E8\4EBA\5458\590D\76D8\6570\91CF\7EDF\8BA1\56FE')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(EVENT_ANALYZE_ID) e_count,',
'       v.EXT_USER_ID,',
'       v.NAME',
'from TENANT_EVENT_ANALYZE a',
'         inner join (',
'    select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'    from MPF_USER_DEPT_MAIN_ASSO_V v',
'    where v.EXT_ORG_ID = :USERDEPT',
'      and v.TENANT_ID = :USERTENANT',
'      and v.BASE_DEPT_ID = :BASE_DEPT_ID',
') v on a.SUBMIT_USER_ID = v.EXT_USER_ID',
'where a.TENANT_ID = :USERTENANT',
'  and a.DEL_FLAG = 0',
'  and a.AUDIT_STATE = ''COMPLETE''',
'  and a.BASE_DEPT_ID = :BASE_DEPT_ID',
'  and a.UPDATE_DATE >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'  and a.UPDATE_DATE <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'group by v.EXT_USER_ID, v.NAME order by e_count desc'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_items_value_column_name=>'E_COUNT'
,p_items_label_column_name=>'NAME'
,p_color=>'#50a9fe'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353486519645712072)
,p_chart_id=>wwv_flow_imp.id(2353485367529712073)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353485939402712072)
,p_chart_id=>wwv_flow_imp.id(2353485367529712073)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568530999765024679)
,p_plug_name=>unistr('\90E8\95E8\77E5\8BC6\5E93\83B7\8D5E\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\6B21\FF09')
,p_parent_plug_id=>wwv_flow_imp.id(2568656014682455278)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353480141389712075)
,p_region_id=>wwv_flow_imp.id(2568530999765024679)
,p_chart_type=>'combo'
,p_height=>'335'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353481849580712075)
,p_chart_id=>wwv_flow_imp.id(2353480141389712075)
,p_seq=>10
,p_name=>unistr('\90E8\95E8\77E5\8BC6\5E93\83B7\8D5E\5BF9\6BD4\56FE')
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(S.EVENT_ANALYZE_LIKE_ID) TOTAL,',
'       ''#4EA8FB''                      COLOR,',
'       U.NAME                         NAME,',
'       U.JOB_NUMBER',
'FROM TENANT_EVENT_ANALYZE_LIKE_RECORD S',
'         INNER JOIN TENANT_EVENT_ANALYZE A ON S.EVENT_ANALYZE_ID = A.EVENT_ANALYZE_ID AND A.DEL_FLAG = 0',
'         LEFT JOIN MPF_USER_DEPT_MAIN_ASSO_V U',
'                   ON A.SUBMIT_USER_ID = U.EXT_USER_ID',
'                       AND S.TENANT_ID = U.TENANT_ID',
'WHERE U.EXT_ORG_ID = :USERDEPT',
'  AND S.CREATION_DATE >= TO_DATE(:P129_START_TIME, ''YYYY-MM-DD'')',
'  AND S.CREATION_DATE <= TO_DATE(:P129_END_TIME, ''YYYY-MM-DD'') + 1',
'  AND S.TENANT_ID = :USERTENANT',
'  and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'  and A.BASE_DEPT_ID = :BASE_DEPT_ID',
'  and U.BASE_DEPT_ID = :BASE_DEPT_ID',
'GROUP BY U.NAME,U.JOB_NUMBER order by COUNT(S.EVENT_ANALYZE_LIKE_ID) desc;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME'
,p_series_type=>'bar'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'NAME'
,p_color=>'#50a9fe'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353481295524712075)
,p_chart_id=>wwv_flow_imp.id(2353480141389712075)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353480664615712075)
,p_chart_id=>wwv_flow_imp.id(2353480141389712075)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2568654057858455259)
,p_plug_name=>unistr('\90E8\95E8\4EBA\5458\5E73\5747\54CD\5E94\65F6\957F\5BF9\6BD4\56FE\FF08\5355\4F4D\FF1A\5C0F\65F6\FF09')
,p_region_name=>'department_response'
,p_parent_plug_id=>wwv_flow_imp.id(2568656014682455278)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(2353470947516712081)
,p_region_id=>wwv_flow_imp.id(2568654057858455259)
,p_chart_type=>'combo'
,p_height=>'320'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(2353472720173712080)
,p_chart_id=>wwv_flow_imp.id(2353470947516712081)
,p_seq=>10
,p_name=>unistr('\90E8\95E8\4EBA\5458\54CD\5E94\65F6\957F\5BF9\6BD4\56FE')
,p_data_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P129_DEPARTMENT_TYPE_3 = ''ACCOUNTABILITY'' then',
'        return q''~',
'            with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                            from MPF_USER_DEPT_MAIN_ASSO_V v',
'                            where v.EXT_ORG_ID = :USERDEPT',
'                              and v.TENANT_ID = :USERTENANT',
'                              AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'            select s.NAME,',
'                   V.JOB_NUMBER,',
'                   round(avg(OWN_RESPONSE_TIME) / 60, 1)',
'                       as    TOTAL,',
unistr('                   ''\4E3B\8D23''      EVENT_TYPE,'),
'                   ''#086EFE'' COLOR',
'            from TENANT_EVENT_USER_CONVERGE s',
'                     inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
'            where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
unistr('              and s.OBLIGATION_DEPT = ''\4E3B\8D23'''),
'              and s.USER_IDENTITY = ''MAIN''',
'              and s.IS_ARCHIVE = 0',
'              and s.EVENT_STATUS = ''RESOLVED''',
'              and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'              and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'              and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'              and s.TENANT_ID = :USERTENANT',
'            group by s.NAME, V.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    elsif :P129_DEPARTMENT_TYPE_3 = ''ASSIST'' then',
'        return q''~',
'            with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                            from MPF_USER_DEPT_MAIN_ASSO_V v',
'                            where v.EXT_ORG_ID = :USERDEPT',
'                              and v.TENANT_ID = :USERTENANT',
'                              AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'            select s.NAME,',
'                   V.JOB_NUMBER,',
'                   round(avg(nvl(OWN_RESPONSE_TIME,0)) / 60,1)',
'                       as    TOTAL,',
unistr('                   ''\534F\52A9''      EVENT_TYPE,'),
'                   ''#4EA8FB'' COLOR',
'            from TENANT_EVENT_USER_CONVERGE s',
'                     inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
'            where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
unistr('              and not (s.OBLIGATION_DEPT = ''\4E3B\8D23'' and s.USER_IDENTITY = ''MAIN'')'),
'              and (s.USER_IDENTITY in (''SECONDARY'', ''MAIN''))',
'              and s.IS_ARCHIVE = 0',
'              and s.EVENT_STATUS = ''RESOLVED''',
'              and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'              and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'              and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'              and s.TENANT_ID = :USERTENANT',
'            group by s.NAME, V.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    else',
'        return q''~',
'            with user_v as (select v.EXT_USER_ID, v.NAME, v.JOB_NUMBER',
'                from MPF_USER_DEPT_MAIN_ASSO_V v',
'                where v.EXT_ORG_ID = :USERDEPT',
'                  and v.TENANT_ID = :USERTENANT',
'                  AND V.BASE_DEPT_ID = :BASE_DEPT_ID)',
'            select s.NAME, V.JOB_NUMBER,',
'                round(avg(nvl(OWN_RESPONSE_TIME,0)) / 60,1)',
'                    as    TOTAL,',
unistr('                ''\534F\8C03''      EVENT_TYPE,'),
'                ''#64E1D2'' COLOR',
'            from TENANT_EVENT_USER_CONVERGE s',
'                  inner join user_v v on s.JOB_NUMBER = v.JOB_NUMBER',
'            where s.BEGIN_TIME >= to_date(''2023-06-15'', ''yyyy-mm-dd'')',
'            and s.USER_IDENTITY in',
'               (''COORDINATION_DISPATCH_GROUP'', ''DEPARTMENT_ASSISTANT_MANAGER'', ''DEPARTMENT_MANAGER'')',
'            and s.IS_ARCHIVE = 0',
'            and s.EVENT_STATUS = ''RESOLVED''',
'            and s.BASE_DEPT_ID = :BASE_DEPT_ID',
'            and s.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'            and s.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'            and s.TENANT_ID = :USERTENANT',
'            group by s.NAME, V.JOB_NUMBER',
'            order by total desc;',
'         ~'';',
'    end if;',
'end;'))
,p_max_row_count=>10000
,p_ajax_items_to_submit=>'P129_START_TIME,P129_END_TIME,P129_DEPARTMENT_TYPE_3'
,p_series_type=>'bar'
,p_series_name_column_name=>'EVENT_TYPE'
,p_items_value_column_name=>'TOTAL'
,p_items_label_column_name=>'NAME'
,p_color=>'&COLOR.'
,p_line_style=>'solid'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353471513866712081)
,p_chart_id=>wwv_flow_imp.id(2353470947516712081)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(2353472120141712080)
,p_chart_id=>wwv_flow_imp.id(2353470947516712081)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>1
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_step=>1
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2559725433656548583)
,p_plug_name=>unistr('\65F6\95F4\7B5B\9009')
,p_region_name=>'date_picker'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2353422335365712127)
,p_name=>'P129_START_TIME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2559725433656548583)
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'ITEM',
  'max_item', 'P129_END_TIME',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2353422700062712124)
,p_name=>'P129_END_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2559725433656548583)
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'ITEM',
  'min_item', 'P129_START_TIME',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2353426283702712113)
,p_name=>'P129_CONDITION_3'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2568533452723024704)
,p_item_default=>'yyyy-iw'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'WEEK_MONTH'
,p_lov=>'.'||wwv_flow_imp.id(2353510383649712048)||'.'
,p_begin_on_new_line=>'N'
,p_grid_column=>12
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2353432978372712107)
,p_name=>'P129_CONDITION_4'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2566193528258402902)
,p_item_default=>'yyyy-iw'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'WEEK_MONTH'
,p_lov=>'.'||wwv_flow_imp.id(2353510383649712048)||'.'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2353438911808712103)
,p_name=>'P129_CONDITION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2566191453926402881)
,p_item_default=>'yyyy-iw'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'WEEK_MONTH'
,p_lov=>'.'||wwv_flow_imp.id(2353510383649712048)||'.'
,p_begin_on_new_line=>'N'
,p_grid_column=>12
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2353441940350712101)
,p_name=>'P129_CONDITION_5'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2566192013647402886)
,p_item_default=>'yyyy-iw'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'WEEK_MONTH'
,p_lov=>'.'||wwv_flow_imp.id(2353510383649712048)||'.'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2353444876293712099)
,p_name=>'P129_CONDITION_2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2566192518404402891)
,p_item_default=>'yyyy-iw'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'WEEK_MONTH'
,p_lov=>'.'||wwv_flow_imp.id(2353510383649712048)||'.'
,p_begin_on_new_line=>'N'
,p_grid_column=>12
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2353448099102712097)
,p_name=>'P129_GROUP_PARTICIPATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2568531571818024685)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (',
'           select count(distinct v.JOB_NUMBER) ',
'           from TENANT_EVENT_USER_CONVERGE e',
'                    inner join (',
'               select v.USER_ID, v.NAME, v.JOB_NUMBER',
'               from MPF_SHARE_BASIC_USER_INFO_V v',
'               where v.LEADER_USER_ID = :USER_ID and v.IS_LEAVE=0',
'                 and v.TENANT_ID = :USERTENANT',
'                 and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'           ) v on e.JOB_NUMBER = v.JOB_NUMBER',
'           WHERE e.TENANT_ID = :USERTENANT',
'           and e.BASE_DEPT_ID=:BASE_DEPT_ID',
'             and e.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'             and e.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'       ) || ''/'' || (select count(v.USER_ID) ',
'                    from MPF_SHARE_BASIC_USER_INFO_V v',
'                    where v.LEADER_USER_ID = :USER_ID and v.IS_LEAVE=0',
unistr('                      and v.TENANT_ID = :USERTENANT and v.BASE_DEPT_ID=:BASE_DEPT_ID)||'' \4EBA'' val'),
'from dual;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\56E2\961F\53C2\4E0E\5EA6')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_grid_label_column_span=>7
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2353469310281712082)
,p_name=>'P129_DEPT_PARTICIPATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2568532278824024692)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (',
'           select count(distinct v.JOB_NUMBER)',
'           from TENANT_EVENT_USER_CONVERGE e',
'                    inner join (',
'               select v.NAME, v.JOB_NUMBER',
'               from MPF_USER_DEPT_MAIN_ASSO_V v',
'               where v.EXT_ORG_ID = :USERDEPT',
'                 and v.TENANT_ID = :USERTENANT',
'                 and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'           ) v on e.JOB_NUMBER = v.JOB_NUMBER',
'           WHERE e.TENANT_ID = :USERTENANT',
'           and e.BASE_DEPT_ID=:BASE_DEPT_ID',
'             and e.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'             and e.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'       ) || ''/'' || (select count(v.EXT_USER_ID)',
'                    from MPF_USER_DEPT_MAIN_ASSO_V v',
'                    where v.EXT_ORG_ID = :USERDEPT',
unistr('                      and v.TENANT_ID = :USERTENANT and v.BASE_DEPT_ID=:BASE_DEPT_ID)||'' \4EBA'' val'),
'from dual;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\90E8\95E8\53C2\4E0E\5EA6')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>6
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2411031747314730373)
,p_name=>'P129_TYPE'
,p_item_sequence=>11
,p_item_plug_id=>wwv_flow_imp.id(2566191453926402881)
,p_item_default=>'ACCOUNTABILITY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2411031890891730374)
,p_name=>'P129_TYPE_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2566192518404402891)
,p_item_default=>'ACCOUNTABILITY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LIABILITY_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(2418941125981818899)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2411032094940730376)
,p_name=>'P129_TYPE_3'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2568533452723024704)
,p_item_default=>'ACCOUNTABILITY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\4E3B\8D23;ACCOUNTABILITY,\534F\52A9;ASSIST,\534F\8C03;HARMONIZE')
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2411033835962730393)
,p_name=>'P129_TYPE_1'
,p_item_sequence=>21
,p_item_plug_id=>wwv_flow_imp.id(2566191453926402881)
,p_item_default=>'ACCOUNTABILITY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LIABILITY_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(2418941125981818899)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_escape_on_http_output=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2419477143157259759)
,p_name=>'P129_DEPARTMENT_TYPE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2568529012676024659)
,p_item_default=>'ACCOUNTABILITY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LIABILITY_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(2418941125981818899)||'.'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2419477485081259762)
,p_name=>'P129_DEPARTMENT_TYPE_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2568530019829024669)
,p_item_default=>'ACCOUNTABILITY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\4E3B\8D23;ACCOUNTABILITY,\534F\52A9;ASSIST,\534F\8C03;HARMONIZE')
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2419477594917259763)
,p_name=>'P129_DEPARTMENT_TYPE_3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2568654057858455259)
,p_item_default=>'ACCOUNTABILITY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\4E3B\8D23;ACCOUNTABILITY,\534F\52A9;ASSIST,\534F\8C03;HARMONIZE')
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2419477718230259764)
,p_name=>'P129_TEAM_TYPE_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2568497798177067984)
,p_item_default=>'ACCOUNTABILITY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\4E3B\8D23;ACCOUNTABILITY,\534F\52A9;ASSIST,\534F\8C03;HARMONIZE')
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2419477817123259765)
,p_name=>'P129_TEAM_TYPE_3'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2568532968733024699)
,p_item_default=>'ACCOUNTABILITY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\4E3B\8D23;ACCOUNTABILITY,\534F\52A9;ASSIST,\534F\8C03;HARMONIZE')
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2419477850287259766)
,p_name=>'P129_TEAM_TYPE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2568496772705067974)
,p_item_default=>'ACCOUNTABILITY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LIABILITY_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(2418941125981818899)||'.'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2353506799592712052)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2200999193966291372)
,p_event_id=>wwv_flow_imp.id(2353506799592712052)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  apex_util.set_session_state(''P129_START_TIME'', trunc(sysdate,''mm''));',
'  apex_util.set_session_state(''P129_END_TIME'', sysdate);',
'',
'end;'))
,p_attribute_02=>'P129_START_TIME,P129_END_TIME'
,p_attribute_03=>'P129_START_TIME,P129_END_TIME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2200999243940291373)
,p_event_id=>wwv_flow_imp.id(2353506799592712052)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_group_participate varchar2(256);',
'    v_dept_participate  varchar2(256);',
'begin',
'',
'    select (',
'               select count(distinct v.JOB_NUMBER)',
'               from TENANT_EVENT_USER_CONVERGE e',
'                        inner join (',
'                   select v.USER_ID, v.NAME, v.JOB_NUMBER',
'                   from MPF_SHARE_BASIC_USER_INFO_V v',
'                   where v.LEADER_USER_ID = :USER_ID',
'                     and v.IS_LEAVE = 0',
'                     and v.TENANT_ID = :USERTENANT',
'                     and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'               ) v on e.JOB_NUMBER = v.JOB_NUMBER',
'               WHERE e.TENANT_ID = :USERTENANT',
'               and e.BASE_DEPT_ID=:BASE_DEPT_ID',
'                 and e.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                 and e.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           ) || ''/'' || (select count(v.USER_ID)',
'                        from MPF_SHARE_BASIC_USER_INFO_V v',
'                        where v.LEADER_USER_ID = :USER_ID',
'                          and v.IS_LEAVE = 0',
unistr('                          and v.TENANT_ID = :USERTENANT and v.BASE_DEPT_ID=:BASE_DEPT_ID) || '' \4EBA'''),
'    into v_group_participate',
'    from dual;',
'',
'',
'    select (',
'               select count(distinct v.JOB_NUMBER)',
'               from TENANT_EVENT_USER_CONVERGE e',
'                        inner join (',
'                   select v.NAME, v.JOB_NUMBER',
'                   from MPF_USER_DEPT_MAIN_ASSO_V v',
'                   where v.EXT_ORG_ID = :USERDEPT',
'                     and v.TENANT_ID = :USERTENANT',
'                     and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'               ) v on e.JOB_NUMBER = v.JOB_NUMBER',
'               WHERE e.TENANT_ID = :USERTENANT',
'               and e.BASE_DEPT_ID=:BASE_DEPT_ID',
'                 and e.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                 and e.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           ) || ''/'' || (select count(v.EXT_USER_ID)',
'                        from MPF_USER_DEPT_MAIN_ASSO_V v',
'                        where v.EXT_ORG_ID = :USERDEPT',
unistr('                          and v.TENANT_ID = :USERTENANT and v.BASE_DEPT_ID=:BASE_DEPT_ID) || '' \4EBA'''),
'    into v_dept_participate',
'    from dual;',
'',
'',
'    apex_util.set_session_state(''P129_GROUP_PARTICIPATE'', v_group_participate);',
'    apex_util.set_session_state(''P129_DEPT_PARTICIPATE'', v_dept_participate);',
'',
'end;'))
,p_attribute_03=>'P129_GROUP_PARTICIPATE,P129_DEPT_PARTICIPATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2353491409144712058)
,p_name=>unistr('\65F6\95F4\53D8\66F4')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_START_TIME,P129_END_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353504426894712053)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\4E2A\4EBA\53C2\4E0E\5DE5\5355\6570\91CF\5BF9\6BD4\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566191453926402881)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353491864901712058)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5237\65B0\4E2A\4EBA\65F6\957F\5361\7247')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566190429046402871)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353505385040712053)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\4E2A\4EBA\5F02\5E38\8BA1\6570')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566190178014402868)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353496841698712056)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\4E2A\4EBA\590D\76D8\6570\91CF\7EDF\8BA1\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566192013647402886)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353497361701712056)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\4E2A\4EBA\9891\53D1\4E8B\4EF6\7EDF\8BA1\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566193090402402897)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353497872579712056)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\4E2A\4EBA\5E73\5747\89E3\51B3\65F6\957F\7EDF\8BA1\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566192518404402891)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353492423833712058)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\4E2A\4EBA\5E73\5747\54CD\5E94\65F6\957F\7EDF\8BA1\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568533452723024704)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353492895613712058)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\4E2A\4EBA\77E5\8BC6\5E93\83B7\8D5E\7EDF\8BA1\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566193528258402902)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353502865157712054)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\4E2A\4EBA\5DF2\5B8C\6210\7684\5DE5\5355')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566191017110402876)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353503400322712054)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\56E2\961F\65F6\957F\5361\7247')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568496090259067967)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353504880092712053)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\56E2\961F\5DF2\5B8C\6210\7684\5DE5\5355')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568496430180067971)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353493405100712058)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\56E2\961F\9891\53D1\4E8B\4EF6\7EDF\8BA1\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568497284693067979)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353493876293712057)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\56E2\961F\4EBA\5458\53C2\4E0E\5DE5\5355\6570\91CF\5BF9\6BD4\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568496772705067974)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353494427895712057)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\56E2\961F\4EBA\5458\590D\76D8\6570\91CF\7EDF\8BA1\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568498254437067989)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353494923617712057)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\56E2\961F\4EBA\5458\5E73\5747\89E3\51B3\65F6\957F\5BF9\6BD4\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568497798177067984)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353495370510712057)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\56E2\961F\4EBA\5458\5E73\5747\54CD\5E94\65F6\957F\5BF9\6BD4\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568532968733024699)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353495940428712057)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\56E2\961F\77E5\8BC6\5E93\83B7\8D5E\5BF9\6BD4\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568498729511067994)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353505894575712053)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\56E2\961F\5F02\5E38\8BA1\6570')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568495723899067964)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353496400650712056)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\56E2\961F\6210\5458')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568531571818024685)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353506390947712053)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\90E8\95E8\5F02\5E38\8BA1\6570')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568499280603067999)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353503918336712054)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\90E8\95E8\5DF2\5B8C\6210\7684\5DE5\5355')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568528636909024656)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353498882356712056)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\90E8\95E8\9891\53D1\4E8B\4EF6\7EDF\8BA1\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568529485375024664)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353499358064712055)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\90E8\95E8\4EBA\5458\53C2\4E0E\5DE5\5355\6570\91CF\5BF9\6BD4\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568529012676024659)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353499932225712055)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>260
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\90E8\95E8\4EBA\5458\590D\76D8\6570\91CF\7EDF\8BA1\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568530479438024674)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353500425531712055)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>270
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\90E8\95E8\4EBA\5458\5E73\5747\89E3\51B3\65F6\957F')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568530019829024669)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353500850871712055)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>280
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\90E8\95E8\4EBA\5458\54CD\5E94\65F6\957F\5BF9\6BD4\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568654057858455259)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353501398481712055)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>290
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\90E8\95E8\6210\5458')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568532278824024692)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2200997641477291357)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>300
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\90E8\95E8\65F6\957F\5361\7247')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568499567947068002)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353502364184712054)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>320
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\90E8\95E8\77E5\8BC6\5E93\83B7\8D5E\5BF9\6BD4\56FE')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568530999765024679)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3201941822382497057)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>330
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_group_participate varchar2(256);',
'    v_dept_participate  varchar2(256);',
'begin',
'',
'    select (',
'               select count(distinct v.JOB_NUMBER)',
'               from TENANT_EVENT_USER_CONVERGE e',
'                        inner join (',
'                   select v.USER_ID, v.NAME, v.JOB_NUMBER',
'                   from MPF_SHARE_BASIC_USER_INFO_V v',
'                   where v.LEADER_USER_ID = :USER_ID',
'                     and v.IS_LEAVE = 0',
'                     and v.TENANT_ID = :USERTENANT',
'                     and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'               ) v on e.JOB_NUMBER = v.JOB_NUMBER',
'               WHERE e.TENANT_ID = :USERTENANT',
'               and e.BASE_DEPT_ID=:BASE_DEPT_ID',
'                 and e.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                 and e.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           ) || ''/'' || (select count(v.USER_ID)',
'                        from MPF_SHARE_BASIC_USER_INFO_V v',
'                        where v.LEADER_USER_ID = :USER_ID',
'                          and v.IS_LEAVE = 0',
unistr('                          and v.TENANT_ID = :USERTENANT and  v.BASE_DEPT_ID=:BASE_DEPT_ID) || '' \4EBA'''),
'    into v_group_participate',
'    from dual;',
'',
'',
'    select (',
'               select count(distinct v.JOB_NUMBER)',
'               from TENANT_EVENT_USER_CONVERGE e',
'                        inner join (',
'                   select v.NAME, v.JOB_NUMBER',
'                   from MPF_USER_DEPT_MAIN_ASSO_V v',
'                   where v.EXT_ORG_ID = :USERDEPT',
'                     and v.TENANT_ID = :USERTENANT',
'                     and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'               ) v on e.JOB_NUMBER = v.JOB_NUMBER',
'               WHERE e.TENANT_ID = :USERTENANT',
'               and e.BASE_DEPT_ID=:BASE_DEPT_ID',
'                 and e.BEGIN_TIME >= to_date(:P129_START_TIME, ''yyyy-mm-dd'')',
'                 and e.BEGIN_TIME <= to_date(:P129_END_TIME, ''yyyy-mm-dd'') + 1',
'           ) || ''/'' || (select count(v.EXT_USER_ID)',
'                        from MPF_USER_DEPT_MAIN_ASSO_V v',
'                        where v.EXT_ORG_ID = :USERDEPT',
unistr('                          and v.TENANT_ID = :USERTENANT and v.BASE_DEPT_ID=:BASE_DEPT_ID) || '' \4EBA'''),
'    into v_dept_participate',
'    from dual;',
'',
'',
'    apex_util.set_session_state(''P129_GROUP_PARTICIPATE'', v_group_participate);',
'    apex_util.set_session_state(''P129_DEPT_PARTICIPATE'', v_dept_participate);',
'',
'end;'))
,p_attribute_03=>'P129_GROUP_PARTICIPATE,P129_DEPT_PARTICIPATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2200998376082291364)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>340
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5237\65B0\56E2\961F\53C2\4E0E\5EA6')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_GROUP_PARTICIPATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2200998530024291365)
,p_event_id=>wwv_flow_imp.id(2353491409144712058)
,p_event_result=>'TRUE'
,p_action_sequence=>350
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5237\65B0\90E8\95E8\53C2\4E0E\5EA6')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_DEPT_PARTICIPATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2353490489486712059)
,p_name=>unistr('\5237\65B0-\4E2A\4EBA\53C2\4E0E\5DE5\5355\6570\91CF\5BF9\6BD4\56FE')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_CONDITION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353490979476712059)
,p_event_id=>wwv_flow_imp.id(2353490489486712059)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566191453926402881)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2353488600592712060)
,p_name=>unistr('\521D\59CB\5316\5237\65B0\9875')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353489072958712060)
,p_event_id=>wwv_flow_imp.id(2353488600592712060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5237\65B0\90E8\95E8\6210\5458')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568532278824024692)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353489572808712060)
,p_event_id=>wwv_flow_imp.id(2353488600592712060)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5237\65B0\56E2\961F\6210\5458')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568531571818024685)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353490099251712059)
,p_event_id=>wwv_flow_imp.id(2353488600592712060)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5237\65B0\4E2A\4EBA\7684\5361\7247')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566190429046402871)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2200998820526291368)
,p_event_id=>wwv_flow_imp.id(2353488600592712060)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5237\65B0\53C2\4E0E\5EA6-\56E2\961F')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_GROUP_PARTICIPATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2200998904663291369)
,p_event_id=>wwv_flow_imp.id(2353488600592712060)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5237\65B0\53C2\4E0E\5EA6-\90E8\95E8')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_DEPT_PARTICIPATE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2353487728943712063)
,p_name=>unistr('\5237\65B0-\4E2A\4EBA\5E73\5747\89E3\51B3\65F6\957F')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_CONDITION_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353488216886712061)
,p_event_id=>wwv_flow_imp.id(2353487728943712063)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566192518404402891)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2353508623691712051)
,p_name=>unistr('\5237\65B0-\4E2A\4EBA\5E73\5747\54CD\5E94\65F6\957F\5BF9\6BD4\56FE')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_CONDITION_3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353509105470712051)
,p_event_id=>wwv_flow_imp.id(2353508623691712051)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2568533452723024704)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2353509522968712051)
,p_name=>unistr('\5237\65B0-\4E2A\4EBA\77E5\8BC6\5E93\83B7\8D5E\5BF9\6BD4\56FE')
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_CONDITION_4'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353510003729712051)
,p_event_id=>wwv_flow_imp.id(2353509522968712051)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566193528258402902)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2353507736583712052)
,p_name=>unistr('\5237\65B0-\4E2A\4EBA\590D\76D8\6570\91CF\7EDF\8BA1\56FE')
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_CONDITION_5'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2353508192528712052)
,p_event_id=>wwv_flow_imp.id(2353507736583712052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2566192013647402886)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2200998237462291362)
,p_name=>unistr('\5237\65B0\5B8C\6210\540E-\6267\884C')
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2566190178014402868)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2200998257829291363)
,p_event_id=>wwv_flow_imp.id(2200998237462291362)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\6240\6709\5339\914D\7684 <a> \6807\7B7E'),
'var link1 = document.querySelectorAll(''dl.t-AVPList dt.t-AVPList-label a'');',
'',
unistr('// \68C0\67E5\662F\5426\5B58\5728\8DB3\591F\7684\94FE\63A5\FF0C\7136\540E\518D\6DFB\52A0\56FE\6807\548C\7C7B'),
'if (link1.length >= 1) {',
'',
'    var firstLink = link1[0];',
unistr('    // \83B7\53D6 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    var linkText = firstLink.textContent;',
unistr('    // \79FB\9664 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    firstLink.textContent = '''';',
unistr('    // \521B\5EFA\4E00\4E2A\65B0\7684 <span> \5143\7D20'),
'    var spanElement = document.createElement(''span'');',
'    spanElement.classList.add(''fa'', ''fa-exclamation-circle'');',
unistr('    // \5C06\65B0\521B\5EFA\7684 <span> \5143\7D20\8FFD\52A0\5230 <a> \6807\7B7E\5185'),
'    firstLink.appendChild(spanElement);',
unistr('    // \8BBE\7F6E\65B0\7684 <span> \6807\7B7E\6587\672C\5185\5BB9\4E3A\4E4B\524D\83B7\53D6\7684\6587\672C\5185\5BB9'),
'    spanElement.textContent = linkText;',
'    spanElement.style.color = ''#d90000'';',
'',
'    var secondLink = link1[1];',
unistr('    // \83B7\53D6 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    var linkText2 = secondLink.textContent;',
unistr('    // \79FB\9664 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    secondLink.textContent = '''';',
unistr('    // \521B\5EFA\4E00\4E2A\65B0\7684 <span> \5143\7D20'),
'    var spanElement2 = document.createElement(''span'');',
'    spanElement2.classList.add(''fa'', ''fa-clock-o'');',
unistr('    // \5C06\65B0\521B\5EFA\7684 <span> \5143\7D20\8FFD\52A0\5230 <a> \6807\7B7E\5185'),
'    secondLink.appendChild(spanElement2);',
unistr('    // \8BBE\7F6E\65B0\7684 <span> \6807\7B7E\6587\672C\5185\5BB9\4E3A\4E4B\524D\83B7\53D6\7684\6587\672C\5185\5BB9'),
'    spanElement2.textContent = linkText2;',
'',
'    var thirdLink = link1[2];',
unistr('    // \83B7\53D6 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    var linkText3 = thirdLink.textContent;',
unistr('    // \79FB\9664 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    thirdLink.textContent = '''';',
unistr('    // \521B\5EFA\4E00\4E2A\65B0\7684 <span> \5143\7D20'),
'    var spanElement3 = document.createElement(''span'');',
'    spanElement3.classList.add(''fa'', ''fa-check-circle-o'');',
unistr('    // \5C06\65B0\521B\5EFA\7684 <span> \5143\7D20\8FFD\52A0\5230 <a> \6807\7B7E\5185'),
'    thirdLink.appendChild(spanElement3);',
unistr('    // \8BBE\7F6E\65B0\7684 <span> \6807\7B7E\6587\672C\5185\5BB9\4E3A\4E4B\524D\83B7\53D6\7684\6587\672C\5185\5BB9'),
'    spanElement3.textContent = linkText3;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2198215565143277190)
,p_name=>unistr('\5237\65B0\5B8C\6210\540E\6267\884C2')
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2568495723899067964)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2198215698739277191)
,p_event_id=>wwv_flow_imp.id(2198215565143277190)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\6240\6709\5339\914D\7684 <a> \6807\7B7E'),
'var link1 = document.querySelectorAll(''dl.t-AVPList dt.t-AVPList-label a'');',
'',
unistr('// \68C0\67E5\662F\5426\5B58\5728\8DB3\591F\7684\94FE\63A5\FF0C\7136\540E\518D\6DFB\52A0\56FE\6807\548C\7C7B'),
'if (link1.length >= 1) {',
'',
'    var firstLink = link1[3];',
unistr('    // \83B7\53D6 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    var linkText = firstLink.textContent;',
unistr('    // \79FB\9664 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    firstLink.textContent = '''';',
unistr('    // \521B\5EFA\4E00\4E2A\65B0\7684 <span> \5143\7D20'),
'    var spanElement = document.createElement(''span'');',
'    spanElement.classList.add(''fa'', ''fa-exclamation-circle'');',
unistr('    // \5C06\65B0\521B\5EFA\7684 <span> \5143\7D20\8FFD\52A0\5230 <a> \6807\7B7E\5185'),
'    firstLink.appendChild(spanElement);',
unistr('    // \8BBE\7F6E\65B0\7684 <span> \6807\7B7E\6587\672C\5185\5BB9\4E3A\4E4B\524D\83B7\53D6\7684\6587\672C\5185\5BB9'),
'    spanElement.textContent = linkText;',
'    spanElement.style.color = ''#d90000'';',
'',
'    var secondLink = link1[4];',
unistr('    // \83B7\53D6 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    var linkText2 = secondLink.textContent;',
unistr('    // \79FB\9664 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    secondLink.textContent = '''';',
unistr('    // \521B\5EFA\4E00\4E2A\65B0\7684 <span> \5143\7D20'),
'    var spanElement2 = document.createElement(''span'');',
'    spanElement2.classList.add(''fa'', ''fa-clock-o'');',
unistr('    // \5C06\65B0\521B\5EFA\7684 <span> \5143\7D20\8FFD\52A0\5230 <a> \6807\7B7E\5185'),
'    secondLink.appendChild(spanElement2);',
unistr('    // \8BBE\7F6E\65B0\7684 <span> \6807\7B7E\6587\672C\5185\5BB9\4E3A\4E4B\524D\83B7\53D6\7684\6587\672C\5185\5BB9'),
'    spanElement2.textContent = linkText2;',
'',
'    var thirdLink = link1[5];',
unistr('    // \83B7\53D6 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    var linkText3 = thirdLink.textContent;',
unistr('    // \79FB\9664 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    thirdLink.textContent = '''';',
unistr('    // \521B\5EFA\4E00\4E2A\65B0\7684 <span> \5143\7D20'),
'    var spanElement3 = document.createElement(''span'');',
'    spanElement3.classList.add(''fa'', ''fa-check-circle-o'');',
unistr('    // \5C06\65B0\521B\5EFA\7684 <span> \5143\7D20\8FFD\52A0\5230 <a> \6807\7B7E\5185'),
'    thirdLink.appendChild(spanElement3);',
unistr('    // \8BBE\7F6E\65B0\7684 <span> \6807\7B7E\6587\672C\5185\5BB9\4E3A\4E4B\524D\83B7\53D6\7684\6587\672C\5185\5BB9'),
'    spanElement3.textContent = linkText3;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2198216024453277194)
,p_name=>unistr('\5237\65B0\5B8C\6210\540E\6267\884C3')
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2568499280603067999)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2198216138050277195)
,p_event_id=>wwv_flow_imp.id(2198216024453277194)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\6240\6709\5339\914D\7684 <a> \6807\7B7E'),
'var link3 = document.querySelectorAll(''dl.t-AVPList dt.t-AVPList-label a'');',
'',
'console.log("length:" + link3.length);',
'',
'',
unistr('// \68C0\67E5\662F\5426\5B58\5728\8DB3\591F\7684\94FE\63A5\FF0C\7136\540E\518D\6DFB\52A0\56FE\6807\548C\7C7B'),
'if (link3.length >= 1) {',
'',
'    var firstLink = link3[6];',
unistr('    // \83B7\53D6 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    var linkText = firstLink.textContent;',
'    console.log("1" + linkText)',
unistr('    // \79FB\9664 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    firstLink.textContent = '''';',
unistr('    // \521B\5EFA\4E00\4E2A\65B0\7684 <span> \5143\7D20'),
'    var spanElement = document.createElement(''span'');',
'    spanElement.classList.add(''fa'', ''fa-exclamation-circle'');',
unistr('    // \5C06\65B0\521B\5EFA\7684 <span> \5143\7D20\8FFD\52A0\5230 <a> \6807\7B7E\5185'),
'    firstLink.appendChild(spanElement);',
unistr('    // \8BBE\7F6E\65B0\7684 <span> \6807\7B7E\6587\672C\5185\5BB9\4E3A\4E4B\524D\83B7\53D6\7684\6587\672C\5185\5BB9'),
'    spanElement.textContent = linkText;',
'    console.log("1.1" + spanElement)',
'    spanElement.style.color = ''#d90000'';',
'',
'    var secondLink = link3[7];',
unistr('    // \83B7\53D6 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    var linkText2 = secondLink.textContent;',
'    console.log("2" + linkText2)',
unistr('    // \79FB\9664 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    secondLink.textContent = '''';',
unistr('    // \521B\5EFA\4E00\4E2A\65B0\7684 <span> \5143\7D20'),
'    var spanElement2 = document.createElement(''span'');',
'    spanElement2.classList.add(''fa'', ''fa-clock-o'');',
unistr('    // \5C06\65B0\521B\5EFA\7684 <span> \5143\7D20\8FFD\52A0\5230 <a> \6807\7B7E\5185'),
'    secondLink.appendChild(spanElement2);',
unistr('    // \8BBE\7F6E\65B0\7684 <span> \6807\7B7E\6587\672C\5185\5BB9\4E3A\4E4B\524D\83B7\53D6\7684\6587\672C\5185\5BB9'),
'    spanElement2.textContent = linkText2;',
'',
'    var thirdLink = link3[8];',
unistr('    // \83B7\53D6 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    var linkText3 = thirdLink.textContent;',
'    console.log("3" + linkText3)',
unistr('    // \79FB\9664 <a> \6807\7B7E\5185\7684\6587\672C\5185\5BB9'),
'    thirdLink.textContent = '''';',
unistr('    // \521B\5EFA\4E00\4E2A\65B0\7684 <span> \5143\7D20'),
'    var spanElement3 = document.createElement(''span'');',
'    spanElement3.classList.add(''fa'', ''fa-check-circle-o'');',
unistr('    // \5C06\65B0\521B\5EFA\7684 <span> \5143\7D20\8FFD\52A0\5230 <a> \6807\7B7E\5185'),
'    thirdLink.appendChild(spanElement3);',
unistr('    // \8BBE\7F6E\65B0\7684 <span> \6807\7B7E\6587\672C\5185\5BB9\4E3A\4E4B\524D\83B7\53D6\7684\6587\672C\5185\5BB9'),
'    spanElement3.textContent = linkText3;',
'}'))
);
wwv_flow_imp.component_end;
end;
/
