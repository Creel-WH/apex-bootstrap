prompt --application/pages/page_00284
begin
--   Manifest
--     PAGE: 00284
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
 p_id=>284
,p_name=>unistr('\70B9\68C0\5BF9\8C61-\7F16\8F91-2.0')
,p_alias=>unistr('\70B9\68C0\5BF9\8C61-\7F16\8F91-2-0')
,p_step_title=>unistr('\70B9\68C0\5BF9\8C61-\7F16\8F91-2.0')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \5BF9\8C61\8BBE\5907ID\83B7\53D6'),
'var raw_form_ids = $v(''P262_FORM_ID'');',
'var raw_form_names = '''';',
'',
'function click_span_op(id, op) {',
'    console.log(id);',
'    console.log(op);',
'    if (op == ''config'') {',
'        $s(''P262_OBJECT_DEVICE_ASSO_ID'', id);',
'        $(''#config_btn'').click();',
'    } else {',
'        $s(''P262_OBJECT_DEVICE_ASSO_IDS'', id);',
'        $(''#del_btn'').click();',
'    }',
'}',
'',
unistr('// \5BF9\8C61\5BA1\6838id\83B7\53D6'),
'var raw_OBJECT_IDs = $v(''P262_OBJECT_ID'');',
'var raw_OBJECT_names = '''';',
'',
'function click_span_op(id, op) {',
'    console.log(id);',
'    console.log(op);',
'    if (op == ''update'') {',
'        $s(''P262_OBJECT_REVIEW_IDS_1'', id);',
'        $(''#update_btn'').click();',
'    } else {',
'        $s(''P262_OBJECT_REVIEW_IDS_2'', id);',
'        $(''#del_btn'').click();',
'    }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide-btn{',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(489412594523072652)
,p_plug_name=>unistr('\5BA1\6838\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(477928313785749372)
,p_plug_name=>unistr('\9AD8\7EA7\5BA1\6838')
,p_parent_plug_id=>wwv_flow_imp.id(489412594523072652)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECT_REVIEW_ID,',
unistr('       CASE WHEN IS_SAVE = 0 THEN REVIEW_GROUP || ''\FF08'' ||''\672A\4FDD\5B58''||''\FF09'' ELSE REVIEW_GROUP END AS REVIEW_GROUP, --\81EA\5B9A\4E49 \5206\7EC4(\672A\4FDD\5B58\63D0\793A)'),
unistr('--        REVIEW_GROUP,  --\81EA\5B9A\4E49 \5206\7EC4'),
unistr('       REVIEW_USERS,  --\5BA1\6838\4EBA'),
unistr('       AUDIT_METHOD --\5BA1\6838\65B9\5F0F'),
'from CHECK_OBJECT_REVIEW',
'where TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
'and DEL_FLAG = 0',
'and REVIEW_TYPE = 2',
'and OBJECT_ID = :P284_OBJECT_ID',
';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P284_OBJECT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\9AD8\7EA7\5BA1\6838')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(488330504121187626)
,p_name=>'REVIEW_USERS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REVIEW_USERS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5BA1\6838\4EBA\5458')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select JOB_NUMBER || ''-'' || NAME AS NAMES,SYNC_USER_ID from MPF_SHARE_USER_V',
'where IS_LEAVE = 0',
'and TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID',
'and SYNC_USER_ID is not null ',
'',
'',
'-- 3.0',
'-- SELECT JOB_NUMBER || ''-'' || NAME AS NAMES, SYNC_USER_ID',
'-- FROM MPF_SHARE_USER_V',
'-- WHERE IS_LEAVE = 0',
'--     AND TENANT_ID = :USERTENANT',
'--     AND BASE_DEPT_ID = :BASE_DEPT_ID',
'--     AND SYNC_USER_ID IN (',
'--         SELECT data_val',
'--         FROM JA_UTILS_PKG.SPLIT_STR((SELECT REVIEW_USERS FROM CHECK_OBJECT_REVIEW where OBJECT_REVIEW_ID = :P284_OBJECT_REVIEW_ID_2), '','')',
'--     )',
'',
'-- 2.0',
'-- select JOB_NUMBER || ''-'' || NAME AS NAMES,SYNC_USER_ID from MPF_SHARE_USER_V',
'-- where IS_LEAVE = 0',
'-- and TENANT_ID=:USERTENANT',
'-- and BASE_DEPT_ID = :BASE_DEPT_ID',
'-- and SYNC_USER_ID is not null ',
'',
'-- WITH REVIEW_USERS_CTE AS (',
'--     SELECT listagg(REVIEW_USERS, '','') AS REVIEW_USERS',
'--     FROM CHECK_OBJECT_REVIEW',
'--     WHERE DEL_FLAG = 0',
'--         AND TENANT_ID = :USERTENANT',
'--         AND BASE_DEPT_ID = :BASE_DEPT_ID',
'--         AND OBJECT_ID = :P284_OBJECT_ID',
'-- )',
'-- SELECT JOB_NUMBER || ''-'' || NAME AS NAMES, SYNC_USER_ID',
'-- FROM MPF_SHARE_USER_V',
'-- WHERE IS_LEAVE = 0',
'--     AND TENANT_ID = :USERTENANT',
'--     AND BASE_DEPT_ID = :BASE_DEPT_ID',
'--     AND SYNC_USER_ID IN (',
'--         SELECT data_val',
'--         FROM JA_UTILS_PKG.SPLIT_STR((SELECT REVIEW_USERS FROM REVIEW_USERS_CTE), '','')',
'--     )'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(488330594734187627)
,p_name=>'AUDIT_METHOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_METHOD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5BA1\6838\65B9\5F0F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC2:\6216\7B7E;OrSign,\4F1A\7B7E;CounterSign')
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(488333521208187656)
,p_name=>'OBJECT_REVIEW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECT_REVIEW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5BA1\6838ID')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(489411222283072638)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(489411324878072639)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(489963903604051160)
,p_name=>'REVIEW_GROUP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REVIEW_GROUP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5206\7EC4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>517
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(477928425852749373)
,p_internal_uid=>360564059991237836
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(488336048301188180)
,p_interactive_grid_id=>wwv_flow_imp.id(477928425852749373)
,p_static_id=>'1220266'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(488336288288188180)
,p_report_id=>wwv_flow_imp.id(488336048301188180)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488338327745188384)
,p_view_id=>wwv_flow_imp.id(488336288288188180)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(488330504121187626)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488339139532188387)
,p_view_id=>wwv_flow_imp.id(488336288288188180)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(488330594734187627)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(488700981398204517)
,p_view_id=>wwv_flow_imp.id(488336288288188180)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(488333521208187656)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(489697801923670679)
,p_view_id=>wwv_flow_imp.id(488336288288188180)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(489411222283072638)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(490347796524797055)
,p_view_id=>wwv_flow_imp.id(488336288288188180)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(489963903604051160)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(489412647104072653)
,p_plug_name=>unistr('\5BA1\6838')
,p_parent_plug_id=>wwv_flow_imp.id(489412594523072652)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECT_REVIEW_ID,',
unistr('       REVIEW_TYPE,--\5BA1\6838\7C7B\578B'),
unistr('       REVIEW_GROUP,  --\81EA\5B9A\4E49 \5206\7EC4'),
unistr('       REVIEW_USERS,  --\5BA1\6838\4EBA'),
unistr('       AUDIT_METHOD --\5BA1\6838\65B9\5F0F'),
'from CHECK_OBJECT_REVIEW',
'where TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
'and DEL_FLAG = 0',
'and OBJECT_ID = :P284_OBJECT_ID',
';'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P284_OBJECT_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2992606727449165950)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECT_ID,',
'       TENANT_ID,',
'       EXT_ORG_ID,',
'       DEPT_ID,',
'       CATEGORY_FIRST_CODE,',
'       OBJECT_SERIAL_NO,',
'       IS_ENABLE',
'from CHECK_OBJECT',
'where TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
'and DEL_FLAG = 0',
'',
'',
'-- select co.OBJECT_ID,',
'--        co.TENANT_ID,',
'--        co.EXT_ORG_ID,',
'--        co.DEPT_ID,',
'--        co.CATEGORY_FIRST_CODE,',
'--        co.OBJECT_SERIAL_NO,',
'--        co.IS_ENABLE,',
'--        cr.REVIEW_TYPE,',
'--        cr.REVIEW_USERS,',
'--        cr.REVIEW_GROUP,',
'--        cr.AUDIT_METHOD',
'-- from CHECK_OBJECT  co',
'-- left join CHECK_OBJECT_REVIEW cr on cr.OBJECT_ID = co.OBJECT_ID',
'-- where co.TENANT_ID=:USERTENANT',
'-- and co.BASE_DEPT_ID =:BASE_DEPT_ID',
'-- and co.DEL_FLAG = 0',
'-- and cr.TENANT_ID =:USERTENANT',
'-- and cr.BASE_DEPT_ID =:BASE_DEPT_ID',
'-- and cr.DEL_FLAG = 0',
'-- ;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2992606787604165951)
,p_plug_name=>unistr('\5173\8054\8BBE\5907')
,p_region_name=>'check_object_div'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2992755899433774508)
,p_plug_name=>unistr('\70B9\68C0\5BF9\8C61\4EA4\4E92\5F0F\7F51\683C')
,p_parent_plug_id=>wwv_flow_imp.id(2992606787604165951)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with area_v as (',
'    select a.area_id, a.name, a.del_flag',
'    from fnd_areas a',
'    where a.DEL_FLAG = 0',
'      and a.tenant_id = :usertenant',
'      and a.BASE_DEPT_ID =:BASE_DEPT_ID',
')',
'',
'select rownum,',
'       d.object_device_asso_id,',
'       d.PLAN_ID,',
'       c.device_id,',
'       c.tenant_id,',
'       c.device_code,',
'       c.device_name,',
'       decode(f.del_flag, 1, '''', f.name)   fab_name,',
'       decode(a1.del_flag, 1, '''', a1.name) area_name,',
'       decode(a2.del_flag, 1, '''', a2.name) line_name,',
'       case',
'           when d.PLAN_ID is null then',
unistr('               ''<span style="color:red;">\672A\914D\7F6E<span>'''),
'           else',
unistr('               ''<span>\5DF2\914D\7F6E<span>'''),
'           end                             config_plan,',
'       ''operate''                           operate',
'from check_object_device_asso d',
'         left join code_device c on d.DEVICE_ID = c.DEVICE_ID',
'         left join fnd_fab f on c.fab_id = f.fab_id and c.tenant_id = f.tenant_id and c.BASE_DEPT_ID =f.BASE_DEPT_ID',
'         left join area_v a1 on a1.area_id = c.area_id',
'         left join area_v a2 on a2.area_id = c.line_id',
'where c.tenant_id = :usertenant',
'  and c.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and c.del_flag = 0',
'  and d.object_id = :P284_OBJECT_ID;',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P284_OBJECT_ID'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\70B9\68C0\5BF9\8C61\4EA4\4E92\5F0F\7F51\683C')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1734078373985182288)
,p_name=>'CONFIG_PLAN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIG_PLAN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\8BA1\5212\914D\7F6E')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '&CONFIG_PLAN.')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1734078551739182290)
,p_name=>'OBJECT_DEVICE_ASSO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECT_DEVICE_ASSO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1734079423622182299)
,p_name=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2984843254521952938)
,p_name=>'DEVICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2984843406468952939)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2984843506238952940)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\8BBE\5907\7F16\7801')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2984843649630952941)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\8BBE\5907\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2984843701769952942)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2984843764752952943)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2984843862071952944)
,p_name=>'LINE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7EBF\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2992857274975051820)
,p_name=>'ROWNUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWNUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5E8F\53F7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2992858673829051834)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2992858852244051835)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2993993925023395721)
,p_name=>'OPERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    unistr('<!-- <span onclick="click_span_op(''&DEVICE_ID.'',''delete'')" style=''color:#009AFE;font-size: 14px;''>\5220\9664</span> -->'),
    '',
    '<span>',
    '',
    '    <a href="#" onclick="click_span_op(''&OBJECT_DEVICE_ASSO_ID.'',''config'')" style="text-dcoration:none;">',
    unistr('		\8BA1\5212\914D\7F6E'),
    '	</a>',
    '    &nbsp;',
    '	<a href="#" onclick="click_span_op(''&OBJECT_DEVICE_ASSO_ID.'',''delete'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
    '	</a>',
    '</span>')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2992756049863774509)
