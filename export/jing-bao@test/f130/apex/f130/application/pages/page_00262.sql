prompt --application/pages/page_00262
begin
--   Manifest
--     PAGE: 00262
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
 p_id=>262
,p_name=>unistr('\70B9\68C0\5BF9\8C61-\7F16\8F91')
,p_alias=>unistr('\70B9\68C0\5BF9\8C61-\7F16\8F91')
,p_step_title=>unistr('\70B9\68C0\5BF9\8C61-\7F16\8F91')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// // \5BF9\8C61\8BBE\5907ID\83B7\53D6'),
'// var raw_form_ids = $v(''P262_FORM_ID'');',
'// var raw_form_names = '''';',
'',
'// function click_span_op(id, op) {',
'//     console.log(id);',
'//     console.log(op);',
'//     if (op == ''config'') {',
'//         $s(''P262_OBJECT_DEVICE_ASSO_ID'', id);',
'//         $(''#config_btn'').click();',
'//     } else {',
'//         $s(''P262_OBJECT_DEVICE_ASSO_IDS'', id);',
'//         $(''#del_btn'').click();',
'//     }',
'// }',
'',
unistr('// \5BF9\8C61\5BA1\6838id\83B7\53D6'),
'// var raw_OBJECT_IDs = $v(''P262_OBJECT_ID'');',
'// var raw_OBJECT_names = '''';',
'',
'// function click_span_op(id, op) {',
'//     console.log(id);',
'//     console.log(op);',
'//     if (op == ''update'') {',
'//         $s(''P262_OBJECT_REVIEW_IDS_1'', id);',
'//         $(''#update_btn'').click();',
'//     } else {',
'//         $s(''P262_OBJECT_REVIEW_IDS_2'', id);',
'//         $(''#del_btn'').click();',
'//     }',
'// }',
'',
'',
unistr('// \5BF9\8C61\5BA1\6838id\83B7\53D62.0'),
unistr('// \5BF9\8C61\8BBE\5907ID\83B7\53D6'),
'var raw_form_ids = $v(''P262_FORM_ID'');',
'var raw_form_names = '''';',
'',
unistr('// \5BF9\8C61\5BA1\6838id\83B7\53D6'),
'var raw_OBJECT_IDs = $v(''P262_OBJECT_ID'');',
'var raw_OBJECT_names = '''';',
'',
'function click_span_op(id, op, type) {',
'    console.log(id);',
'    console.log(op);',
'    console.log(type);',
'',
'    if (type === ''device'') {',
'        if (op == ''config'') {',
'            $s(''P262_OBJECT_DEVICE_ASSO_ID'', id);',
'            $(''#config_btn'').click();',
'        } else {',
'            $s(''P262_OBJECT_DEVICE_ASSO_IDS'', id);',
'            $(''#del_btn'').click();',
'        }',
'    } else if (type === ''review'') {',
'        if (op == ''edit'') {',
'            $s(''P262_OBJECT_REVIEW_IDS_1'', id);',
'            $(''#edit_btn'').click();',
'        } else {',
'            $s(''P262_OBJECT_REVIEW_IDS_2'', id);',
'            $(''#dele_btn'').click();',
'        }',
'    }',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide-btn{',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(686026682483995625)
,p_plug_name=>unistr('\5BA1\6838\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(674542401746672345)
,p_plug_name=>unistr('\9AD8\7EA7\5BA1\6838')
,p_parent_plug_id=>wwv_flow_imp.id(686026682483995625)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>90
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECT_REVIEW_ID,',
unistr('       CASE WHEN IS_SAVE = 0 THEN REVIEW_GROUP || ''\FF08'' ||''\672A\4FDD\5B58''||''\FF09'' ELSE REVIEW_GROUP END AS REVIEW_GROUP, --\81EA\5B9A\4E49 \5206\7EC4(\672A\4FDD\5B58\63D0\793A)'),
unistr('--        REVIEW_GROUP,  --\81EA\5B9A\4E49 \5206\7EC4'),
unistr('       REVIEW_USERS,  --\5BA1\6838\4EBA'),
unistr('       AUDIT_METHOD --\5BA1\6838\65B9\5F0F'),
unistr('       ,''operate'' operate  --\64CD\4F5C'),
'from CHECK_OBJECT_REVIEW',
'where TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
'and DEL_FLAG = 0',
'and REVIEW_TYPE = 2',
'and OBJECT_ID = :P262_OBJECT_ID',
';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P262_OBJECT_ID'
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
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p style="color: red;">\9AD8\7EA7\5BA1\6838\81F3\591A\8BBE\7F6E5\4E2A\5206\7EC4</p>'),
''))
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(684944592082110599)
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
'--         FROM JA_UTILS_PKG.SPLIT_STR((SELECT REVIEW_USERS FROM CHECK_OBJECT_REVIEW where OBJECT_REVIEW_ID = :P262_OBJECT_REVIEW_IDS_2), '','')',
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
'--         AND OBJECT_ID = :P262_OBJECT_ID',
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
,p_multi_value_separator=>':'
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
 p_id=>wwv_flow_imp.id(684944682695110600)
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
 p_id=>wwv_flow_imp.id(684947609169110629)
,p_name=>'OBJECT_REVIEW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECT_REVIEW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(686025310243995611)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(686025412838995612)
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
 p_id=>wwv_flow_imp.id(686577991564974133)
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
 p_id=>wwv_flow_imp.id(674542513813672346)
,p_internal_uid=>614939610135459907
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
 p_id=>wwv_flow_imp.id(684950136262111153)
,p_interactive_grid_id=>wwv_flow_imp.id(674542513813672346)
,p_static_id=>'1220266'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(684950376249111153)
,p_report_id=>wwv_flow_imp.id(684950136262111153)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684952415706111357)
,p_view_id=>wwv_flow_imp.id(684950376249111153)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(684944592082110599)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(684953227493111360)
,p_view_id=>wwv_flow_imp.id(684950376249111153)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(684944682695110600)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(685315069359127490)
,p_view_id=>wwv_flow_imp.id(684950376249111153)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(684947609169110629)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(686311889884593652)
,p_view_id=>wwv_flow_imp.id(684950376249111153)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(686025310243995611)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(686961884485720028)
,p_view_id=>wwv_flow_imp.id(684950376249111153)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(686577991564974133)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(686026735064995626)
,p_plug_name=>unistr('\5BA1\6838')
,p_parent_plug_id=>wwv_flow_imp.id(686026682483995625)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>70
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
'and OBJECT_ID = :P262_OBJECT_ID',
';'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P262_OBJECT_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3189220815410088923)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
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
 p_id=>wwv_flow_imp.id(3189220875565088924)
,p_plug_name=>unistr('\5173\8054\8BBE\5907')
,p_region_name=>'check_object_div'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3189369987394697481)
,p_plug_name=>unistr('\70B9\68C0\5BF9\8C61\4EA4\4E92\5F0F\7F51\683C')
,p_parent_plug_id=>wwv_flow_imp.id(3189220875565088924)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
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
'       d.OBJECT_ID ,',
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
'  and d.object_id = :P262_OBJECT_ID;',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P262_OBJECT_ID'
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
 p_id=>wwv_flow_imp.id(72426960325230147)
,p_name=>'OBJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Object Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(1930692461946105261)
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
 p_id=>wwv_flow_imp.id(1930692639700105263)
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
 p_id=>wwv_flow_imp.id(1930693511583105272)
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
 p_id=>wwv_flow_imp.id(3181457342482875911)
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
 p_id=>wwv_flow_imp.id(3181457494429875912)
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
 p_id=>wwv_flow_imp.id(3181457594199875913)
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
 p_id=>wwv_flow_imp.id(3181457737591875914)
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
 p_id=>wwv_flow_imp.id(3181457789730875915)
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
 p_id=>wwv_flow_imp.id(3181457852713875916)
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
 p_id=>wwv_flow_imp.id(3181457950032875917)
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
 p_id=>wwv_flow_imp.id(3189471362935974793)
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
 p_id=>wwv_flow_imp.id(3189472761789974807)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3189472940204974808)
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
 p_id=>wwv_flow_imp.id(3190608012984318694)
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
    '',
    '<!-- <span>',
    '    <a href="#" onclick="click_span_op(''&OBJECT_DEVICE_ASSO_ID.'',''config'')" style="text-dcoration:none;">',
    unistr('		\8BA1\5212\914D\7F6E'),
    '	</a>',
    '    &nbsp;',
    '	<a href="#" onclick="click_span_op(''&OBJECT_DEVICE_ASSO_ID.'',''delete'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
    '	</a>',
    '</span> -->',
    '',
    '',
    '<span>',
    '    <a href="#" onclick="click_span_op(''&OBJECT_DEVICE_ASSO_ID.'',''config'',''device'')" style="text-dcoration:none;">',
    unistr('		\8BA1\5212\914D\7F6E'),
    '	</a>',
    '    &nbsp;',
    '	<a href="#" onclick="click_span_op(''&OBJECT_DEVICE_ASSO_ID.'',''delete'',''device'')" style="text-dcoration:none;">',
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
 p_id=>wwv_flow_imp.id(3189370137824697482)
