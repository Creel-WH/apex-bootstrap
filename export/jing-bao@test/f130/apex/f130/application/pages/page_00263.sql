prompt --application/pages/page_00263
begin
--   Manifest
--     PAGE: 00263
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
 p_id=>263
,p_name=>unistr('\70B9\68C0\5BF9\8C61\7F16\8F91')
,p_alias=>unistr('\70B9\68C0\5BF9\8C61\7F16\8F91')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\70B9\68C0\5BF9\8C61\7F16\8F91')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'-- #APP_FILES#jquery.qrcode.min.js',
'#APP_FILES#qrcode_new.min.js',
'#APP_FILES#bootstrap.bundle.min.js',
'#APP_FILES#jszip.min.js',
'#APP_FILES#html2canvas.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var flag=true;',
'var isAll=true;',
'',
'var device_ids='''';',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'1300'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2686086186389717217)
,p_plug_name=>unistr('\8BF7\9009\62E9\70B9\68C0\5BF9\8C61')
,p_region_name=>'area_tree_id'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with area_v as (',
'    select c.AREA_ID, c.FAB_ID',
'    from code_device c',
'    where c.tenant_id = :USERTENANT',
'      and c.BASE_DEPT_ID =:BASE_DEPT_ID',
'      and c.del_flag = 0',
'      and c.CATEGORY_FIRST_CODE = :P263_CATEGORY_FIRST_CODE',
')',
unistr('select a.id    as ID,          --\6570\636Eid'),
unistr('       a.PARENT_ID,            --\7236id'),
unistr('       a.NAME  as TITLE,       ----\663E\793A\7684\6807\9898'),
unistr('       a.id    as VALUE,       ----\6807\9898\5BF9\5E94\7684\503C'),
'       case',
'           when a.PARENT_ID is null then',
'               0',
'           else',
'               1',
unistr('           end as TYPE,        --\4F7F\7528\9009\62E9\529F\80FD\65F6\9700\8981 - \662F\914D\7F6E json \4E2D typeSettings \7684\6620\5C04\503C'),
unistr('       0          SELECTED,    --\8BBE\7F6E\52A0\8F7D\65F6\9009\4E2D 0(null): \4E0D\9009\4E2D 1:\9009\4E2D'),
unistr('       NULL    as EXPANDED,    --\662F\5426\5C55\5F00\672A\9009\4E2D\9879 0(null): \4E0D\5C55\5F00 1:\5C55\5F00'),
unistr('       1       as CHECKBOX,    --\662F\5426\542F\7528\590D\9009\6846 0(null): \7981\7528 1:\542F\7528'),
unistr('       0       as UNSELECTABLE --\8BBE\7F6E\4E0D\53EF\9009\4E2D 0(null): \53EF\4EE5 1: \4E0D\53EF\4EE5'),
'from (',
'         select a.AREA_ID || ''_area'' id,',
'                a.NAME,',
'                FAB_ID || ''_fab''     parent_id',
'         from FND_AREAS a',
'         where a.TYPE = 1',
'           and a.DEL_FLAG = 0',
'           and a.TENANT_ID = :USERTENANT',
'           and a.BASE_DEPT_ID =:BASE_DEPT_ID',
'           and exists(',
'                 select 1',
'                 from area_v',
'                 where area_v.AREA_ID = a.AREA_ID',
'                 group by area_v.AREA_ID',
'             )',
'',
'',
'         union all',
'',
'         select f.FAB_ID || ''_fab'' id,',
'                f.NAME,',
'                null               parent_id',
'         from FND_FAB f',
'         where f.DEL_FLAG = 0',
'           and f.TENANT_ID = :USERTENANT',
'           and f.BASE_DEPT_ID =:BASE_DEPT_ID',
'           and exists(',
'                 select area_v.FAB_ID',
'                 from area_v',
'                 where area_v.FAB_ID = f.FAB_ID',
'                 group by area_v.FAB_ID',
'             )',
'     ) a',
'start with a.PARENT_ID is null',
'connect by prior a.id = a.PARENT_ID',
'order by a.NAME;'))
,p_plug_source_type=>'PLUGIN_APEX.FANCYTREE.SELECT'
,p_ajax_items_to_submit=>'P263_CATEGORY_FIRST_CODE,P263_OBJECT_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '  "animationDuration": 200,',
    '  "autoExpand2Level": 0,',
    '  "checkbox": "fa-square-o",',
    '  "checkboxSelected": "fa-check-square",',
    '  "checkboxUnknown": "fa-square",',
    '  "enableCheckBox": true,',
    '  "forceSelectionSet": true,',
    '  "forceRefreshEventOnStart": false,',
    '  "markNodesWithChildren": false,',
    '  "markerModifier": "fam-plus fam-is-info",',
    '  "openParentOfActiveNode": true,',
    '  "openParentOfSelected": true,',
    '  "refresh": 0,',
    '  "search": {',
    '    "autoExpand": true,',
    '    "leavesOnly": false,',
    '    "highlight": true,',
    '    "counter": true,',
    '    "hideUnmatched": true,',
    '    "debounce": {',
    '      "enabled": true,',
    '      "time": 400',
    '    }',
    '  },',
    '  "selectMode": 3,',
    '  "setActiveNode": true,',
    '  "setItemsOnInit": false,',
    '  "typeSettings": [',
    '    {',
    '      "id": 1,',
    '      "storeItem": "P263_AREA_IDS",',
    '      "icon": "fa-folder-o"',
    '    }',
    '  ]',
    '}')),
  'attribute_02', 'P263_AREA_NAME',
  'attribute_03', 'Error occured! Please check browser console for more information.',
  'attribute_05', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2686086298003717218)
,p_plug_name=>unistr('\70B9\68C0\5BF9\8C61\4EA4\4E92\5F0F\7F51\683C')
,p_region_name=>'my_test'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P263_AREA_IDS is not null then',
'',
'return q''~',
'with area_v as (',
'    select a.area_id, a.name, a.del_flag',
'    from fnd_areas a',
'    where tenant_id = :usertenant',
'    and BASE_DEPT_ID =:BASE_DEPT_ID',
')',
'select c.device_id,',
'       c.tenant_id,',
'       c.device_code,',
'       c.device_name,',
'       decode(f.del_flag, 1, '''', f.name)        fab_name,',
'       decode(a1.del_flag, 1, '''', a1.name)      area_name,',
'       decode(a2.del_flag, 1, '''', a2.name)      line_name,',
'       m.form_names,',
unistr('       decode(m.form_names, null, ''\672A\5173\8054'', ''\5DF2\5173\8054'') association_state'),
'from code_device c',
'         left join fnd_fab f on c.fab_id = f.fab_id and c.tenant_id = f.tenant_id and c.BASE_DEPT_ID= f.BASE_DEPT_ID',
'         left join area_v a1 on a1.area_id = c.area_id',
'         left join area_v a2 on a2.area_id = c.line_id',
'         left join (select listagg(f.NAME, '','') form_names,',
'                           o.DEVICE_ID',
'                    from CHECK_OBJECT_FORM_ASSO s',
'                             inner join CHECK_FORM f on s.FORM_ID = f.FORM_ID and f.DEL_FLAG = 0',
'                             inner join CHECK_OBJECT_DEVICE_ASSO o on o.OBJECT_ID = s.OBJECT_ID',
'                    where f.DEL_FLAG = 0',
'                      and s.OBJECT_ID in (',
'                        select o.OBJECT_ID',
'                        from CHECK_OBJECT o',
'                        where o.DEPT_ID = :P263_DEPT_ID',
'                          and o.DEL_FLAG = 0',
'                    )',
'                    group by o.DEVICE_ID) m on m.DEVICE_ID = c.DEVICE_ID',
'where c.tenant_id = :usertenant ',
'  and c.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and c.AREA_ID in (select regexp_replace(data_val, ''_area'', '''') from UTILS_PKG.SPLIT_STR(:P263_AREA_IDS, '':''))',
'  and c.CATEGORY_FIRST_CODE = :P263_CATEGORY_FIRST_CODE',
'  and c.del_flag = 0;',
'~'';',
'',
'else',
'return q''~ ',
'with area_v as (',
'    select a.area_id, a.name, a.del_flag',
'    from fnd_areas a',
'    where tenant_id = :usertenant',
'    and BASE_DEPT_ID =:BASE_DEPT_ID',
')',
'select c.device_id,',
'       c.tenant_id,',
'       c.device_code,',
'       c.device_name,',
'       decode(f.del_flag, 1, '''', f.name)        fab_name,',
'       decode(a1.del_flag, 1, '''', a1.name)      area_name,',
'       decode(a2.del_flag, 1, '''', a2.name)      line_name,',
'       m.form_names,',
unistr('       decode(m.form_names, null, ''\672A\5173\8054'', ''\5DF2\5173\8054'') association_state'),
'from code_device c',
'         left join fnd_fab f on c.fab_id = f.fab_id and c.tenant_id = f.tenant_id and c.BASE_DEPT_ID =f.BASE_DEPT_ID',
'         left join area_v a1 on a1.area_id = c.area_id',
'         left join area_v a2 on a2.area_id = c.line_id',
'         left join (select listagg(f.NAME, '','') form_names,',
'                           o.DEVICE_ID',
'                    from CHECK_OBJECT_FORM_ASSO s',
'                             inner join CHECK_FORM f on s.FORM_ID = f.FORM_ID and f.DEL_FLAG = 0',
'                             inner join CHECK_OBJECT_DEVICE_ASSO o on o.OBJECT_ID = s.OBJECT_ID',
'                    where f.DEL_FLAG = 0',
'                      and s.OBJECT_ID in (',
'                        select o.OBJECT_ID',
'                        from CHECK_OBJECT o',
'                        where o.DEPT_ID = :P263_DEPT_ID',
'                          and o.DEL_FLAG = 0',
'                    )',
'                    group by o.DEVICE_ID) m on m.DEVICE_ID = c.DEVICE_ID',
'where c.tenant_id = :usertenant',
'  and c.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and c.CATEGORY_FIRST_CODE = :P263_CATEGORY_FIRST_CODE',
'  and c.del_flag = 0;',
'~'';',
'',
'end if;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P263_AREA_IDS,P263_OBJECT_ID,P263_DEPT_ID'
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
 p_id=>wwv_flow_imp.id(1437193507896599681)