,p_internal_uid=>2875391684002262972
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2992765154008808921)
,p_interactive_grid_id=>wwv_flow_imp.id(2992756049863774509)
,p_static_id=>'2766617'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2992765389362808921)
,p_report_id=>wwv_flow_imp.id(2992765154008808921)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1742037013774633633)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1734078373985182288)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1742041450518724372)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1734078551739182290)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1742061936034467204)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1734079423622182299)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2992779099154538157)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2984843254521952938)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2992780033633538160)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2984843406468952939)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2992780951986538163)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2984843506238952940)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2992781787519538165)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2984843649630952941)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2992782664862538168)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2984843701769952942)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2992783558650538171)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2984843764752952943)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2992784492341538174)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2984843862071952944)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2992863741414161779)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2992857274975051820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2993328919091806377)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2992858673829051834)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2994714868157983778)
,p_view_id=>wwv_flow_imp.id(2992765389362808921)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2993993925023395721)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2992606923011165952)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_05'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2992700017298545201)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2359751901918135266)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241881715618944692)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2992606923011165952)
,p_button_name=>unistr('\53D6\6D88\64CD\4F5C')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\53D6\6D88\64CD\4F5C')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241882112692944692)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2992606923011165952)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:260:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241882508314944692)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2992606923011165952)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241861070422944651)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2992606787604165951)
,p_button_name=>unistr('\8BA1\5212\914D\7F6E')
,p_button_static_id=>'config_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\8BA1\5212\914D\7F6E')
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'ja-bpoint-btn hide-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241882887433944692)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2992606923011165952)
,p_button_name=>unistr('\4E0B\4E00\6B65')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\4E00\6B65')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241868791256944663)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2992755899433774508)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241875902162944685)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(477928313785749372)
,p_button_name=>unistr('\65B0\589E\5BA1\6838')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E\5BA1\6838')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241869170660944663)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2992755899433774508)
,p_button_name=>unistr('\65B0\589E_hide')
,p_button_static_id=>'insert_btn_hide'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E_hide')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn hide-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241876281570944685)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(477928313785749372)
,p_button_name=>unistr('\7F16\8F91\5BA1\6838')
,p_button_static_id=>'update_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\7F16\8F91\5BA1\6838')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241869583105944663)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2992755899433774508)
,p_button_name=>unistr('\6279\91CF\914D\7F6E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\914D\7F6E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241876665963944685)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(477928313785749372)
,p_button_name=>unistr('\6279\91CF\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\6279\91CF\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(241870046031944663)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2992755899433774508)
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'del_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(241922894192944713)
,p_branch_name=>unistr('\8F6C\5230\9875 263-\70B9\68C0\5BF9\8C61\8FB9\68C0')
,p_branch_action=>'f?p=&APP_ID.:263:&SESSION.::&DEBUG.:263:P263_OBJECT_ID,P263_DEPT_ID,P263_CATEGORY_FIRST_CODE:&P284_OBJECT_ID.,&P284_DEPT_ID.,&P284_CATEGORY_FIRST_CODE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(241869170660944663)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(241922556944944713)
,p_branch_name=>unistr('\8F6C\5230\9875 273-\8BA1\5212\914D\7F6E')
,p_branch_action=>'f?p=&APP_ID.:273:&SESSION.::&DEBUG.:273:P273_OBJECT_DEVICE_ASSO_ID,P273_OBJECT_ID:&P284_OBJECT_DEVICE_ASSO_ID.,&P284_OBJECT_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(241861070422944651)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(241921678116944712)
,p_branch_name=>unistr('\8F6C\5230\9875 283 \65B0\589E\5BA1\6838')
,p_branch_action=>'f?p=&APP_ID.:283:&SESSION.::&DEBUG.:283:P283_OBJECT_ID:&P284_OBJECT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(241875902162944685)
,p_branch_sequence=>30
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P284_OBJECT_REVIEW_IDS_1'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(241922076464944712)
,p_branch_name=>unistr('\8F6C\5230\9875 283 \7F16\8F91\5BA1\6838')
,p_branch_action=>'f?p=&APP_ID.:283:&SESSION.::&DEBUG.:283:P283_OBJECT_ID:&P284_OBJECT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(241876281570944685)
,p_branch_sequence=>40
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P284_OBJECT_REVIEW_IDS_1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(488364847980187717)
,p_name=>'P284_OBJECT_REVIEW_ID'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(488365028878187719)
,p_name=>'P284_COUNT'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(489979217028051162)
,p_name=>'P284_REVIEW_TYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(489412594523072652)
,p_item_source_plug_id=>wwv_flow_imp.id(489412647104072653)
,p_prompt=>unistr('\5BA1\6838')
,p_source=>'REVIEW_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\5173\95ED;0,\5E38\89C4;1,\9AD8\7EA7\5BA1\6838;2')
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(489980350198051174)
,p_name=>'P284_OBJECT_REVIEW_IDS_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(489412594523072652)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(489981473671051185)
,p_name=>'P284_OBJECT_REVIEW_IDS_2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(489412594523072652)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(489986042107051183)
,p_name=>'P284_OBJECT_REVIEW_ID_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(489412647104072653)
,p_item_source_plug_id=>wwv_flow_imp.id(489412647104072653)
,p_source=>'OBJECT_REVIEW_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(489986303156051185)
,p_name=>'P284_REVIEW_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(489412647104072653)
,p_item_source_plug_id=>wwv_flow_imp.id(489412647104072653)
,p_prompt=>unistr('\5206\7EC4')
,p_source=>'REVIEW_GROUP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>512
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(489986348373051186)
,p_name=>'P284_REVIEW_USERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(489412647104072653)
,p_item_source_plug_id=>wwv_flow_imp.id(489412647104072653)
,p_prompt=>unistr('\5BA1\6838\4EBA\5458')
,p_source=>'REVIEW_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select JOB_NUMBER || ''-'' || NAME AS NAMES,SYNC_USER_ID from MPF_SHARE_USER_V',
'where IS_LEAVE = 0',
'and TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID',
'and SYNC_USER_ID is not null ;'))
,p_cSize=>30
,p_cMaxlength=>1000
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
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
,p_multi_value_separator=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(489986474247051187)
,p_name=>'P284_AUDIT_METHOD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(489412647104072653)
,p_item_source_plug_id=>wwv_flow_imp.id(489412647104072653)
,p_prompt=>'Audit Method'
,p_source=>'AUDIT_METHOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1596119318893626952)
,p_name=>'P284_DELETE_FORM'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1734078135344182288)
,p_name=>'P284_DEPT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_item_source_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_prompt=>unistr('\90E8\95E8\FF1A')
,p_source=>'DEPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EXT_ORG_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name, ext_org_id',
'from MPF_SHARE_DEPT_V',
'WHERE TENANT_ID = :USERTENANT',
'  and del_flag = 0',
'--   and PARENT_ID is not null',
'  and DEPT_TYPE = ''DEPT''',
'  and BASE_DEPT_ID = :ORG_ID'))
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
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
 p_id=>wwv_flow_imp.id(1734078186339182289)