,p_internal_uid=>3129767234146485043
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
 p_id=>wwv_flow_imp.id(3189379241969731894)
,p_interactive_grid_id=>wwv_flow_imp.id(3189370137824697482)
,p_static_id=>'2766617'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3189379477323731894)
,p_report_id=>wwv_flow_imp.id(3189379241969731894)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(73173720823775098)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(72426960325230147)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1938651101735556606)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1930692461946105261)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1938655538479647345)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1930692639700105263)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1938676023995390177)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1930693511583105272)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3189393187115461130)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3181457342482875911)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3189394121594461133)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3181457494429875912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3189395039947461136)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3181457594199875913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3189395875480461138)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3181457737591875914)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3189396752823461141)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3181457789730875915)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3189397646611461144)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3181457852713875916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3189398580302461147)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3181457950032875917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3189477829375084752)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3189471362935974793)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3189943007052729350)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3189472761789974807)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3191328956118906751)
,p_view_id=>wwv_flow_imp.id(3189379477323731894)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3190608012984318694)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3189221010972088925)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_05'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3189314105259468174)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2301990439734836168)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2302109431778836229)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187110349646116466)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3189221010972088925)
,p_button_name=>unistr('\53D6\6D88\64CD\4F5C')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88\64CD\4F5C')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>1
,p_required_patch=>-wwv_flow_imp.id(2146244333585926365)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187110720342116466)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3189221010972088925)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:260:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>5
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187111130708116467)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3189221010972088925)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
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
 p_id=>wwv_flow_imp.id(187111543250116467)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3189221010972088925)
,p_button_name=>unistr('\4E0B\4E00\6B65')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\4E00\6B65')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187131262342116500)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3189220875565088924)
,p_button_name=>unistr('\8BA1\5212\914D\7F6E')
,p_button_static_id=>'config_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8BA1\5212\914D\7F6E')
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'ja-bpoint-btn hide-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187118167165116488)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(674542401746672345)
,p_button_name=>unistr('\65B0\589E\5BA1\6838')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2302108173168836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E\5BA1\6838')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P262_GROUP_COUNT'
,p_button_condition2=>'5'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187138923932116506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3189369987394697481)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187118591591116488)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(674542401746672345)
,p_button_name=>unistr('\7F16\8F91\5BA1\6838')
,p_button_static_id=>'edit_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2302108173168836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\7F16\8F91\5BA1\6838')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187139390311116506)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3189369987394697481)
,p_button_name=>unistr('\65B0\589E_hide')
,p_button_static_id=>'insert_btn_hide'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--padRight:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E_hide')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn hide-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187119003055116488)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(674542401746672345)
,p_button_name=>unistr('\6279\91CF\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\6279\91CF\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187139710907116506)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3189369987394697481)
,p_button_name=>unistr('\6279\91CF\914D\7F6E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\914D\7F6E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(187140183337116506)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3189369987394697481)
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'del_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(187186506281116542)
,p_branch_name=>unistr('\8F6C\5230\9875 263-\70B9\68C0\5BF9\8C61\8FB9\68C0')
,p_branch_action=>'f?p=&APP_ID.:263:&SESSION.::&DEBUG.:263:P263_OBJECT_ID,P263_DEPT_ID,P263_CATEGORY_FIRST_CODE:&P262_OBJECT_ID.,&P262_DEPT_ID.,&P262_CATEGORY_FIRST_CODE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(187139390311116506)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(187186104952116542)
,p_branch_name=>unistr('\8F6C\5230\9875 273-\8BA1\5212\914D\7F6E')
,p_branch_action=>'f?p=&APP_ID.:273:&SESSION.::&DEBUG.:273:P273_OBJECT_DEVICE_ASSO_ID,P273_OBJECT_ID:&P262_OBJECT_DEVICE_ASSO_ID.,&P262_OBJECT_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(187131262342116500)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(187185350128116541)
,p_branch_name=>unistr('\8F6C\5230\9875 283 \65B0\589E\5BA1\6838')
,p_branch_action=>'f?p=&APP_ID.:283:&SESSION.::&DEBUG.:283:P283_OBJECT_ID:&P262_OBJECT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(187118167165116488)
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_branch_condition=>'P262_GROUP_COUNT'
,p_branch_condition_text=>'5'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(187185727475116541)
,p_branch_name=>unistr('\8F6C\5230\9875 283 \7F16\8F91\5BA1\6838')
,p_branch_action=>'f?p=&APP_ID.:283:&SESSION.::&DEBUG.:283:P283_OBJECT_REVIEW_ID,P283_OBJECT_ID:&P262_OBJECT_REVIEW_IDS_2.,&P262_OBJECT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'ITEM_IS_NOT_NULL'
,p_branch_condition=>'P262_OBJECT_REVIEW_IDS_2'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(312522207165164318)
,p_name=>'P262_GROUP_COUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(686026682483995625)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(562125326079624578)
,p_name=>'P262_REVIEW_TYPE_1'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(686026682483995625)
,p_item_source_plug_id=>wwv_flow_imp.id(686026735064995626)
,p_prompt=>unistr('\5BA1\6838')
,p_source=>'REVIEW_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\5173\95ED;0,\5E38\89C4;1,\9AD8\7EA7\5BA1\6838;2')
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\82E5\4E3A\5E38\89C4\5BA1\6838\FF0C\9700\7531\6240\6709\4EBA\5458\5BA1\6838\540E\901A\8FC7'),
'<br>',
unistr('\82E5\4E3A\9AD8\7EA7\5BA1\6838\FF0C\9700\7531\6240\6709\5206\7EC4\5BA1\6838\540E\901A\8FC7\FF0C\6216\7B7E\FF1A\5206\7EC4\5185\4EC5\97001\4F4D\6210\5458\5BA1\6838\FF0C\4F1A\7B7E\FF1A\5206\7EC4\5185\6240\6709\6210\5458\5BA1\6838'),
'</br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(684980046717110704)
,p_name=>'P262_OBJECT_REVIEW_ID'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(684980227615110706)
,p_name=>'P262_COUNT'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(686579618975974148)
,p_name=>'P262_OBJECT_REVIEW_IDS_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(686026682483995625)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(686580742448974159)
,p_name=>'P262_OBJECT_REVIEW_IDS_2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(686026682483995625)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(686586115895974151)
,p_name=>'P262_OBJECT_REVIEW_ID_1'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(686026735064995626)
,p_item_source_plug_id=>wwv_flow_imp.id(686026735064995626)
,p_source=>'OBJECT_REVIEW_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(686586273089974152)
,p_name=>'P262_REVIEW_TYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(686026735064995626)
,p_item_source_plug_id=>wwv_flow_imp.id(686026735064995626)
,p_source=>'REVIEW_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('\82E5\4E3A\5E38\89C4\5BA1\6838\FF0C\9700\7531\6240\6709\4EBA\5458\5BA1\6838\540E\901A\8FC7'),
'<br>',
unistr('\82E5\4E3A\9AD8\7EA7\5BA1\6838\FF0C\9700\7531\6240\6709\5206\7EC4\5BA1\6838\540E\901A\8FC7\FF0C\6216\7B7E\FF1A\5206\7EC4\5185\4EC5\97001\4F4D\6210\5458\5BA1\6838\FF0C\4F1A\7B7E\FF1A\5206\7EC4\5185\6240\6709\6210\5458\5BA1\6838'),
'</br>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(686586376944974153)
,p_name=>'P262_REVIEW_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(686026735064995626)
,p_item_source_plug_id=>wwv_flow_imp.id(686026735064995626)
,p_prompt=>unistr('\5206\7EC4')
,p_source=>'REVIEW_GROUP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>512
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(686586422161974154)
,p_name=>'P262_REVIEW_USERS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(686026735064995626)
,p_prompt=>unistr('\5BA1\6838\4EBA\5458')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select JOB_NUMBER || ''-'' || NAME AS NAMES,SYNC_USER_ID ',
'from MPF_SHARE_USER_V',
'where IS_LEAVE = 0',
'and TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID',
'and SYNC_USER_ID is not null ;'))
,p_cSize=>30
,p_cMaxlength=>1000
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(686586548035974155)
,p_name=>'P262_AUDIT_METHOD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(686026735064995626)
,p_item_source_plug_id=>wwv_flow_imp.id(686026735064995626)
,p_prompt=>'Audit Method'
,p_source=>'AUDIT_METHOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1792747328611549965)
,p_name=>'P262_DELETE_FORM'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1930706145062105301)
,p_name=>'P262_DEPT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_item_source_plug_id=>wwv_flow_imp.id(3189220815410088923)
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
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
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
 p_id=>wwv_flow_imp.id(1930706196057105302)