,p_name=>'FORM_NAMES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_NAMES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5173\8054\8868\5355')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(1437193654052599682)
,p_name=>'ASSOCIATION_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSOCIATION_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5173\8054\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>9
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
 p_id=>wwv_flow_imp.id(2687324736770338435)
,p_name=>'DEVICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2687324773540338436)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
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
 p_id=>wwv_flow_imp.id(2687324885072338437)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\8BBE\5907\7F16\7801')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(2687325000425338438)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\8BBE\5907\540D\79F0')
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
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2687325070854338439)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5382\533A')
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
 p_id=>wwv_flow_imp.id(2687325182954338440)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\533A\57DF')
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
 p_id=>wwv_flow_imp.id(2687325271417338441)
,p_name=>'LINE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7EBF\522B')
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
 p_id=>wwv_flow_imp.id(2687325367803338442)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2687325545542338443)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2686086396610717219)
,p_internal_uid=>560523256039932363
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        tooltip: {',
'            // when the tooltip is integrated with the grid view the content callback',
'            // gets some extra helpful parameters',
'            content: function(callback, model, recordMeta, colMeta, columnDef ) {',
'                var text = null;',
'',
'                // if in/over the row header display a tooltip based on ',
'                // the record edit state metadata',
'                if (recordMeta && $(this).hasClass( "a-GV-rowHeader" ) ) {',
'                    if ( recordMeta.deleted ) {',
'                        text = "This record has been deleted";',
'                    } else if ( recordMeta.inserted ) {',
'                        text = "This record has been added";',
'                    } else if ( recordMeta.updated ) {',
'                        text = "This record has been changed";',
'                    }',
'                } else {',
'                    if ( columnDef && recordMeta) {',
'                        // if in/over the DEFAULT_VALUE column put the DEFAULT_VALUE in a tooltip so more of the DEFAULT_VALUE can be seen',
'                        // if in/over the name column show the hire date',
'                        if ( columnDef.property === "FORM_NAMES" ) {',
'                            text = model.getValue( recordMeta.record, "FORM_NAMES" );',
'                        } ',
'                    }',
'                    // if in/over any other column display a tooltip based on ',
'                    // the changed state metadata',
'                    if ( colMeta && colMeta.changed ) {',
'                        if ( text !== null) {',
'                            text += "<br>";',
'                        } else {',
'                            text = "";',
'                        }',
'                        text += "This cell has been changed";',
'                    }',
'                }',
'                console.log(''text'',text)',
'                alert(text)',
'                return text;',
'            }',
'        }',
'    };',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2686099112774779633)
,p_interactive_grid_id=>wwv_flow_imp.id(2686086396610717219)
,p_static_id=>'2766658'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2686099347269779633)
,p_report_id=>wwv_flow_imp.id(2686099112774779633)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1437224958304957733)
,p_view_id=>wwv_flow_imp.id(2686099347269779633)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1437193507896599681)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131.039
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1437225823150957739)
,p_view_id=>wwv_flow_imp.id(2686099347269779633)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1437193654052599682)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2688150449456264065)
,p_view_id=>wwv_flow_imp.id(2686099347269779633)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2687324736770338435)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2688151421364264068)
,p_view_id=>wwv_flow_imp.id(2686099347269779633)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2687324773540338436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2688152280026264072)
,p_view_id=>wwv_flow_imp.id(2686099347269779633)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2687324885072338437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2688153221177264075)
,p_view_id=>wwv_flow_imp.id(2686099347269779633)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2687325000425338438)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2688154106327264078)
,p_view_id=>wwv_flow_imp.id(2686099347269779633)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2687325070854338439)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2688155027471264081)
,p_view_id=>wwv_flow_imp.id(2686099347269779633)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2687325182954338440)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2688155947876264085)
,p_view_id=>wwv_flow_imp.id(2686099347269779633)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2687325271417338441)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2688156787428264089)
,p_view_id=>wwv_flow_imp.id(2686099347269779633)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2687325367803338442)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2686086561410717221)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302027572475836194)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2409433981710838411)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2686086186389717217)
,p_button_name=>unistr('\67E5\770B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\67E5\770B')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2409440232417838416)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2686086298003717218)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2409440559913838416)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2686086298003717218)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2407345345475849399)
,p_name=>'P263_DEPT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2686086298003717218)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2407345485009849400)
,p_name=>'P263_CATEGORY_FIRST_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2686086298003717218)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409434436780838411)
,p_name=>'P263_AREA_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2686086186389717217)
,p_prompt=>unistr('\641C\7D22\680F')
,p_placeholder=>unistr('\8BF7\8F93\5165')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>9
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409434755786838411)
,p_name=>'P263_AREA_IDS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2686086186389717217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409435232170838411)
,p_name=>'P263_ROW_COUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2686086186389717217)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409440976558838417)
,p_name=>'P263_DEVICE_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2686086298003717218)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409441802440838417)
,p_name=>'P263_OBJECT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2686086298003717218)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2409443816678838418)
,p_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2409440232417838416)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409444259504838419)
,p_event_id=>wwv_flow_imp.id(2409443816678838418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2409444643460838419)
,p_name=>unistr('\9009\4E2D\533A\57DF')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2409433981710838411)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409445213911838419)
,p_event_id=>wwv_flow_imp.id(2409444643460838419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!utils.checkNull($v(''P263_AREA_IDS''))) {',
'    device_ids = $v(''P263_AREA_IDS'');',
'} else {',
'    $s(''P263_AREA_IDS'', device_ids);',
'}',
unistr('console.log("\9009\4E2D\7684\533A\57DFids:",$v(''P263_AREA_IDS''));')))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409445699008838419)
,p_event_id=>wwv_flow_imp.id(2409444643460838419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2686086298003717218)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2409446078134838419)
,p_name=>unistr('\6DFB\52A0\70B9\68C0\5BF9\8C61')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2409440559913838416)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409448100934838420)
,p_event_id=>wwv_flow_imp.id(2409446078134838419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6DFB\52A0\524D\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P263_DEVICE_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\6DFB\52A0\7684\8BBE\5907'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1437193665727599683)
,p_event_id=>wwv_flow_imp.id(2409446078134838419)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_count   number(20) := 0;',
'begin',
'',
'    select count(s.DEVICE_ID) into v_count',
'    from (',
'             SELECT COUNT(s.FORM_ID) AS form_count,',
'                    s.FORM_ID,',
'                    o.DEVICE_ID',
'             FROM CHECK_OBJECT_FORM_ASSO s',
'                      inner JOIN CHECK_OBJECT_DEVICE_ASSO o ON o.OBJECT_ID = s.OBJECT_ID',
'             WHERE s.OBJECT_ID IN (',
'                 SELECT o.OBJECT_ID',
'                 FROM CHECK_OBJECT o',
'                 WHERE o.DEPT_ID = :P263_DEPT_ID',
'                   AND o.DEL_FLAG = 0',
'                   and o.OBJECT_ID != :P263_OBJECT_ID',
'             )',
'             GROUP BY o.DEVICE_ID, s.FORM_ID) s',
'    where s.DEVICE_ID in (',
'        select to_number(data_val)',
'        from JA_UTILS_PKG.SPLIT_STR(:P263_DEVICE_IDS, '','')',
'    )',
'      and s.FORM_ID in (SELECT s.FORM_ID',
'                        FROM CHECK_OBJECT_FORM_ASSO s',
'                        WHERE s.OBJECT_ID = :P263_OBJECT_ID);',
'    apex_util.set_session_state(''P263_ROW_COUNT'', v_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P263_ROW_COUNT'', -1);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P263_DEPT_ID,P263_DEVICE_IDS,P263_OBJECT_ID'
,p_attribute_03=>'P263_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409447101579838420)
,p_event_id=>wwv_flow_imp.id(2409446078134838419)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9A8C\8BC1\8BBE\5907\8868\5355')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if ($v(''P263_ROW_COUNT'') == 0) {',
'',
'    return true;',
'} else {',
unistr('    alert(''\5F53\524D\9009\62E9\7684\8BBE\5907\4E0E\5173\8054\8868\5355\5B58\5728\7ED1\5B9A\FF0C\8BF7\91CD\65B0\9009\62E9\540E\518D\8FDB\884C\6DFB\52A0\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409446582264838419)
,p_event_id=>wwv_flow_imp.id(2409446078134838419)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6267\884C\6DFB\52A0\64CD\4F5C')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg   nvarchar2(2000);',
'    v_row_count number(10) := 1;',
'',
'begin',
'',
'    for c in (select c.DEVICE_ID',
'              from CODE_DEVICE c',
'              where c.DEVICE_ID in (',
'                  select to_number(data_val)',
'                  from JA_UTILS_PKG.SPLIT_STR(:P263_DEVICE_IDS, '','')',
'              )',
'                and not exists(select 1',
'                               from CHECK_OBJECT_DEVICE_ASSO s',
'                               where s.OBJECT_ID = :P263_OBJECT_ID and c.DEVICE_ID = s.DEVICE_ID))',
'',
'        loop',
'            insert into CHECK_OBJECT_DEVICE_ASSO(OBJECT_ID, UPDATED_BY, UPDATED_DATE, DEVICE_ID,',
'                                                 CREATED_BY, CREATION_DATE)',
'            values (:P263_OBJECT_ID, :USER_ID, sysdate, c.DEVICE_ID, :USER_ID, sysdate);',
'',
'        end loop;',
'',
'    apex_util.set_session_state(''P263_ROW_COUNT'', v_row_count);',
'exception',
'    when',
'        others then',
'        apex_util.set_session_state(''P263_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'end;'))
,p_attribute_02=>'P263_DEVICE_IDS,P263_OBJECT_ID'
,p_attribute_03=>'P263_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1437193857442599684)
,p_event_id=>wwv_flow_imp.id(2409446078134838419)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6DFB\52A0\540E\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P263_ROW_COUNT'') > 0) {',
unistr('    alert(''\6DFB\52A0\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\6DFB\52A0\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409447610699838420)
,p_event_id=>wwv_flow_imp.id(2409446078134838419)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2686086298003717218)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2409442840571838418)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2686086298003717218)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409443426572838418)
,p_event_id=>wwv_flow_imp.id(2409442840571838418)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P263_DEVICE_IDS'', ''DEVICE_ID'');',
'utils.set(this.data, map);',
'',
'console.log($v(''P263_DEVICE_IDS''));'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2409442183303838417)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2686086298003717218)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\70B9\68C0\5BF9\8C61\4EA4\4E92\5F0F\7F51\683C - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>283879042733053561
);
wwv_flow_imp.component_end;
end;
/