,p_name=>'P284_OBJECT_SERIAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_item_source_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_prompt=>unistr('\5173\8054\7F16\53F7\FF1A')
,p_placeholder=>unistr('\7F16\53F7\4E0D\586B\5199\9ED8\8BA4\81EA\52A8\751F\6210')
,p_source=>'OBJECT_SERIAL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1734078559007182293)
,p_name=>'P284_EXT_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_item_source_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_source=>'EXT_ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1734078641283182294)
,p_name=>'P284_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_item_source_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_item_default=>'1'
,p_prompt=>unistr('\72B6\6001\FF1A')
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', unistr('\5173\95ED'),
  'off_value', '0',
  'on_label', unistr('\542F\7528'),
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1734086752507182306)
,p_name=>'P284_OBJECT_DEVICE_ASSO_IDS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2992606787604165951)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1743901291236681481)
,p_name=>'P284_CONFIG_FORM_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2716104737879895715)
,p_name=>'P284_IS_SHOW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2716105128737895715)
,p_name=>'P284_OBJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_item_source_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_source=>'OBJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2716105521830895715)
,p_name=>'P284_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_item_source_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2716106352794895716)
,p_name=>'P284_CATEGORY_FIRST_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_item_source_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY_FIRST_CODE',
'from CHECK_OBJECT c',
'where OBJECT_ID = :P284_OBJECT_ID',
'and  c.tenant_id = :usertenant',
'and c.BASE_DEPT_ID =:BASE_DEPT_ID',
'and c.del_flag = 0;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5927\7C7B\540D\79F0\FF1A')
,p_source=>'CATEGORY_FIRST_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME, CODE',
'FROM TENANT_EVENT_CATEGORY ',
'WHERE TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID AND DEL_FLAG=0 and NODE_LEVEL=1; '))
,p_cHeight=>1
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2716107210119895717)
,p_name=>'P284_FORM_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  listagg(f.FORM_ID,'':'') val_s',
'from CHECK_OBJECT_FORM_ASSO s',
'         left join CHECK_FORM f on s.FORM_ID = f.FORM_ID and f.DEL_FLAG = 0',
'where s.OBJECT_ID = :P284_OBJECT_ID;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\70B9\68C0\8868\5355\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select decode(DEL_FLAG, 0, (select A.NAME from CHECK_CLASSIFY A where A.CLASSIFY_ID = F.CLASSIFY_ID) || ''\FF1A'' || NAME,'),
unistr('              (select A.NAME from CHECK_CLASSIFY A where A.CLASSIFY_ID = F.CLASSIFY_ID) || ''\FF1A'' || NAME ||'),
unistr('              to_nchar(''\FF08\5DF2\5931\6548\FF09'')) key,'),
'       FORM_ID                   val',
'from CHECK_FORM f',
'where f.TENANT_ID = :USERTENANT',
'  and f.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and f.DEL_FLAG = 0',
'  and (',
'          select count(t.FORM_ITEM_ID) from CHECK_FORM_ITEM t where t.FORM_ID = f.FORM_ID',
'      ) > 0',
'--	  and  CLASSIFY_ID=:P284_CLASSIFY_ID',
'order by f.DEL_FLAG;'))
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
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
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2716108810885895718)
,p_name=>'P284_ROW_COUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2716109122044895718)
,p_name=>'P284_MESSAGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2716109576623895718)
,p_name=>'P284_FORM_IDS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(2992606727449165950)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2716115434896895723)
,p_name=>'P284_OBJECT_DEVICE_ASSO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2992606787604165951)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241885021836944694)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(241882508314944692)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241885537351944694)
,p_event_id=>wwv_flow_imp.id(241885021836944694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\57FA\672C\4FE1\606F\4E0D\4E3A\7A7A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P284_DEPT_ID''))) {',
unistr('    alert("\8BF7\9009\62E9\90E8\95E8\FF01");'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P284_CATEGORY_FIRST_CODE''))) {',
unistr('    alert("\8BF7\9009\62E9\5927\7C7B\540D\79F0\FF01");'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P284_FORM_ID''))) {',
unistr('    alert("\8BF7\9009\62E9\70B9\68C0\8868\5355\FF01");'),
'    return false;',
'}',
'',
unistr('// \5F53\5BA1\6838\72B6\6001"\5E38\89C4"\FF0C\9009\62E9\5BA1\6838\4EBA\5458 2025-01-06 16\FF1A52 wxx'),
'if ($v(''P284_OBJECT_DEVICE_ASSO_ID'') == 1 && utils.checkNull($v(''P284_REVIEW_USERS''))) {',
unistr('    alert("\8BF7\9009\62E9\5BA1\6838\4EBA\5458\FF01");'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241885992725944694)
,p_event_id=>wwv_flow_imp.id(241885021836944694)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_count   number(20) := 0;',
'        /**',
'     * create by:',
'     * create date:',
'     * modify by:WXX',
'     * modify date:2024/9/20 17:21',
unistr('     * describe:P284 \4FDD\5B58  \67E5\8BE2\662F\5426\914D\7F6E\8BBE\5907'),
'     */',
'begin',
'    select count(1) into v_count from CHECK_OBJECT_DEVICE_ASSO where PLAN_ID is null and OBJECT_ID = :P284_OBJECT_ID;',
'    apex_util.set_session_state(''P284_ROW_COUNT'', v_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P284_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME,:APP_ID,:APP_CODE);',
'end;'))
,p_attribute_02=>'P284_OBJECT_ID'
,p_attribute_03=>'P284_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241886531343944695)
,p_event_id=>wwv_flow_imp.id(241885021836944694)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P284_ROW_COUNT'') > 0) {',
unistr('    alert(''\8BF7\586B\5199\5B8C\6574\5185\5BB9\540E\FF0C\518D\8FDB\884C\4FDD\5B58\FF01'');'),
'    return false;',
'} else {',
'',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241887064091944695)
,p_event_id=>wwv_flow_imp.id(241885021836944694)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg          nvarchar2(2000);',
'    v_object_serial_no nvarchar2(32);',
'    row_count          number(20) := 1;',
'    v_count            number(20) := 0;',
'        /**',
'     * create by:',
'     * create date:',
'     * modify by:WXX',
'     * modify date:2024/9/23 8:46',
unistr('     * describe:P284 \4FDD\5B58 \68C0\9A8C\5173\8054\7F16\53F7\662F\5426\91CD\590D'),
'     */',
'begin',
'',
'    if :P284_OBJECT_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_object_serial_no from dual;',
'    else',
'        v_object_serial_no := :P284_OBJECT_SERIAL_NO;',
'    end if;',
'    if :P284_OBJECT_ID is null then',
'',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_OBJECT',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID = :BASE_DEPT_ID',
'              and OBJECT_SERIAL_NO = :P284_OBJECT_SERIAL_NO',
'              and DEL_FLAG = 0;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P284_MESSAGE'', ''\5173\8054\7F16\53F7\91CD\590D'');'),
'            end if;',
'        end if;',
'    else',
'',
'        select count(1)',
'        into v_count',
'        from CHECK_OBJECT',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and OBJECT_SERIAL_NO = :P284_OBJECT_SERIAL_NO',
'          and DEL_FLAG = 0',
'          and OBJECT_ID != :P284_OBJECT_ID;',
'        if v_count > 0 then',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P284_MESSAGE'', ''\5173\8054\7F16\53F7\91CD\590D'');'),
'        end if;',
'',
'    end if;',
'',
'    apex_util.set_session_state(''P284_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P284_OBJECT_SERIAL_NO'', v_object_serial_no);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P284_ROW_COUNT'', 0);',
unistr('        apex_util.set_session_state(''P284_MESSAGE'', ''\6570\636E\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME,:APP_ID,:APP_CODE);',
'end ;'))
,p_attribute_02=>'P284_OBJECT_ID,P284_OBJECT_SERIAL_NO'
,p_attribute_03=>'P284_ROW_COUNT,P284_MESSAGE,P284_OBJECT_SERIAL_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241887507594944696)
,p_event_id=>wwv_flow_imp.id(241885021836944694)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P284_ROW_COUNT'') > 0) {',
'',
'    return true;',
'} else {',
'    alert($v(''P284_MESSAGE''));',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241888010494944696)
,p_event_id=>wwv_flow_imp.id(241885021836944694)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\66F4\65B0\8868\5355')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    row_count number(20) ;',
'      /**',
'        * create by: wxx',
'        * create date: 2024/9/26 11:50',
'        * modify by:wxx',
'        * modify date:2025/1/6 16:53',
unistr('        * describe:P284 \4FDD\5B58-\70B9\68C0\5BF9\8C61\66F4\65B0-\8868\5355'),
unistr('      \6D89\53CA\7684\8868CHECK_OBJECT\FF0CCHECK_RECORD\FF08\539F\5148\662F\901A\8FC7\540E\7AEF\540C\6B65\8FC7\53BB\FF0C\65B0\7248\4E0D\9700\8981\4E86\FF0C\76F4\63A5\4ECECHECK_OBJECT_REVIEW\5BA1\6838\8868\53D6\FF09\FF0C'),
unistr('       CHECK_OBJECT_REVIEW\FF08\5C06\4FDD\5B58\72B6\6001\66F4\65B0\FF09'),
'        */',
'begin',
'',
unistr('    -- \5220\9664\672C\6B21\53D6\6D88\9009\4E2D\7684\8868\5355'),
'    delete CHECK_OBJECT_FORM_ASSO s',
'    where s.OBJECT_ID = :P284_OBJECT_ID',
'      and not exists(',
'            select 1',
'            from JA_UTILS_PKG.SPLIT_STR(:P284_FORM_ID, '':'') A',
'            where s.FORM_ID = A.data_val',
'        );',
'',
'    MERGE INTO CHECK_OBJECT_FORM_ASSO A',
'    USING (',
'        select data_val form_id, :P284_OBJECT_ID object_id',
'        from JA_UTILS_PKG.SPLIT_STR(:P284_FORM_ID, '':'')',
'    ) B',
'    ON (A.OBJECT_ID = B.object_id and A.FORM_ID = B.form_id)',
'    WHEN NOT MATCHED THEN',
'        insert (created_by, updated_by, object_id, form_id)',
'        values (:USER_ID, :USER_ID, B.object_id, B.form_id);',
'',
'    commit;',
'    -- row_count := SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P284_ROW_COUNT'', 1);',
'',
'exception',
'    when others then',
'        rollback;',
'        apex_util.set_session_state(''P284_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'end;',
''))
,p_attribute_02=>'P284_CATEGORY_FIRST_CODE,P284_FORM_ID,P284_OBJECT_SERIAL_NO,P284_IS_ENABLE,P284_OBJECT_ID,P284_DEPT_ID'
,p_attribute_03=>'P284_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241888466393944697)
,p_event_id=>wwv_flow_imp.id(241885021836944694)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\66F4\65B0\5BA1\6838\72B6\6001\53CA\5BA1\6838\4EBA')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    row_count number(20) ;',
'begin',
'    /**',
'        * create by: wxx',
'        * create date: 2024/9/26 11:42',
'        * modify by: wxx',
'        * modify date:2025/1/7 14:09',
unistr('        * describe:P284 \4FDD\5B58 \70B9\68C0\5BF9\8C61\65B0\589E\FF0C\9009\62E9\662F\5426\5BA1\6838\53CA\5BA1\6838\4EBA\FF0C\540C\6B65\6570\636E\5230\8BB0\5F55\8868\4E2D'),
unistr('      \6D89\53CA\7684\8868CHECK_OBJECT\FF0C'),
'        */',
'    if :P284_REVIEW_TYPE = 0 then',
'',
unistr('--   WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || ''\6253\5370\5BA1\6838\7C7B\578B:'', ''info'', V_ERR_MSG || ''P284_REVIEW_TYPE:'' || :P284_REVIEW_TYPE, :USER_ID, :USERTENANT,'),
'--                     :APP_NAME , :APP_ID, :APP_CODE);',
unistr('-- \72B6\6001\4E3A\5173\95ED\FF0C\5C06\5BA1\6838\4EBA\7F6E\7A7A'),
'        UPDATE CHECK_OBJECT',
'        SET CATEGORY_FIRST_CODE = :P284_CATEGORY_FIRST_CODE,',
'            OBJECT_SERIAL_NO    = :P284_OBJECT_SERIAL_NO,',
'            IS_ENABLE           = :P284_IS_ENABLE,',
'            UPDATED_BY= :USER_ID,',
'            UPDATED_DATE        = sysdate',
'--             IS_REVIEW           = 0,',
unistr('--             ,REVIEW_USERS        = null,--\540E\7EED\90FD\53D6\6D88'),
'        WHERE OBJECT_ID = :P284_OBJECT_ID',
'          AND TENANT_ID = :USERTENANT',
'          AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
' ',
unistr('    else --\66F4\65B0\5BF9\8C61\8868'),
'        update CHECK_OBJECT',
'        set CATEGORY_FIRST_CODE = :P284_CATEGORY_FIRST_CODE,',
'            OBJECT_SERIAL_NO    = :P284_OBJECT_SERIAL_NO,',
'            IS_ENABLE           = :P284_IS_ENABLE,',
'            UPDATED_BY= :USER_ID,',
'            UPDATED_DATE        = sysdate',
'        where OBJECT_ID = :P284_OBJECT_ID',
'          and TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
unistr('--     CHECK_OBJECT_REVIEW\FF08\5C06\5F53\524D\5BA1\6838\72B6\6001\66F4\65B0\5E76\4FDD\5B58\FF09'),
'UPDATE CHECK_OBJECT_REVIEW',
'    SET UPDATED_BY =:USER_ID,',
'        UPDATED_DATE=SYSDATE,',
'        IS_SAVE = 1',
'    WHERE DEL_FLAG = 0',
'        and TENANT_ID = :USERTENANT',
'        and BASE_DEPT_ID = :BASE_DEPT_ID',
'       and  OBJECT_ID = :P284_OBJECT_ID',
'    and REVIEW_TYPE = :P284_REVIEW_TYPE ;',
'',
unistr('     WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || ''\6253\5370\53D8\66F4\4FE1\606F3\FF1A'', ''info'', V_ERR_MSG || ''P284_REVIEW_TYPE:'' || :P284_REVIEW_TYPE || '',REVIEW_USERS:'' || :P284_REVIEW_USERS'),
'            ||  '',REVIEW_GROUP:'' || :P284_REVIEW_GROUP ||  '',AUDIT_METHOD:'' || :P284_AUDIT_METHOD, :USER_ID, :USERTENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'',
unistr('--     CHECK_OBJECT_REVIEW\FF08\5C06\975E\5F53\524D\5BA1\6838\72B6\6001\5220\9664\5E76\4FDD\5B58\FF09'),
'UPDATE CHECK_OBJECT_REVIEW',
'    SET UPDATED_BY =:USER_ID,',
'        UPDATED_DATE=SYSDATE,',
'        DEL_FLAG = 1',
'    WHERE DEL_FLAG = 0',
'        and TENANT_ID = :USERTENANT',
'        and BASE_DEPT_ID = :BASE_DEPT_ID',
'       and  OBJECT_ID = :P284_OBJECT_ID',
'    and REVIEW_TYPE <> :P284_REVIEW_TYPE ;',
'',
'   ',
unistr('-- --         \66F4\65B0\5BA1\6838\8868  \72B6\6001\4E3A\5BA1\6838\FF0C\5C06\5BA1\6838\4EBA\3001\5206\7EC4\3001\5BA1\6838\65B9\5F0F\5B58\5165'),
'--          update CHECK_OBJECT_REVIEW',
'--         set',
'--             UPDATED_BY= :USER_ID,',
'--             UPDATED_DATE        = sysdate,',
'--             REVIEW_TYPE = :P284_REVIEW_TYPE,',
'--             REVIEW_USERS        = :P284_REVIEW_USERS,',
'--             REVIEW_GROUP  = :P284_REVIEW_GROUP,',
'--             AUDIT_METHOD = :P284_AUDIT_METHOD',
'--         where OBJECT_ID = :P284_OBJECT_ID',
'--           and TENANT_ID = :USERTENANT',
'--           and BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
'',
'    end if;',
'',
'commit;',
'    -- row_count := SQL%ROWCOUNT;',
'    -- apex_util.set_session_state(''P284_ROW_COUNT'', row_count);',
'    ',
'    apex_util.set_session_state(''P284_ROW_COUNT'', 1);',
'',
'exception',
'    when others then',
'        rollback;',
'        apex_util.set_session_state(''P284_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'end',
';'))
,p_attribute_02=>'P284_CATEGORY_FIRST_CODE,P284_OBJECT_SERIAL_NO,P284_IS_ENABLE,P284_OBJECT_ID'
,p_attribute_03=>'P284_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241889050805944697)
,p_event_id=>wwv_flow_imp.id(241885021836944694)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P284_ROW_COUNT'') > 0) {',
unistr('   alert(''\4FDD\5B58\6210\529F'');'),
'    window.location.href="f?p=&APP_ID.:260:&APP_SESSION.:::::";',
'    return true;',
'} else {',
unistr('    alert(''\4FDD\5B58\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241889428914944697)
,p_name=>unistr('\5220\9664\6570\636E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(241870046031944663)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241889934716944698)
,p_event_id=>wwv_flow_imp.id(241889428914944697)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5220\9664\524D\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P284_OBJECT_DEVICE_ASSO_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'} else {',
'',
unistr('    if (confirm(''\662F\5426\786E\8BA4\5220\9664?'')) {'),
'        return true;',
'    } else {',
'        return false;',
'    }',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241890418783944698)
,p_event_id=>wwv_flow_imp.id(241889428914944697)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6267\884C\5220\9664')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    row_count number(20) := 0;',
'begin',
'',
'    delete CHECK_OBJECT_DEVICE_ASSO',
'    where OBJECT_DEVICE_ASSO_ID in (select * from UTILS_PKG.SPLIT_STR(:P284_OBJECT_DEVICE_ASSO_IDS, '',''));',
'    row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P284_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P284_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P284_OBJECT_DEVICE_ASSO_IDS'
,p_attribute_03=>'P284_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241890921957944698)
,p_event_id=>wwv_flow_imp.id(241889428914944697)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5220\9664\540E\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P284_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241891427401944698)
,p_event_id=>wwv_flow_imp.id(241889428914944697)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2992755899433774508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241891791649944698)
,p_name=>unistr('\5237\65B0\9875\9762')
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241892289824944699)
,p_event_id=>wwv_flow_imp.id(241891791649944698)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2992755899433774508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241892806764944699)
,p_event_id=>wwv_flow_imp.id(241891791649944698)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(477928313785749372)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241893263440944699)
,p_name=>unistr('\70B9\51FB\4E0B\4E00\6B65')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(241882887433944692)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241893688267944699)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\5185\5BB9\662F\5426\4E3A\7A7A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P284_DEPT_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\90E8\95E8'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P284_CATEGORY_FIRST_CODE''))) {',
unistr('    alert(''\8BF7\9009\62E9\5927\7C7B\540D\79F0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P284_FORM_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\70B9\68C0\8868\5355'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241894262680944700)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\7F16\53F7\662F\5426\91CD\590D')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg          nvarchar2(2000);',
'    v_object_serial_no nvarchar2(32);',
'    row_count          number(20) := 1;',
'    v_count            number(20) := 0;',
'begin',
'',
'    if :P284_OBJECT_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_object_serial_no from dual;',
'    else',
'        v_object_serial_no := :P284_OBJECT_SERIAL_NO;',
'    end if;',
'    if :P284_OBJECT_ID is null then',
'',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_OBJECT',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and OBJECT_SERIAL_NO = :P284_OBJECT_SERIAL_NO',
'              and DEL_FLAG = 0;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P284_MESSAGE'', ''\5173\8054\7F16\53F7\91CD\590D'');'),
'            end if;',
'        end if;',
'    else',
'',
'        select count(1)',
'        into v_count',
'        from CHECK_OBJECT',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and OBJECT_SERIAL_NO = :P284_OBJECT_SERIAL_NO',
'          and DEL_FLAG = 0',
'          and OBJECT_ID != :P284_OBJECT_ID;',
'        if v_count > 0 then',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P284_MESSAGE'', ''\5173\8054\7F16\53F7\91CD\590D'');'),
'        end if;',
'',
'    end if;',
'',
'    apex_util.set_session_state(''P284_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P284_OBJECT_SERIAL_NO'', v_object_serial_no);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P284_ROW_COUNT'', 0);',
unistr('        apex_util.set_session_state(''P284_MESSAGE'', ''\6570\636E\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                   :APP_NAME ,:APP_ID ,:APP_CODE);',
'end ;',
''))
,p_attribute_02=>'P284_OBJECT_ID,P284_OBJECT_SERIAL_NO'
,p_attribute_03=>'P284_ROW_COUNT,P284_MESSAGE,P284_OBJECT_SERIAL_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241894765518944700)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P284_ROW_COUNT'') > 0) {',
'',
'    return true;',
'} else {',
'    alert($v(''P284_MESSAGE''));',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241895196057944700)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg   nvarchar2(2000);',
'    v_object_id number(20);',
'    row_count   number(20) := 1;',
'     /**',
'     * create by:WXX',
'     * create date:2024/9/20 16:04',
'     * modify by:WXX',
unistr('     * modify date:2025/1/6 10:17  \65B0\589E\9AD8\7EA7\5BA1\6838\FF0C\53D8\66F4\903B\8F91'),
unistr('     * describe:P284 \4E0B\4E00\6B65'),
'     */',
'begin',
unistr('-- \65B0\589E\5BF9\8C61\5230\5BF9\8C61\8868\4E2D'),
'    insert into CHECK_OBJECT(created_by, updated_by, tenant_id,BASE_DEPT_ID, ext_org_id, category_first_code,OBJECT_SERIAL_NO,IS_ENABLE,DEPT_ID)',
'    values (:USER_ID, :USER_ID, :USERTENANT,:BASE_DEPT_ID, :P284_DEPT_ID, :P284_CATEGORY_FIRST_CODE,:P284_OBJECT_SERIAL_NO,:P284_IS_ENABLE,:P284_DEPT_ID)',
'    returning OBJECT_ID into v_object_id;',
'',
unistr('    --         \65B0\589E\5BA1\6838\6570\636E\5230 \5BA1\6838\8868\4E2D'),
' insert into CHECK_OBJECT_REVIEW(CREATED_BY, UPDATED_BY, OBJECT_ID, REVIEW_TYPE,REVIEW_USERS,REVIEW_GROUP,AUDIT_METHOD,BASE_DEPT_ID,TENANT_ID,IS_SAVE)',
'            values (:USER_ID, :USER_ID, v_object_id, :P284_REVIEW_TYPE,nvl(:P284_REVIEW_USERS,0),:P284_REVIEW_GROUP,nvl(:P284_AUDIT_METHOD,''CounterSign''),:BASE_DEPT_ID,:USERTENANT,0);',
'',
'    for c in (select data_val from JA_UTILS_PKG.SPLIT_STR(:P284_FORM_ID, '':''))',
unistr('        loop   --\65B0\589E\5BF9\8C61 \5230 \70B9\68C0\5BF9\8C61\4E0E\8868\5355\4E2D\95F4\8868'),
'            insert into CHECK_OBJECT_FORM_ASSO(created_by, updated_by, object_id, form_id)',
'            values (:USER_ID, :USER_ID, v_object_id, c.data_val);',
'        end loop;',
'',
unistr('   WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || ''\6253\5370\4E0B\4E00\6B65\5BA1\6838\4FE1\606F\FF1A'', ''info'', V_ERR_MSG || ''v_object_id:'' || v_object_id || '',P284_REVIEW_TYPE:'' || :P284_REVIEW_TYPE || '',REVIEW_USERS:'' || :P284_REVIEW_USERS'),
'            ||  '',REVIEW_GROUP:'' || :P284_REVIEW_GROUP ||  '',AUDIT_METHOD:'' || :P284_AUDIT_METHOD, :USER_ID, :USERTENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'',
'',
'    apex_util.set_session_state(''P284_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P284_OBJECT_ID'', v_object_id);',
'    apex_util.set_session_state(''P284_IS_SHOW'', v_object_id);',
'',
'exception',
'    when others then',
'        apex_util.set_session_state(''P284_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID, :APP_CODE);',
'end;',
'',
''))
,p_attribute_02=>'P284_OBJECT_ID,P284_IS_SHOW,P284_DEPT_ID,P284_CATEGORY_FIRST_CODE,P284_FORM_ID,P284_OBJECT_SERIAL_NO,P284_IS_ENABLE'
,p_attribute_03=>'P284_ROW_COUNT,P284_IS_SHOW,P284_FORM_ID,P284_OBJECT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241895689045944700)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P284_ROW_COUNT'') == 0) {',
unistr('    alert(''\6570\636E\9519\8BEF'');'),
'    return false;',
'} else {',
'    $(''#check_object_div'').show();',
'    apex.event.trigger(this.triggeringElement, "apexwindowresized");',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241896186025944700)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_OBJECT_SERIAL_NO'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241896715884944701)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>unistr('\663E\793A\70B9\68C0\5BF9\8C61\533A\57DF')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2992606787604165951)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241897198549944701)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>unistr('\663E\793A\4FDD\5B58\6309\94AE')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(241882508314944692)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241897715879944701)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>unistr('\663E\793A\5BA1\6838\533A\57DF')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(489412594523072652)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241898225180944701)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>unistr('\663E\793A\5BA1\6838\7C7B\578B')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_REVIEW_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241898756282944701)
,p_event_id=>wwv_flow_imp.id(241893263440944699)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9690\85CF\4E0B\4E00\6B65\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(241882887433944692)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241899089481944702)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2992755899433774508)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241899637253944702)
,p_event_id=>wwv_flow_imp.id(241899089481944702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9009\4E2D\8BBE\5907\5BF9\8C61ID')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'map.set(''P284_OBJECT_DEVICE_ASSO_IDS'',''OBJECT_DEVICE_ASSO_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241900118910944702)
,p_event_id=>wwv_flow_imp.id(241899089481944702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9009\4E2D\9AD8\7EA7\5BA1\6838ID')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'map.set(''P284_OBJECT_REVIEW_ID_2'',''OBJECT_REVIEW_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241900544231944702)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241904489781944704)
,p_event_id=>wwv_flow_imp.id(241900544231944702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\5BA1\6838\4EBA')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(489412647104072653)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P284_REVIEW_TYPE'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241905032715944704)
,p_event_id=>wwv_flow_imp.id(241900544231944702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\9AD8\7EA7\5BA1\6838')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(477928313785749372)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241900986638944702)
,p_event_id=>wwv_flow_imp.id(241900544231944702)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\67E5\627E\5BF9\5E94\5BA1\6838\7C7B\578B')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_REVIEW_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(REVIEW_TYPE, 0) AS REVIEW_TYPE',
'FROM CHECK_OBJECT_REVIEW',
'WHERE DEL_FLAG = 0',
'    and TENANT_ID = :USERTENANT',
'    and BASE_DEPT_ID = :BASE_DEPT_ID',
'    and OBJECT_ID = :P284_OBJECT_ID',
'and ROWNUM = 1',
unistr('order by UPDATED_DATE desc  --\66F4\65B0\65F6\95F4\5012\53D9\53D6\6700\65B0\4E00\6761'),
';'))
,p_attribute_07=>'P284_OBJECT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241901560177944703)
,p_event_id=>wwv_flow_imp.id(241900544231944702)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\975E\65B0\589E\7981\7528\90E8\95E8')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''.apex-item-group--popup-lov:eq(0)'').addClass(''apex_disabled'');'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P284_OBJECT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241902004990944703)
,p_event_id=>wwv_flow_imp.id(241900544231944702)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\4E0B\4E00\6B65\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(241882887433944692)
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P284_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241902489260944703)
,p_event_id=>wwv_flow_imp.id(241900544231944702)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\4FDD\5B58\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(241882508314944692)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P284_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241902977816944703)
,p_event_id=>wwv_flow_imp.id(241900544231944702)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\5BA1\6838\7C7B\578B')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P284_REVIEW_TYPE'
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P284_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241903514432944703)
,p_event_id=>wwv_flow_imp.id(241900544231944702)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\5BA1\6838\533A\57DF')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(489412594523072652)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P284_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241904045290944704)
,p_event_id=>wwv_flow_imp.id(241900544231944702)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\5173\8054\8BBE\5907')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2992606787604165951)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P284_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241905397888944704)
,p_name=>unistr('\66F4\6539\8868\5355')
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_FORM_ID'
,p_condition_element=>'P284_OBJECT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241905903160944704)
,p_event_id=>wwv_flow_imp.id(241905397888944704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// alert(''0-1 '' + raw_form_ids)',
'var now_length = $v(''P284_FORM_ID'') ? $v(''P284_FORM_ID'').split('':'').length : 0;',
'var old_length = raw_form_ids ? raw_form_ids.split('':'').length : 0;',
'',
'',
'if (utils.checkNull($(''P284_FORM_ID'')) || (now_length - old_length <= 0)) {',
'    // alert(''1-1'')',
'    var arr = raw_form_ids.split('':'');',
'    $s(''P284_CONFIG_FORM_ID'', arr[arr.length - 1]);',
'    $s(''P284_DELETE_FORM'', ''TRUE'');',
'    // alert(''1-2'')',
'} else {',
'    // alert(''2-1'')',
'    var config_form_ids = $v(''P284_FORM_ID'').split('':'');',
'    $s(''P284_CONFIG_FORM_ID'', config_form_ids[config_form_ids.length - 1]);',
'    $s(''P284_DELETE_FORM'', ''FALSE'');',
'    // raw_form_names = apex.item(''P284_FORM_ID'').displayValueFor(raw_form_ids.split('':''));',
'    // alert(''2-2'' + '':'' + ''raw_form_ids:'' + raw_form_ids)',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241906443277944705)
,p_event_id=>wwv_flow_imp.id(241905397888944704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5220\9664\8868\5355')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_row_count number(10);',
'begin',
'',
'JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''debug'', ''OBJECT_ID:''||:P284_OBJECT_ID||chr(13)||''OBJECT_FORM_ASSO_ID:''||:P284_CONFIG_FORM_ID, :USER_ID, :USERTENANT,',
'                     :APP_NAME || '':'' || :APP_ID);',
'    delete from CHECK_OBJECT_FORM_ASSO  where OBJECT_ID=:P284_OBJECT_ID and FORM_ID=:P284_CONFIG_FORM_ID;',
'    v_row_count:=SQL%ROWCOUNT ;',
'    apex_util.set_session_state(''P284_ROW_COUNT'',v_row_count);',
'    commit;',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P284_OBJECT_ID,P284_CONFIG_FORM_ID'
,p_attribute_03=>'P284_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P284_DELETE_FORM'
,p_client_condition_expression=>'TRUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241906869333944705)
,p_event_id=>wwv_flow_imp.id(241905397888944704)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\963B\65AD\65B0\589E\903B\8F91')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \963B\65AD\65B0\589E\903B\8F91'),
'// alert($v(''P284_DELETE_FORM''));',
'if ($v(''P284_DELETE_FORM'') == ''TRUE'') {',
'    var arr_id = $v(''P284_FORM_ID'').split('':'');',
'    var arr_name = apex.item(''P284_FORM_ID'').displayValueFor(arr_id);',
'    raw_form_ids = arr_id.join('':'');',
'    raw_form_names = arr_name;',
'    // alert(''raw_form_names:'' + raw_form_names + '' raw_form_ids:'' + raw_form_ids);',
'    $s(''P284_FORM_ID'', raw_form_ids, raw_form_names, true);',
'    return false;',
'} else {',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241907404308944705)
,p_event_id=>wwv_flow_imp.id(241905397888944704)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_count   number(20) := 0;',
'begin',
'',
'    select count(1)',
'    into v_count',
'    from (',
'             SELECT count(FORM_ID) AS form_count,',
'                    DEVICE_ID',
'             from (select s.FORM_ID, o.DEVICE_ID',
'                   FROM (Select FORM_ID, OBJECT_ID',
'                         from CHECK_OBJECT_FORM_ASSO',
'                         where OBJECT_ID IN (',
'                             SELECT o.OBJECT_ID',
'                             FROM CHECK_OBJECT o',
'                             WHERE o.DEPT_ID = :P284_DEPT_ID',
'                               AND o.DEL_FLAG = 0 and o.OBJECT_ID!=:P284_OBJECT_ID',
'                         )',
'                         union all',
'                         select to_number(:P284_CONFIG_FORM_ID) FORM_ID, to_number(:P284_OBJECT_ID) OBJECT_ID',
'                         from dual) s',
'                            inner JOIN CHECK_OBJECT_DEVICE_ASSO o ON o.OBJECT_ID = s.OBJECT_ID',
'                   WHERE s.OBJECT_ID IN (',
'                       SELECT o.OBJECT_ID',
'                       FROM CHECK_OBJECT o',
'                       WHERE o.DEPT_ID = :P284_DEPT_ID',
'                         AND o.DEL_FLAG = 0',
'                   ))',
'             GROUP BY DEVICE_ID, FORM_ID)',
'    where form_count > 1',
'      and rownum = 1;',
'    apex_util.set_session_state(''P284_ROW_COUNT'', v_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P284_ROW_COUNT'', -1);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P284_DEPT_ID,P284_OBJECT_ID,P284_CONFIG_FORM_ID'
,p_attribute_03=>'P284_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241907925242944706)
,p_event_id=>wwv_flow_imp.id(241905397888944704)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P284_ROW_COUNT'') == 0) {',
'',
'    var arr_id = $v(''P284_FORM_ID'').split('':'');',
'    var arr_name = apex.item(''P284_FORM_ID'').displayValueFor(arr_id);',
'    raw_form_ids = arr_id.join('':'');',
'    raw_form_names = arr_name;',
'    $s(''P284_FORM_ID'', raw_form_ids, raw_form_names, true);',
'    return true;',
'} else if ($v(''P284_ROW_COUNT'') > 0) {',
unistr('    if (confirm(''\5F53\524D\9009\62E9\7684\8868\5355\4E0E\4E0B\65B9\5173\8054\8BBE\5907\5B58\5728\5DF2\7ED1\5B9A\FF0C\82E5\7EE7\7EED\6DFB\52A0\5219\4F1A\6E05\9664\4E0B\65B9\5173\8054\6B64\8868\5355\7684\8BBE\5907\FF0C\662F\5426\7EE7\7EED\FF1F'')) {'),
unistr('         // \786E\8BA4\65B0\589E\8868\5355'),
'        var arr_id = $v(''P284_FORM_ID'').split('':'');',
'        var arr_name = apex.item(''P284_FORM_ID'').displayValueFor(arr_id);',
'        raw_form_ids = arr_id.join('':'');',
'        raw_form_names = arr_name;',
'        $s(''P284_FORM_ID'', raw_form_ids, raw_form_names, true);',
'        return true;',
'    } else {',
unistr('        // \53D6\6D88\65B0\8868\5355'),
'        // var arr_id = $v(''P284_FORM_ID'').split('':'');',
'        // var arr_name = apex.item(''P284_FORM_ID'').displayValueFor(arr_id);',
'        // raw_form_ids = arr_id.join('':'');',
'        // raw_form_names = arr_name;',
'        // alert(''raw_form_names:'' + raw_form_names + '' raw_form_ids:'' + raw_form_ids);',
'        $s(''P284_FORM_ID'', raw_form_ids, raw_form_names, true);',
'        return false;',
'    }',
'',
'} else {',
unistr('    alert(''\6570\636E\9519\8BEF\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241908391490944706)
,p_event_id=>wwv_flow_imp.id(241905397888944704)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_count   number(20) := 1;',
'begin',
'',
'    delete CHECK_OBJECT_DEVICE_ASSO',
'    where OBJECT_ID = :P284_OBJECT_ID',
'      and DEVICE_ID in (',
'        SELECT o.DEVICE_ID',
'',
'        FROM CHECK_OBJECT_FORM_ASSO s',
'                 inner JOIN CHECK_OBJECT_DEVICE_ASSO o ON o.OBJECT_ID = s.OBJECT_ID',
'                 inner join CODE_DEVICE c on c.DEVICE_ID = o.DEVICE_ID',
'        WHERE s.OBJECT_ID IN (',
'            SELECT o.OBJECT_ID',
'            FROM CHECK_OBJECT o',
'            WHERE o.OBJECT_ID != :P284_OBJECT_ID',
'              AND o.DEL_FLAG = 0',
'              and o.DEPT_ID = :P284_DEPT_ID',
'        )',
'          and s.FORM_ID = :P284_CONFIG_FORM_ID',
'',
'        INTERSECT',
'',
'        SELECT o.DEVICE_ID',
'',
'        FROM CHECK_OBJECT_DEVICE_ASSO o',
'                 inner join CODE_DEVICE c on c.DEVICE_ID = o.DEVICE_ID',
'        where o.OBJECT_ID = :P284_OBJECT_ID',
'    );',
'    insert into CHECK_OBJECT_FORM_ASSO(created_by, creation_date, object_id, form_id)',
'    values (:USER_ID, sysdate, :P284_OBJECT_ID, :P284_CONFIG_FORM_ID);',
'    apex_util.set_session_state(''P284_ROW_COUNT'', v_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P284_ROW_COUNT'', -1);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;',
'',
'',
''))
,p_attribute_02=>'P284_OBJECT_ID,P284_DEPT_ID,P284_CONFIG_FORM_ID'
,p_attribute_03=>'P284_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241908883356944706)
,p_event_id=>wwv_flow_imp.id(241905397888944704)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P284_ROW_COUNT'') > 0) {',
'    return true;',
'} else {',
unistr('    alert(''\6E05\9664\8BBE\5907\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241909367147944706)
,p_event_id=>wwv_flow_imp.id(241905397888944704)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2992755899433774508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241909837883944706)
,p_name=>unistr('\6279\91CF')
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(241869583105944663)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241910328836944707)
,p_event_id=>wwv_flow_imp.id(241909837883944706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P284_OBJECT_DEVICE_ASSO_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\914D\7F6E\7684\6570\636E'');'),
'    return false;',
'} else {',
'    return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241910827785944707)
,p_event_id=>wwv_flow_imp.id(241909837883944706)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'apex_util.set_session_state(''P277_OBJECT_ID'', :P284_OBJECT_ID);',
'apex_util.set_session_state(''P277_OBJECT_DEVICE_ASSO_IDS'', :P284_OBJECT_DEVICE_ASSO_IDS);',
'end;'))
,p_attribute_02=>'P284_OBJECT_ID,P284_OBJECT_DEVICE_ASSO_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241911341393944707)
,p_event_id=>wwv_flow_imp.id(241909837883944706)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href="f?p=&APP_ID.:277:&APP_SESSION.::ClearCache:::";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241911694256944707)
,p_name=>unistr('\65B0\589E\8BBE\5907')
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(241868791256944663)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241912265799944707)
,p_event_id=>wwv_flow_imp.id(241911694256944707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update CHECK_OBJECT set DEPT_ID=:P284_DEPT_ID, UPDATED_BY=:USER_ID, UPDATED_DATE=sysdate where OBJECT_ID = :P284_OBJECT_ID;'
,p_attribute_02=>'P284_DEPT_ID,P284_OBJECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241912701822944708)
,p_event_id=>wwv_flow_imp.id(241911694256944707)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#insert_btn_hide'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241913119580944708)
,p_name=>unistr('\9ED8\8BA4\4E0D\5BA1\6838\9690\85CF\5BA1\6838\4EBA')
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_IS_REVIEW'
,p_condition_element=>'P284_IS_REVIEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241913660762944708)
,p_event_id=>wwv_flow_imp.id(241913119580944708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(489412647104072653)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241914147054944708)
,p_event_id=>wwv_flow_imp.id(241913119580944708)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(489412647104072653)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241914559436944708)
,p_name=>unistr('\6279\91CF\5220\9664')
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(241876665963944685)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P284_OBJECT_REVIEW_ID_2''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241915031461944709)
,p_event_id=>wwv_flow_imp.id(241914559436944708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('return confirm(''\5220\9664\5F53\524D\5185\5BB9\4F1A\5B58\5728\6570\636E\4E22\5931\FF0C\662F\5426\786E\5B9A\5220\9664?'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241915547158944709)
,p_event_id=>wwv_flow_imp.id(241914559436944708)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241916011122944709)
,p_event_id=>wwv_flow_imp.id(241914559436944708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG VARCHAR2(1000);',
'              /**',
'     * CREATE BY: WXX',
'     * CREATE DATE: 2025/1/3  15:42',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIPTION:P284 \5220\9664\5BA1\6838\6570\636E'),
'     */',
'BEGIN',
'    UPDATE CHECK_OBJECT_REVIEW',
'    SET UPDATED_BY   =:USER_ID,',
'        UPDATED_DATE =SYSDATE,',
'        DEL_FLAG = 1',
'    WHERE OBJECT_REVIEW_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P284_OBJECT_REVIEW_IDS_2, '',''))',
'      AND DEL_FLAG = 0;',
'    APEX_UTIL.SET_SESSION_STATE(''P284_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P284_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5220\9664\70B9\68C0\5BF9\8C61\5BA1\6838-\7F16\8F91'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'END;'))
,p_attribute_02=>'P284_OBJECT_REVIEW_IDS_2'
,p_attribute_03=>'P284_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241916534700944709)
,p_event_id=>wwv_flow_imp.id(241914559436944708)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P284_COUNT'') < 0) {',
unistr('    alert(''\5220\9664\5931\8D25'');'),
'    return false;',
'} else{',
unistr('     alert(''\5220\9664\6210\529F'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241917012486944710)
,p_event_id=>wwv_flow_imp.id(241914559436944708)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(477928313785749372)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241917375904944710)
,p_name=>unistr('\5BA1\6838-\5E38\89C4')
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_REVIEW_TYPE'
,p_condition_element=>'P284_REVIEW_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241917934366944710)
,p_event_id=>wwv_flow_imp.id(241917375904944710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\663E\793A\5BA1\6838\4EBA')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(489412647104072653)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241918444915944711)
,p_event_id=>wwv_flow_imp.id(241917375904944710)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\5BA1\6838\4EBA')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(489412647104072653)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241918781257944711)
,p_name=>unistr('\5BA1\6838-\9AD8\7EA7\5BA1\6838')
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P284_REVIEW_TYPE'
,p_condition_element=>'P284_REVIEW_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241919326589944711)
,p_event_id=>wwv_flow_imp.id(241918781257944711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\663E\793A\9AD8\7EA7\5BA1\6838')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(477928313785749372)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241919835912944711)
,p_event_id=>wwv_flow_imp.id(241918781257944711)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\9AD8\7EA7\5BA1\6838')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(477928313785749372)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(241920173795944711)
,p_name=>unistr('\53D6\6D88\7684\540C\65F6\903B\8F91\5220\9664\5BF9\5E94\5BF9\8C61\6570\636E')
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(241881715618944692)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apextap'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241920758948944712)
,p_event_id=>wwv_flow_imp.id(241920173795944711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    row_count number(20) ;',
'          /**',
'        * create by: wxx',
'        * create date: 2025/1/8 17:42',
'        * modify by:',
'        * modify date:',
unistr('        * describe:P284 \70B9\68C0\5BF9\8C61-\53D6\6D88'),
unistr('      \6D89\53CA\7684\8868CHECK_OBJECT\3001CHECK_OBJECT_DEVICE_ASSO\3001CHECK_OBJECT_REVIEW\3001'),
'        */',
'begin',
unistr('--     \5220\9664CHECK_OBJECT_DEVICE_ASSO'),
'    -- delete CHECK_OBJECT_DEVICE_ASSO',
'    -- where OBJECT_DEVICE_ASSO_ID in (select * from UTILS_PKG.SPLIT_STR(:P284_OBJECT_DEVICE_ASSO_IDS, '',''));',
'    ',
unistr('-- \5220\9664\672A\4FDD\5B58\7684CHECK_OBJECT_REVIEW'),
'UPDATE CHECK_OBJECT_REVIEW',
'    SET UPDATED_BY =:USER_ID,',
'        UPDATED_DATE=SYSDATE,',
'        DEL_FLAG=1',
'    WHERE DEL_FLAG = 0',
'        and TENANT_ID = :USERTENANT',
'        and BASE_DEPT_ID = :BASE_DEPT_ID',
'       and  OBJECT_ID = :P284_OBJECT_ID',
'       and IS_SAVE = 0;',
'',
unistr('-- \5220\9664CHECK_OBJECT'),
'-- UPDATE CHECK_OBJECT',
'--     SET UPDATED_BY =:USER_ID,',
'--         UPDATED_DATE=SYSDATE,',
'--         DEL_FLAG=1',
'--     WHERE DEL_FLAG = 0',
'--         and TENANT_ID = :USERTENANT',
'--         and BASE_DEPT_ID = :BASE_DEPT_ID',
'--        and  OBJECT_ID = :P284_OBJECT_ID;',
'',
'row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P284_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P284_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P284_OBJECT_ID'
,p_attribute_03=>'P284_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(241921187174944712)
,p_event_id=>wwv_flow_imp.id(241920173795944711)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href="f?p=&APP_ID.:260:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(241870507986944663)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2992755899433774508)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\70B9\68C0\5BF9\8C61\4EA4\4E92\5F0F\7F51\683C - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>124506142125433126
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(241877490241944686)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(477928313785749372)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\9AD8\7EA7\5BA1\6838 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>124513124380433149
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(241860383780944651)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2992606727449165950)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \70B9\68C0\5BF9\8C61')
,p_internal_uid=>124496017919433114
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(241880996544944691)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(489412647104072653)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \70B9\68C0\5BF9\8C61-\7F16\8F91')
,p_internal_uid=>124516630683433154
);
wwv_flow_imp.component_end;
end;
/