,p_name=>'P262_OBJECT_SERIAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_item_source_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_prompt=>unistr('\5173\8054\7F16\53F7\FF1A')
,p_placeholder=>unistr('\7F16\53F7\4E0D\586B\5199\9ED8\8BA4\81EA\52A8\751F\6210')
,p_source=>'OBJECT_SERIAL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_colspan=>4
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(1930706568725105306)
,p_name=>'P262_EXT_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_item_source_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_source=>'EXT_ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1930706651001105307)
,p_name=>'P262_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_item_source_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_item_default=>'1'
,p_prompt=>unistr('\72B6\6001\FF1A')
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
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
 p_id=>wwv_flow_imp.id(1930714693773105319)
,p_name=>'P262_OBJECT_DEVICE_ASSO_IDS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3189220875565088924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1940529300954604494)
,p_name=>'P262_CONFIG_FORM_ID'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2912732747597818728)
,p_name=>'P262_IS_SHOW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2912733138455818728)
,p_name=>'P262_OBJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_item_source_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_source=>'OBJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2912733531548818728)
,p_name=>'P262_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_item_source_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2912734362512818729)
,p_name=>'P262_CATEGORY_FIRST_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_item_source_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CATEGORY_FIRST_CODE',
'from CHECK_OBJECT c',
'where OBJECT_ID = :P262_OBJECT_ID',
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
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2912735219837818730)
,p_name=>'P262_FORM_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  listagg(f.FORM_ID,'':'') val_s',
'from CHECK_OBJECT_FORM_ASSO s',
'         left join CHECK_FORM f on s.FORM_ID = f.FORM_ID and f.DEL_FLAG = 0',
'where s.OBJECT_ID = :P262_OBJECT_ID;'))
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
'--	  and  CLASSIFY_ID=:P262_CLASSIFY_ID',
'order by f.DEL_FLAG;'))
,p_cSize=>30
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
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
 p_id=>wwv_flow_imp.id(2912736820603818731)
,p_name=>'P262_ROW_COUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2912737131762818731)
,p_name=>'P262_MESSAGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2912737586341818731)
,p_name=>'P262_FORM_IDS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3189220815410088923)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2912743376162818736)
,p_name=>'P262_OBJECT_DEVICE_ASSO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3189220875565088924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187142353871116516)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(187111130708116467)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187146387584116521)
,p_event_id=>wwv_flow_imp.id(187142353871116516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\57FA\672C\4FE1\606F\4E0D\4E3A\7A7A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P262_DEPT_ID''))) {',
unistr('    alert("\8BF7\9009\62E9\90E8\95E8\FF01");'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P262_CATEGORY_FIRST_CODE''))) {',
unistr('    alert("\8BF7\9009\62E9\5927\7C7B\540D\79F0\FF01");'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P262_FORM_ID''))) {',
unistr('    alert("\8BF7\9009\62E9\70B9\68C0\8868\5355\FF01");'),
'    return false;',
'}',
'',
unistr('// \5F53\5BA1\6838\72B6\6001"\5E38\89C4"\FF0C\9009\62E9\5BA1\6838\4EBA\5458 2025-01-06 16\FF1A52 wxx'),
'if ($v(''P262_OBJECT_DEVICE_ASSO_ID'') == 1 && utils.checkNull($v(''P262_REVIEW_USERS''))) {',
unistr('    alert("\8BF7\9009\62E9\5BA1\6838\4EBA\5458\FF01");'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187146881942116521)
,p_event_id=>wwv_flow_imp.id(187142353871116516)
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
unistr('     * describe:P262 \4FDD\5B58  \67E5\8BE2\662F\5426\914D\7F6E\8BBE\5907'),
'     */',
'begin',
'    select count(1) into v_count from CHECK_OBJECT_DEVICE_ASSO where PLAN_ID is null and OBJECT_ID = :P262_OBJECT_ID;',
'    apex_util.set_session_state(''P262_ROW_COUNT'', v_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P262_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME,:APP_ID,:APP_CODE);',
'end;'))
,p_attribute_02=>'P262_OBJECT_ID'
,p_attribute_03=>'P262_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187147358947116521)
,p_event_id=>wwv_flow_imp.id(187142353871116516)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P262_ROW_COUNT'') > 0) {',
unistr('    alert(''\8BF7\586B\5199\5B8C\6574\5185\5BB9\540E\FF0C\518D\8FDB\884C\4FDD\5B58\FF01'');'),
'    return false;',
'} else {',
'',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187144335387116520)
,p_event_id=>wwv_flow_imp.id(187142353871116516)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58 \68C0\9A8C\5173\8054\7F16\53F7\662F\5426\91CD\590D')
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
unistr('     * describe:P262 \4FDD\5B58 \68C0\9A8C\5173\8054\7F16\53F7\662F\5426\91CD\590D'),
'     */',
'begin',
'',
'    if :P262_OBJECT_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_object_serial_no from dual;',
'    else',
'        v_object_serial_no := :P262_OBJECT_SERIAL_NO;',
'    end if;',
unistr('    if :P262_OBJECT_ID is null then  --\65B0\589E\7684\60C5\51B5'),
'',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_OBJECT',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID = :BASE_DEPT_ID',
'              and OBJECT_SERIAL_NO = :P262_OBJECT_SERIAL_NO',
'              and DEL_FLAG = 0;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P262_MESSAGE'', ''\5173\8054\7F16\53F7\91CD\590D'');'),
'            end if;',
'        end if;',
unistr('    else  --\7F16\8F91\7684\60C5\51B5'),
'',
'        select count(1)',
'        into v_count',
'        from CHECK_OBJECT',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and OBJECT_SERIAL_NO = :P262_OBJECT_SERIAL_NO',
'          and DEL_FLAG = 0',
'          and OBJECT_ID != :P262_OBJECT_ID;',
'        if v_count > 0 then',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P262_MESSAGE'', ''\5173\8054\7F16\53F7\91CD\590D!'');'),
'        end if;',
'',
'    end if;',
'',
'    apex_util.set_session_state(''P262_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P262_OBJECT_SERIAL_NO'', v_object_serial_no);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P262_ROW_COUNT'', 0);',
unistr('        apex_util.set_session_state(''P262_MESSAGE'', ''\6570\636E\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME,:APP_ID,:APP_CODE);',
'end ;'))
,p_attribute_02=>'P262_OBJECT_ID,P262_OBJECT_SERIAL_NO'
,p_attribute_03=>'P262_ROW_COUNT,P262_MESSAGE,P262_OBJECT_SERIAL_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187144854195116520)
,p_event_id=>wwv_flow_imp.id(187142353871116516)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P262_ROW_COUNT'') > 0) {',
'',
'    return true;',
'} else {',
'    alert($v(''P262_MESSAGE''));',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187145356079116520)
,p_event_id=>wwv_flow_imp.id(187142353871116516)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65B0\589E\5BA1\6838')
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
unistr('     * describe:P262 \65B0\589E\5BA1\6838\4FE1\606F'),
'     */',
'begin',
unistr('    -- \975E\9AD8\7EA7\5BA1\6838 \65B0\589E\5BA1\6838\6570\636E\5230 \5BA1\6838\8868\4E2D'),
'    if :P262_REVIEW_TYPE_1 <> 2 then',
unistr('--         \5220\9664\4E4B\524D\7684\5BA1\6838\6570\636E'),
'    UPDATE CHECK_OBJECT_REVIEW',
'        SET UPDATED_BY =:USER_ID,',
'            UPDATED_DATE=SYSDATE,',
'            DEL_FLAG = 1',
'        WHERE OBJECT_ID = :P262_OBJECT_ID;',
'',
unistr('--         \6267\884C\65B0\589E\5230\5BA1\6838\8868'),
'        insert into CHECK_OBJECT_REVIEW(CREATED_BY, UPDATED_BY, OBJECT_ID, REVIEW_TYPE,REVIEW_USERS,AUDIT_METHOD,BASE_DEPT_ID,TENANT_ID,IS_SAVE)',
'            values (:USER_ID, :USER_ID,  :P262_OBJECT_ID, nvl(:P262_REVIEW_TYPE_1,0),nvl(:P262_REVIEW_USERS,null),''CounterSign'',:BASE_DEPT_ID,:USERTENANT,0);',
'    end if;',
'',
unistr('--    WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || ''\6253\5370\5BA1\6838\4FE1\606F4\FF1A'', ''info'', V_ERR_MSG || '':P262_OBJECT_ID:'' || :P262_OBJECT_ID || '',P262_REVIEW_TYPE_1:'' || :P262_REVIEW_TYPE_1 || '',REVIEW_USERS:'' || :P262_REVIEW_USERS'),
'--             ||  '',REVIEW_GROUP:'' || :P262_REVIEW_GROUP ||  '',AUDIT_METHOD:'' || :P262_AUDIT_METHOD, :USER_ID, :USERTENANT,',
'--                     :APP_NAME , :APP_ID, :APP_CODE);',
'',
'',
'    apex_util.set_session_state(''P262_ROW_COUNT'', row_count);',
'',
'exception',
'    when others then',
'        apex_util.set_session_state(''P262_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID, :APP_CODE);',
'end;',
'',
''))
,p_attribute_02=>'P262_OBJECT_ID,P262_REVIEW_TYPE_1,P262_REVIEW_USERS'
,p_attribute_03=>'P262_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187145805791116520)
,p_event_id=>wwv_flow_imp.id(187142353871116516)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P262_ROW_COUNT'') == 0) {',
unistr('    alert(''\6570\636E\9519\8BEF'');'),
'    return false;',
'} else {',
'    $(''#check_object_div'').show();',
'    apex.event.trigger(this.triggeringElement, "apexwindowresized");',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187142834206116518)
,p_event_id=>wwv_flow_imp.id(187142353871116516)
,p_event_result=>'TRUE'
,p_action_sequence=>100
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
unistr('        * describe:P262 \4FDD\5B58-\70B9\68C0\5BF9\8C61\66F4\65B0-\8868\5355'),
unistr('      \6D89\53CA\7684\8868CHECK_OBJECT\FF0CCHECK_RECORD\FF08\539F\5148\662F\901A\8FC7\540E\7AEF\540C\6B65\8FC7\53BB\FF0C\65B0\7248\4E0D\9700\8981\4E86\FF0C\76F4\63A5\4ECECHECK_OBJECT_REVIEW\5BA1\6838\8868\53D6\FF09\FF0C'),
unistr('       CHECK_OBJECT_REVIEW\FF08\5C06\4FDD\5B58\72B6\6001\66F4\65B0\FF09'),
'        */',
'begin',
'',
unistr('    -- \5220\9664\672C\6B21\53D6\6D88\9009\4E2D\7684\8868\5355'),
'    delete CHECK_OBJECT_FORM_ASSO s',
'    where s.OBJECT_ID = :P262_OBJECT_ID',
'      and not exists(',
'            select 1',
'            from JA_UTILS_PKG.SPLIT_STR(:P262_FORM_ID, '':'') A',
'            where s.FORM_ID = A.data_val',
'        );',
'',
'    MERGE INTO CHECK_OBJECT_FORM_ASSO A',
'    USING (',
'        select data_val form_id, :P262_OBJECT_ID object_id',
'        from JA_UTILS_PKG.SPLIT_STR(:P262_FORM_ID, '':'')',
'    ) B',
'    ON (A.OBJECT_ID = B.object_id and A.FORM_ID = B.form_id)',
'    WHEN NOT MATCHED THEN',
'        insert (created_by, updated_by, object_id, form_id)',
'        values (:USER_ID, :USER_ID, B.object_id, B.form_id);',
'',
'    commit;',
'    -- row_count := SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P262_ROW_COUNT'', 1);',
'',
'exception',
'    when others then',
'        rollback;',
'        apex_util.set_session_state(''P262_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'end;',
''))
,p_attribute_02=>'P262_CATEGORY_FIRST_CODE,P262_FORM_ID,P262_OBJECT_SERIAL_NO,P262_IS_ENABLE,P262_OBJECT_ID,P262_DEPT_ID'
,p_attribute_03=>'P262_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187143372266116519)
,p_event_id=>wwv_flow_imp.id(187142353871116516)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>unistr('\66F4\65B0\5BA1\6838\72B6\6001\53CA\5BA1\6838\4EBA\2014\20142')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    row_count number(20) ;',
'begin',
'    /**',
'     * create by: wxx',
'     * create date: 2024/9/26 11:42',
'     * modify by: wxx',
'     * modify date: 2026/6/9',
unistr('     * describe: P262 \4FDD\5B58 \70B9\68C0\5BF9\8C61\65B0\589E/\4FEE\6539\FF0C\540C\6B65\6570\636E\5230\8BB0\5F55\8868\4E2D\3002'),
unistr('     * \4FEE\590D\4E86\5173\95ED\5BA1\6838\65F6\65E0\6CD5\66F4\65B0 CHECK_OBJECT \57FA\7840\5B57\6BB5\FF08\5982 IS_ENABLE\FF09\7684 Bug\3002'),
'     */',
'',
unistr('    -- \3010\4FEE\590D\70B9 1\3011\4E0D\518D\53D7 "<> 0" \7684\9650\5236\FF0C\4E0D\7BA1\5F00\6CA1\5F00\5BA1\6838\FF0C\57FA\7840\4FE1\606F\FF08\5305\542B IS_ENABLE\FF09\90FD\8981\66F4\65B0'),
'    UPDATE CHECK_OBJECT',
'    SET CATEGORY_FIRST_CODE = :P262_CATEGORY_FIRST_CODE,',
'        OBJECT_SERIAL_NO    = :P262_OBJECT_SERIAL_NO,',
'        IS_ENABLE           = :P262_IS_ENABLE,',
unistr('        -- \3010\4FEE\590D\70B9 2\3011\52A8\6001\8054\52A8\5BA1\6838\72B6\6001\FF1A\5982\679C\7C7B\578B\662F 0 \5219\4E3A 0\FF08\672A\5BA1\6838/\5173\95ED\FF09\FF0C\5426\5219\4E3A 1\FF08\9700\5BA1\6838\FF09'),
'        IS_REVIEW           = CASE WHEN :P262_REVIEW_TYPE_1 = 0 THEN 0 ELSE 1 END,',
'        UPDATED_BY          = :USER_ID,',
'        UPDATED_DATE        = sysdate',
'    WHERE OBJECT_ID = :P262_OBJECT_ID',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
'',
unistr('    -- CHECK_OBJECT_REVIEW\FF08\5C06\5F53\524D\5BA1\6838\72B6\6001\66F4\65B0\5E76\4FDD\5B58\FF09'),
unistr('    IF :P262_REVIEW_TYPE_1 = 0 THEN  --\5173\95ED\5BA1\6838,\5C06\5BA1\6838\4EBA\7F6E\7A7A'),
'        UPDATE CHECK_OBJECT_REVIEW',
'        SET',
'            REVIEW_TYPE = :P262_REVIEW_TYPE_1,',
'            REVIEW_USERS = NULL,',
'            IS_SAVE = 1,',
'            UPDATED_BY = :USER_ID,',
'            UPDATED_DATE = SYSDATE',
'        WHERE DEL_FLAG = 0',
'            AND TENANT_ID = :USERTENANT',
'            AND BASE_DEPT_ID = :BASE_DEPT_ID',
'            AND OBJECT_ID = :P262_OBJECT_ID',
'            AND REVIEW_TYPE = :P262_REVIEW_TYPE_1;',
'',
unistr('    ELSIF :P262_REVIEW_TYPE_1 = 1 THEN  --\5E38\89C4\5BA1\6838'),
'        UPDATE CHECK_OBJECT_REVIEW',
'        SET',
'            REVIEW_TYPE = :P262_REVIEW_TYPE_1,',
'            REVIEW_USERS = :P262_REVIEW_USERS,',
'            IS_SAVE = 1,',
'            UPDATED_BY = :USER_ID,',
'            UPDATED_DATE = SYSDATE',
'        WHERE DEL_FLAG = 0',
'            AND TENANT_ID = :USERTENANT',
'            AND BASE_DEPT_ID = :BASE_DEPT_ID',
'            AND OBJECT_ID = :P262_OBJECT_ID',
'            AND REVIEW_TYPE = :P262_REVIEW_TYPE_1;',
'',
unistr('    ELSIF :P262_REVIEW_TYPE_1 = 2 THEN  --\9AD8\7EA7\5BA1\6838'),
'        UPDATE CHECK_OBJECT_REVIEW',
'        SET',
'            IS_SAVE = 1,',
'            UPDATED_BY = :USER_ID,',
'            UPDATED_DATE = SYSDATE',
'        WHERE DEL_FLAG = 0',
'            AND TENANT_ID = :USERTENANT',
'            AND BASE_DEPT_ID = :BASE_DEPT_ID',
'            AND OBJECT_ID = :P262_OBJECT_ID',
'            AND REVIEW_TYPE = :P262_REVIEW_TYPE_1;',
'    END IF;',
'',
unistr('    -- CHECK_OBJECT_REVIEW\FF08\5C06\975E\5F53\524D\5BA1\6838\72B6\6001\5220\9664\5E76\4FDD\5B58\FF09'),
'    DELETE FROM CHECK_OBJECT_REVIEW',
'    WHERE  TENANT_ID = :USERTENANT',
'        AND BASE_DEPT_ID = :BASE_DEPT_ID',
'        AND OBJECT_ID = :P262_OBJECT_ID',
'        AND REVIEW_TYPE <> :P262_REVIEW_TYPE_1;',
'',
'    commit;',
'    apex_util.set_session_state(''P262_ROW_COUNT'', 1);',
'',
'exception',
'    when others then',
'        rollback;',
'        apex_util.set_session_state(''P262_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'end;'))
,p_attribute_02=>'P262_CATEGORY_FIRST_CODE,P262_OBJECT_SERIAL_NO,P262_IS_ENABLE,P262_OBJECT_ID,P262_REVIEW_TYPE_1,P262_REVIEW_USERS'
,p_attribute_03=>'P262_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187143836677116519)
,p_event_id=>wwv_flow_imp.id(187142353871116516)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P262_ROW_COUNT'') > 0) {',
unistr('   alert(''\4FDD\5B58\6210\529F'');'),
'    window.location.href="f?p=&APP_ID.:260:&APP_SESSION.:::::";',
'    return true;',
'} else {',
unistr('    alert(''\4FDD\5B58\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187147768673116521)
,p_name=>unistr('\5220\9664\6570\636E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(187140183337116506)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187148231328116522)
,p_event_id=>wwv_flow_imp.id(187147768673116521)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5220\9664\524D\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P262_OBJECT_DEVICE_ASSO_IDS''))) {',
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
 p_id=>wwv_flow_imp.id(187148792929116522)
,p_event_id=>wwv_flow_imp.id(187147768673116521)
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
'    where OBJECT_DEVICE_ASSO_ID in (select * from UTILS_PKG.SPLIT_STR(:P262_OBJECT_DEVICE_ASSO_IDS, '',''));',
'    row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P262_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P262_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P262_OBJECT_DEVICE_ASSO_IDS'
,p_attribute_03=>'P262_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187149228363116522)
,p_event_id=>wwv_flow_imp.id(187147768673116521)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5220\9664\540E\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P262_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187149781668116523)
,p_event_id=>wwv_flow_imp.id(187147768673116521)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3189369987394697481)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187150133871116523)
,p_name=>unistr('\5237\65B0\9875\9762')
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187150635481116523)
,p_event_id=>wwv_flow_imp.id(187150133871116523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3189369987394697481)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187151128818116523)
,p_event_id=>wwv_flow_imp.id(187150133871116523)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(674542401746672345)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187151642017116524)
,p_event_id=>wwv_flow_imp.id(187150133871116523)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\67E5\8BE2\5F53\524D\9AD8\7EA7\8BBE\7F6E\5206\7EC4\4E2A\6570')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P262_GROUP_COUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(OBJECT_REVIEW_ID)',
'from CHECK_OBJECT_REVIEW',
'where OBJECT_ID = :P262_OBJECT_ID',
'          AND DEL_FLAG = 0',
'          AND TENANT_ID = :USERTENANT',
'          AND BASE_DEPT_ID = :BASE_DEPT_ID',
'        AND REVIEW_TYPE = 2 ;'))
,p_attribute_07=>'P262_OBJECT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187152114817116525)
,p_event_id=>wwv_flow_imp.id(187150133871116523)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(187118167165116488)
,p_client_condition_type=>'GREATER_THAN_OR_EQUAL'
,p_client_condition_element=>'P262_GROUP_COUNT'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187152587120116525)
,p_name=>unistr('\70B9\51FB\4E0B\4E00\6B65')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(187111543250116467)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187155100633116527)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\5185\5BB9\662F\5426\4E3A\7A7A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P262_DEPT_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\90E8\95E8'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P262_CATEGORY_FIRST_CODE''))) {',
unistr('    alert(''\8BF7\9009\62E9\5927\7C7B\540D\79F0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P262_FORM_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\70B9\68C0\8868\5355'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187153029791116526)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
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
'    if :P262_OBJECT_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_object_serial_no from dual;',
'    else',
'        v_object_serial_no := :P262_OBJECT_SERIAL_NO;',
'    end if;',
'    if :P262_OBJECT_ID is null then',
'',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_OBJECT',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and OBJECT_SERIAL_NO = :P262_OBJECT_SERIAL_NO',
'              and DEL_FLAG = 0;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P262_MESSAGE'', ''\5173\8054\7F16\53F7\91CD\590D'');'),
'            end if;',
'        end if;',
'    else',
'',
'        select count(1)',
'        into v_count',
'        from CHECK_OBJECT',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and OBJECT_SERIAL_NO = :P262_OBJECT_SERIAL_NO',
'          and DEL_FLAG = 0',
'          and OBJECT_ID != :P262_OBJECT_ID;',
'        if v_count > 0 then',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P262_MESSAGE'', ''\5173\8054\7F16\53F7\91CD\590D'');'),
'        end if;',
'',
'    end if;',
'',
'    apex_util.set_session_state(''P262_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P262_OBJECT_SERIAL_NO'', v_object_serial_no);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P262_ROW_COUNT'', 0);',
unistr('        apex_util.set_session_state(''P262_MESSAGE'', ''\6570\636E\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                   :APP_NAME ,:APP_ID ,:APP_CODE);',
'end ;',
''))
,p_attribute_02=>'P262_OBJECT_ID,P262_OBJECT_SERIAL_NO'
,p_attribute_03=>'P262_ROW_COUNT,P262_MESSAGE,P262_OBJECT_SERIAL_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187153524589116526)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P262_ROW_COUNT'') > 0) {',
'',
'    return true;',
'} else {',
'    alert($v(''P262_MESSAGE''));',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187154099086116526)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65B0\589E\5BF9\8C61')
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
unistr('     * describe:P262 \4E0B\4E00\6B65'),
'     */',
'begin',
unistr('-- \65B0\589E\5BF9\8C61\5230\5BF9\8C61\8868\4E2D'),
'    insert into CHECK_OBJECT(created_by, updated_by, tenant_id,BASE_DEPT_ID, ext_org_id, category_first_code,OBJECT_SERIAL_NO,IS_ENABLE,DEPT_ID)',
'    values (:USER_ID, :USER_ID, :USERTENANT,:BASE_DEPT_ID, :P262_DEPT_ID, :P262_CATEGORY_FIRST_CODE,:P262_OBJECT_SERIAL_NO,:P262_IS_ENABLE,:P262_DEPT_ID)',
'    returning OBJECT_ID into v_object_id;',
'',
unistr('--     --         \65B0\589E\5BA1\6838\6570\636E\5230 \5BA1\6838\8868\4E2D'),
'--  insert into CHECK_OBJECT_REVIEW(CREATED_BY, UPDATED_BY, OBJECT_ID, REVIEW_TYPE,REVIEW_USERS,REVIEW_GROUP,AUDIT_METHOD,BASE_DEPT_ID,TENANT_ID,IS_SAVE)',
'--             values (:USER_ID, :USER_ID, v_object_id, :P262_REVIEW_TYPE_1,nvl(:P262_REVIEW_USERS,0),:P262_REVIEW_GROUP,nvl(:P262_AUDIT_METHOD,''CounterSign''),:BASE_DEPT_ID,:USERTENANT,0);',
'',
'    for c in (select data_val from JA_UTILS_PKG.SPLIT_STR(:P262_FORM_ID, '':''))',
unistr('        loop   --\65B0\589E\5BF9\8C61 \5230 \70B9\68C0\5BF9\8C61\4E0E\8868\5355\4E2D\95F4\8868'),
'            insert into CHECK_OBJECT_FORM_ASSO(created_by, updated_by, object_id, form_id)',
'            values (:USER_ID, :USER_ID, v_object_id, c.data_val);',
'        end loop;',
'',
unistr('--    WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || ''\6253\5370\4E0B\4E00\6B65\5BA1\6838\4FE1\606F\FF1A'', ''info'', V_ERR_MSG || ''v_object_id:'' || v_object_id || '',P262_REVIEW_TYPE_1:'' || :P262_REVIEW_TYPE_1 || '',REVIEW_USERS:'' || :P262_REVIEW_USERS'),
'--             ||  '',REVIEW_GROUP:'' || :P262_REVIEW_GROUP ||  '',AUDIT_METHOD:'' || :P262_AUDIT_METHOD, :USER_ID, :USERTENANT,',
'--                     :APP_NAME , :APP_ID, :APP_CODE);',
'',
'',
'    apex_util.set_session_state(''P262_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P262_OBJECT_ID'', v_object_id);',
'    apex_util.set_session_state(''P262_IS_SHOW'', v_object_id);',
'',
'exception',
'    when others then',
'        apex_util.set_session_state(''P262_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID, :APP_CODE);',
'end;',
'',
''))
,p_attribute_02=>'P262_OBJECT_ID,P262_IS_SHOW,P262_DEPT_ID,P262_CATEGORY_FIRST_CODE,P262_FORM_ID,P262_OBJECT_SERIAL_NO,P262_IS_ENABLE'
,p_attribute_03=>'P262_ROW_COUNT,P262_IS_SHOW,P262_FORM_ID,P262_OBJECT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187154534654116526)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P262_ROW_COUNT'') == 0) {',
unistr('    alert(''\6570\636E\9519\8BEF'');'),
'    return false;',
'} else {',
'    $(''#check_object_div'').show();',
'    apex.event.trigger(this.triggeringElement, "apexwindowresized");',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187155513116116527)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P262_OBJECT_SERIAL_NO'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187156014593116527)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>unistr('\663E\793A\70B9\68C0\5BF9\8C61\533A\57DF')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3189220875565088924)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187156544334116527)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>unistr('\663E\793A\4FDD\5B58\6309\94AE')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(187111130708116467)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187157033733116527)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>unistr('\663E\793A\5BA1\6838\533A\57DF')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686026682483995625)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187157511094116528)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>unistr('\663E\793A\5BA1\6838\7C7B\578B')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P262_REVIEW_TYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187158027644116528)
,p_event_id=>wwv_flow_imp.id(187152587120116525)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9690\85CF\4E0B\4E00\6B65\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(187111543250116467)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187158466187116528)
,p_name=>unistr('\884C\9009\4E2D-\8BBE\5907')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3189369987394697481)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187158915508116528)
,p_event_id=>wwv_flow_imp.id(187158466187116528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9009\4E2D\8BBE\5907\5BF9\8C61ID')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'map.set(''P262_OBJECT_DEVICE_ASSO_IDS'',''OBJECT_DEVICE_ASSO_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187159401875116528)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187159865131116529)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\5BA1\6838\4EBA')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686026735064995626)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P262_REVIEW_TYPE'
,p_client_condition_expression=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187160315645116529)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\9AD8\7EA7\5BA1\6838')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(674542401746672345)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187160822993116529)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\67E5\627E\5BF9\5E94\5BA1\6838\7C7B\578B')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P262_REVIEW_TYPE_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(REVIEW_TYPE, 0) AS REVIEW_TYPE',
'-- , NVL( REVIEW_USERS, null) AS REVIEW_USERS',
'FROM CHECK_OBJECT_REVIEW',
'WHERE DEL_FLAG = 0',
'    and TENANT_ID = :USERTENANT',
'    and BASE_DEPT_ID = :BASE_DEPT_ID',
'    and OBJECT_ID = :P262_OBJECT_ID',
unistr('    -- and IS_SAVE = 1 --\786E\4FDD\5DF2\4FDD\5B58'),
'and ROWNUM = 1',
unistr('order by UPDATED_DATE desc  --\66F4\65B0\65F6\95F4\5012\53D9\53D6\6700\65B0\4E00\6761'),
';'))
,p_attribute_07=>'P262_OBJECT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187161379994116529)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\975E\65B0\589E\7981\7528\90E8\95E8')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''.apex-item-group--popup-lov:eq(0)'').addClass(''apex_disabled'');'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P262_OBJECT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187161900641116530)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\4E0B\4E00\6B65\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(187111543250116467)
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P262_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187162317242116530)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\4FDD\5B58\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(187111130708116467)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P262_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187162820311116530)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\5BA1\6838\7C7B\578B')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P262_REVIEW_TYPE'
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P262_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187163396015116530)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\5BA1\6838\533A\57DF')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686026682483995625)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P262_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187163853875116530)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\5173\8054\8BBE\5907')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3189220875565088924)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P262_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187165323617116531)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\67E5\8BE2\5F53\524D\9AD8\7EA7\8BBE\7F6E\5206\7EC4\4E2A\6570')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P262_GROUP_COUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(OBJECT_REVIEW_ID)',
'from CHECK_OBJECT_REVIEW',
'where OBJECT_ID = :P262_OBJECT_ID',
'          AND DEL_FLAG = 0',
'          AND TENANT_ID = :USERTENANT',
'          AND BASE_DEPT_ID = :BASE_DEPT_ID',
'        AND REVIEW_TYPE = 2 ;'))
,p_attribute_07=>'P262_OBJECT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187164308896116531)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(187118167165116488)
,p_client_condition_type=>'GREATER_THAN_OR_EQUAL'
,p_client_condition_element=>'P262_GROUP_COUNT'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187164806996116531)
,p_event_id=>wwv_flow_imp.id(187159401875116528)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(187118167165116488)
,p_client_condition_type=>'LESS_THAN'
,p_client_condition_element=>'P262_GROUP_COUNT'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187165715127116531)
,p_name=>unistr('\66F4\6539\8868\5355')
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P262_FORM_ID'
,p_condition_element=>'P262_OBJECT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187166302261116532)
,p_event_id=>wwv_flow_imp.id(187165715127116531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// alert(''0-1 '' + raw_form_ids)',
'var now_length = $v(''P262_FORM_ID'') ? $v(''P262_FORM_ID'').split('':'').length : 0;',
'var old_length = raw_form_ids ? raw_form_ids.split('':'').length : 0;',
'',
'',
'if (utils.checkNull($(''P262_FORM_ID'')) || (now_length - old_length <= 0)) {',
'    // alert(''1-1'')',
'    var arr = raw_form_ids.split('':'');',
'    $s(''P262_CONFIG_FORM_ID'', arr[arr.length - 1]);',
'    $s(''P262_DELETE_FORM'', ''TRUE'');',
'    // alert(''1-2'')',
'} else {',
'    // alert(''2-1'')',
'    var config_form_ids = $v(''P262_FORM_ID'').split('':'');',
'    $s(''P262_CONFIG_FORM_ID'', config_form_ids[config_form_ids.length - 1]);',
'    $s(''P262_DELETE_FORM'', ''FALSE'');',
'    // raw_form_names = apex.item(''P262_FORM_ID'').displayValueFor(raw_form_ids.split('':''));',
'    // alert(''2-2'' + '':'' + ''raw_form_ids:'' + raw_form_ids)',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187166799688116532)
,p_event_id=>wwv_flow_imp.id(187165715127116531)
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
'JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''debug'', ''OBJECT_ID:''||:P262_OBJECT_ID||chr(13)||''OBJECT_FORM_ASSO_ID:''||:P262_CONFIG_FORM_ID, :USER_ID, :USERTENANT,',
'                     :APP_NAME || '':'' || :APP_ID);',
'    delete from CHECK_OBJECT_FORM_ASSO  where OBJECT_ID=:P262_OBJECT_ID and FORM_ID=:P262_CONFIG_FORM_ID;',
'    v_row_count:=SQL%ROWCOUNT ;',
'    apex_util.set_session_state(''P262_ROW_COUNT'',v_row_count);',
'    commit;',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P262_OBJECT_ID,P262_CONFIG_FORM_ID'
,p_attribute_03=>'P262_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P262_DELETE_FORM'
,p_client_condition_expression=>'TRUE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187167224431116532)
,p_event_id=>wwv_flow_imp.id(187165715127116531)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\963B\65AD\65B0\589E\903B\8F91')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \963B\65AD\65B0\589E\903B\8F91'),
'// alert($v(''P262_DELETE_FORM''));',
'if ($v(''P262_DELETE_FORM'') == ''TRUE'') {',
'    var arr_id = $v(''P262_FORM_ID'').split('':'');',
'    var arr_name = apex.item(''P262_FORM_ID'').displayValueFor(arr_id);',
'    raw_form_ids = arr_id.join('':'');',
'    raw_form_names = arr_name;',
'    // alert(''raw_form_names:'' + raw_form_names + '' raw_form_ids:'' + raw_form_ids);',
'    $s(''P262_FORM_ID'', raw_form_ids, raw_form_names, true);',
'    return false;',
'} else {',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187167707986116532)
,p_event_id=>wwv_flow_imp.id(187165715127116531)
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
'                             WHERE o.DEPT_ID = :P262_DEPT_ID',
'                               AND o.DEL_FLAG = 0 and o.OBJECT_ID!=:P262_OBJECT_ID',
'                         )',
'                         union all',
'                         select to_number(:P262_CONFIG_FORM_ID) FORM_ID, to_number(:P262_OBJECT_ID) OBJECT_ID',
'                         from dual) s',
'                            inner JOIN CHECK_OBJECT_DEVICE_ASSO o ON o.OBJECT_ID = s.OBJECT_ID',
'                   WHERE s.OBJECT_ID IN (',
'                       SELECT o.OBJECT_ID',
'                       FROM CHECK_OBJECT o',
'                       WHERE o.DEPT_ID = :P262_DEPT_ID',
'                         AND o.DEL_FLAG = 0',
'                   ))',
'             GROUP BY DEVICE_ID, FORM_ID)',
'    where form_count > 1',
'      and rownum = 1;',
'    apex_util.set_session_state(''P262_ROW_COUNT'', v_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P262_ROW_COUNT'', -1);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P262_DEPT_ID,P262_OBJECT_ID,P262_CONFIG_FORM_ID'
,p_attribute_03=>'P262_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187168295869116533)
,p_event_id=>wwv_flow_imp.id(187165715127116531)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P262_ROW_COUNT'') == 0) {',
'',
'    var arr_id = $v(''P262_FORM_ID'').split('':'');',
'    var arr_name = apex.item(''P262_FORM_ID'').displayValueFor(arr_id);',
'    raw_form_ids = arr_id.join('':'');',
'    raw_form_names = arr_name;',
'    $s(''P262_FORM_ID'', raw_form_ids, raw_form_names, true);',
'    return true;',
'} else if ($v(''P262_ROW_COUNT'') > 0) {',
unistr('    if (confirm(''\5F53\524D\9009\62E9\7684\8868\5355\4E0E\4E0B\65B9\5173\8054\8BBE\5907\5B58\5728\5DF2\7ED1\5B9A\FF0C\82E5\7EE7\7EED\6DFB\52A0\5219\4F1A\6E05\9664\4E0B\65B9\5173\8054\6B64\8868\5355\7684\8BBE\5907\FF0C\662F\5426\7EE7\7EED\FF1F'')) {'),
unistr('         // \786E\8BA4\65B0\589E\8868\5355'),
'        var arr_id = $v(''P262_FORM_ID'').split('':'');',
'        var arr_name = apex.item(''P262_FORM_ID'').displayValueFor(arr_id);',
'        raw_form_ids = arr_id.join('':'');',
'        raw_form_names = arr_name;',
'        $s(''P262_FORM_ID'', raw_form_ids, raw_form_names, true);',
'        return true;',
'    } else {',
unistr('        // \53D6\6D88\65B0\8868\5355'),
'        // var arr_id = $v(''P262_FORM_ID'').split('':'');',
'        // var arr_name = apex.item(''P262_FORM_ID'').displayValueFor(arr_id);',
'        // raw_form_ids = arr_id.join('':'');',
'        // raw_form_names = arr_name;',
'        // alert(''raw_form_names:'' + raw_form_names + '' raw_form_ids:'' + raw_form_ids);',
'        $s(''P262_FORM_ID'', raw_form_ids, raw_form_names, true);',
'        return false;',
'    }',
'',
'} else {',
unistr('    alert(''\6570\636E\9519\8BEF\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187168709794116533)
,p_event_id=>wwv_flow_imp.id(187165715127116531)
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
'    where OBJECT_ID = :P262_OBJECT_ID',
'      and DEVICE_ID in (',
'        SELECT o.DEVICE_ID',
'',
'        FROM CHECK_OBJECT_FORM_ASSO s',
'                 inner JOIN CHECK_OBJECT_DEVICE_ASSO o ON o.OBJECT_ID = s.OBJECT_ID',
'                 inner join CODE_DEVICE c on c.DEVICE_ID = o.DEVICE_ID',
'        WHERE s.OBJECT_ID IN (',
'            SELECT o.OBJECT_ID',
'            FROM CHECK_OBJECT o',
'            WHERE o.OBJECT_ID != :P262_OBJECT_ID',
'              AND o.DEL_FLAG = 0',
'              and o.DEPT_ID = :P262_DEPT_ID',
'        )',
'          and s.FORM_ID = :P262_CONFIG_FORM_ID',
'',
'        INTERSECT',
'',
'        SELECT o.DEVICE_ID',
'',
'        FROM CHECK_OBJECT_DEVICE_ASSO o',
'                 inner join CODE_DEVICE c on c.DEVICE_ID = o.DEVICE_ID',
'        where o.OBJECT_ID = :P262_OBJECT_ID',
'    );',
'    insert into CHECK_OBJECT_FORM_ASSO(created_by, creation_date, object_id, form_id)',
'    values (:USER_ID, sysdate, :P262_OBJECT_ID, :P262_CONFIG_FORM_ID);',
'    apex_util.set_session_state(''P262_ROW_COUNT'', v_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P262_ROW_COUNT'', -1);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;',
'',
'',
''))
,p_attribute_02=>'P262_OBJECT_ID,P262_DEPT_ID,P262_CONFIG_FORM_ID'
,p_attribute_03=>'P262_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187169277018116533)
,p_event_id=>wwv_flow_imp.id(187165715127116531)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P262_ROW_COUNT'') > 0) {',
'    return true;',
'} else {',
unistr('    alert(''\6E05\9664\8BBE\5907\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187169707867116533)
,p_event_id=>wwv_flow_imp.id(187165715127116531)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3189369987394697481)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187170178288116534)
,p_name=>unistr('\6279\91CF')
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(187139710907116506)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187170695824116534)
,p_event_id=>wwv_flow_imp.id(187170178288116534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P262_OBJECT_DEVICE_ASSO_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\914D\7F6E\7684\6570\636E'');'),
'    return false;',
'} else {',
'    return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187171111338116534)
,p_event_id=>wwv_flow_imp.id(187170178288116534)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'apex_util.set_session_state(''P277_OBJECT_ID'', :P262_OBJECT_ID);',
'apex_util.set_session_state(''P277_OBJECT_DEVICE_ASSO_IDS'', :P262_OBJECT_DEVICE_ASSO_IDS);',
'end;'))
,p_attribute_02=>'P262_OBJECT_ID,P262_OBJECT_DEVICE_ASSO_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187171680584116534)
,p_event_id=>wwv_flow_imp.id(187170178288116534)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href="f?p=&APP_ID.:277:&APP_SESSION.::ClearCache:::";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187172086836116534)
,p_name=>unistr('\65B0\589E\8BBE\5907')
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(187138923932116506)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187172541158116535)
,p_event_id=>wwv_flow_imp.id(187172086836116534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update CHECK_OBJECT set DEPT_ID=:P262_DEPT_ID, UPDATED_BY=:USER_ID, UPDATED_DATE=sysdate where OBJECT_ID = :P262_OBJECT_ID;'
,p_attribute_02=>'P262_DEPT_ID,P262_OBJECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187173097557116535)
,p_event_id=>wwv_flow_imp.id(187172086836116534)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#insert_btn_hide'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187173503370116535)
,p_name=>unistr('\9ED8\8BA4\4E0D\5BA1\6838\9690\85CF\5BA1\6838\4EBA')
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P262_IS_REVIEW'
,p_condition_element=>'P262_IS_REVIEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187173951723116535)
,p_event_id=>wwv_flow_imp.id(187173503370116535)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686026735064995626)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187174453321116535)
,p_event_id=>wwv_flow_imp.id(187173503370116535)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686026735064995626)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187174813937116536)
,p_name=>unistr('\6279\91CF\5220\9664')
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(187119003055116488)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187175354792116536)
,p_event_id=>wwv_flow_imp.id(187174813937116536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P262_OBJECT_REVIEW_IDS_2''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'}',
'',
unistr('if (confirm(''\662F\5426\786E\8BA4\5220\9664?'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187175863177116536)
,p_event_id=>wwv_flow_imp.id(187174813937116536)
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
unistr('     * DESCRIPTION:P262 \5220\9664\5BA1\6838\6570\636E'),
'     */',
'BEGIN',
'    UPDATE CHECK_OBJECT_REVIEW',
'    SET UPDATED_BY   =:USER_ID,',
'        UPDATED_DATE =SYSDATE,',
'        DEL_FLAG = 1',
'    WHERE OBJECT_REVIEW_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P262_OBJECT_REVIEW_IDS_2, '',''))',
'      AND DEL_FLAG = 0;',
'    APEX_UTIL.SET_SESSION_STATE(''P262_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P262_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5220\9664\70B9\68C0\5BF9\8C61\5BA1\6838-\7F16\8F91'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'END;'))
,p_attribute_02=>'P262_OBJECT_REVIEW_IDS_2'
,p_attribute_03=>'P262_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187176375014116536)
,p_event_id=>wwv_flow_imp.id(187174813937116536)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P262_COUNT'') < 0) {',
unistr('    alert(''\5220\9664\5931\8D25'');'),
'    return false;',
'} else{',
unistr('     alert(''\5220\9664\6210\529F'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187177310756116537)
,p_event_id=>wwv_flow_imp.id(187174813937116536)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\67E5\8BE2\5F53\524D\9AD8\7EA7\8BBE\7F6E\5206\7EC4\4E2A\6570')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P262_GROUP_COUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(OBJECT_REVIEW_ID)',
'from CHECK_OBJECT_REVIEW',
'where OBJECT_ID = :P262_OBJECT_ID',
'          AND DEL_FLAG = 0',
'          AND TENANT_ID = :USERTENANT',
'          AND BASE_DEPT_ID = :BASE_DEPT_ID',
'        AND REVIEW_TYPE = 2 ;'))
,p_attribute_07=>'P262_OBJECT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187177868811116537)
,p_event_id=>wwv_flow_imp.id(187174813937116536)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(187118167165116488)
,p_client_condition_type=>'LESS_THAN'
,p_client_condition_element=>'P262_GROUP_COUNT'
,p_client_condition_expression=>'5'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187176882670116536)
,p_event_id=>wwv_flow_imp.id(187174813937116536)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(674542401746672345)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187178291948116537)
,p_name=>unistr('\5BA1\6838-\5E38\89C4')
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P262_REVIEW_TYPE_1'
,p_condition_element=>'P262_REVIEW_TYPE_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187178730460116537)
,p_event_id=>wwv_flow_imp.id(187178291948116537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P262_REVIEW_USERS'
,p_attribute_01=>'N'
,p_build_option_id=>wwv_flow_imp.id(2146244333585926365)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187179279623116537)
,p_event_id=>wwv_flow_imp.id(187178291948116537)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\5BA1\6838\4EBA')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686026735064995626)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(185948702396455872)
,p_event_id=>wwv_flow_imp.id(187178291948116537)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P262_REVIEW_USERS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select REVIEW_USERS',
'from CHECK_OBJECT_REVIEW',
'where TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID = :BASE_DEPT_ID',
'  and OBJECT_ID = :P262_OBJECT_ID',
'  and DEL_FLAG = 0',
'  and REVIEW_TYPE = 1;'))
,p_attribute_07=>'P262_OBJECT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187179713697116538)
,p_event_id=>wwv_flow_imp.id(187178291948116537)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\663E\793A\5BA1\6838\4EBA')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(686026735064995626)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187180146151116538)
,p_name=>unistr('\5BA1\6838-\9AD8\7EA7\5BA1\6838')
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P262_REVIEW_TYPE_1'
,p_condition_element=>'P262_REVIEW_TYPE_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187180628393116538)
,p_event_id=>wwv_flow_imp.id(187180146151116538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\663E\793A\9AD8\7EA7\5BA1\6838')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(674542401746672345)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187181170318116538)
,p_event_id=>wwv_flow_imp.id(187180146151116538)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\9AD8\7EA7\5BA1\6838')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(674542401746672345)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187181556574116538)
,p_name=>unistr('\53D6\6D88\7684\540C\65F6\903B\8F91\5220\9664\5BF9\5E94\5BF9\8C61\6570\636E')
,p_event_sequence=>170
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(187110349646116466)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apextap'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187182016832116539)
,p_event_id=>wwv_flow_imp.id(187181556574116538)
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
unistr('        * describe:P262 \70B9\68C0\5BF9\8C61-\53D6\6D88'),
unistr('      \6D89\53CA\7684\8868CHECK_OBJECT\3001CHECK_OBJECT_DEVICE_ASSO\3001CHECK_OBJECT_REVIEW\3001'),
'        */',
'begin',
unistr('--     \5220\9664CHECK_OBJECT_DEVICE_ASSO'),
'    -- delete CHECK_OBJECT_DEVICE_ASSO',
'    -- where OBJECT_DEVICE_ASSO_ID in (select * from UTILS_PKG.SPLIT_STR(:P262_OBJECT_DEVICE_ASSO_IDS, '',''));',
'    ',
unistr('-- \5220\9664\672A\4FDD\5B58\7684CHECK_OBJECT_REVIEW'),
'UPDATE CHECK_OBJECT_REVIEW',
'    SET UPDATED_BY =:USER_ID,',
'        UPDATED_DATE=SYSDATE,',
'        DEL_FLAG=1',
'    WHERE DEL_FLAG = 0',
'        and TENANT_ID = :USERTENANT',
'        and BASE_DEPT_ID = :BASE_DEPT_ID',
'       and  OBJECT_ID = :P262_OBJECT_ID',
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
'--        and  OBJECT_ID = :P262_OBJECT_ID;',
'',
'row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P262_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P262_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P262_OBJECT_ID'
,p_attribute_03=>'P262_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187182532668116539)
,p_event_id=>wwv_flow_imp.id(187181556574116538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href="f?p=&APP_ID.:260:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187183001313116539)
,p_name=>unistr('\6267\884C\7F16\8F91')
,p_event_sequence=>180
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(187118591591116488)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P262_OBJECT_REVIEW_IDS_2'')) && $v(''P262_OBJECT_REVIEW_IDS_2'').split('','').length == 1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187183405587116540)
,p_event_id=>wwv_flow_imp.id(187183001313116539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187183937209116540)
,p_event_id=>wwv_flow_imp.id(187183001313116539)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P262_OBJECT_REVIEW_IDS_2''))) {',
unistr('    alert(''\8BF7\9009\62E9\4FEE\6539\7684\6570\636E'');'),
'    return false;',
'}',
'',
'$v(''P262_OBJECT_REVIEW_IDS_2'').split('','');',
'',
'if ($v(''P262_OBJECT_REVIEW_IDS_2'').split('','').length > 1) {',
unistr('    alert(''\53EA\80FD\4FEE\6539\5355\6761\6570\636E'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(187184332735116540)
,p_name=>unistr('\884C\9009\4E2D-\5BA1\6838')
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(674542401746672345)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(187184838127116540)
,p_event_id=>wwv_flow_imp.id(187184332735116540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9009\4E2D\9AD8\7EA7\5BA1\6838ID')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'map.set(''P262_OBJECT_REVIEW_IDS_2'',''OBJECT_REVIEW_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(187140634768116506)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3189369987394697481)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\70B9\68C0\5BF9\8C61\4EA4\4E92\5F0F\7F51\683C - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>127537731089904067
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(187119800306116488)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(674542401746672345)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\9AD8\7EA7\5BA1\6838 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>127516896627904049
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(187130577124116499)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3189220815410088923)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \70B9\68C0\5BF9\8C61')
,p_internal_uid=>127527673445904060
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(187123589785116493)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(686026735064995626)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \70B9\68C0\5BF9\8C61-\7F16\8F91')
,p_internal_uid=>127520686106904054
);
wwv_flow_imp.component_end;
end;
/
