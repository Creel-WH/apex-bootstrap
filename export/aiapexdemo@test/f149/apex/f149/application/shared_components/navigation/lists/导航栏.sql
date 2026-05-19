prompt --application/shared_components/navigation/lists/导航栏
begin
--   Manifest
--     LIST: 导航栏
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1181870489438849977)
,p_name=>unistr('\5BFC\822A\680F')
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with items as (',
'    select to_number( apex_util.get_session_state( ''APP_ID'' ) )            as app_id,',
'           to_number( apex_util.get_session_state( ''APP_PAGE_ID'' ) )       as app_page_id,',
'           to_number( apex_util.get_session_state( ''P0_THEME_STYLE_ID'' ) ) as theme_style_id',
'      from sys.dual',
')',
'select level,',
'       label, ',
'       target, ',
'       is_current_list_entry,',
'       image,',
'       null image_attribute,',
'       null image_alt_attribute,',
'       null attribute1,',
'       li_class attribute2',
'  from ( ',
'',
'select 3 node_id,',
'       null parent_node_id,',
'       ''Install App'' label, ',
'       ''#'' target, ',
'       ''NO'' is_current_list_entry,',
'       ''fa-cloud-download'' image,',
'       0 seq,',
'       ''a-pwaInstall'' li_class',
'  from dual',
'',
'union all',
'',
'select 0 node_id,',
'       null parent_node_id,',
'       ''RTL'' label, ',
'       ''javascript:toggleRtl();'' target, ',
'       ''NO'' is_current_list_entry,',
'       ''fa-arrow-right'' image,',
'       1 seq,',
'       null li_class',
'  from dual',
'',
'union all',
'',
'select 1 node_id,',
'       null parent_node_id,',
'       ''Theme Version'' label, ',
'       ''#'' target, ',
'       ''NO'' is_current_list_entry,',
'       ''fa-hashtag'' image,',
'       1 seq,',
'       null li_class',
'  from dual',
'',
'union all',
'',
'select 2 node_id,',
'       null parent_node_id,',
'       ''Theme Style'' label, ',
'       ''#'' target, ',
'       ''NO'' is_current_list_entry,',
'       ''fa-paint-brush'' image,',
'       2 seq,',
'       null li_class',
'  from dual',
'',
'union all',
'',
'select null node_id,',
'       1 parent_node_id,',
'       regexp_substr( a.version, ''\d+\.\d+'' ) || case when a.application_id = i.app_id then '' (Current)'' end label, ',
'       coalesce ( ( select apex_page.get_url (',
'                               p_application => ap.application_id,',
'                               p_page        => ap.page_id )',
'                      from apex_application_pages ap',
'                     where ap.application_id = a.application_id',
'                       and ap.page_id        = i.app_page_id ), ',
'                  apex_util.prepare_url ( p_url => ''f?p='' || a.application_id ) ) target, ',
'       case when a.application_id = i.app_id then ''YES'' else ''NO'' end is_current_list_entry,',
'       null image,',
'       row_number() over ( order by a.version desc ) seq,',
'       null li_class',
' from apex_applications a, items i',
unistr('where a.application_group = ''\901A\7528\4E3B\9898'''),
'',
'union all',
'',
'select null node_id,',
'       2 parent_node_id,',
'       case ',
'         when ts.theme_roller_read_only = ''N'' then '' (Sample) ''',
'       end ||',
'       ts.name ||',
'       case ',
'         when i.theme_style_id is not null and ts.theme_style_id = i.theme_style_id then '' (Current)''',
'         when i.theme_style_id is null and ts.is_current = ''Yes'' then '' (Current)''',
'         when name = ''Vita'' then '' (Default)'' ',
'       end ',
'       as label,',
'       ''javascript:apex.jQuery(''''.ut-TemplateOptions--preview input'''').remove(); apex.page.submit( { request: ''''APPLY_THEME_STYLE'''', set: { ''''P0_THEME_STYLE_ID'''': '''''' || ts.theme_style_id || '''''' }, showWait: true } );'' target, ',
'       case when ts.theme_style_id = i.theme_style_id then ''YES'' else ''NO'' end is_current_list_entry,',
'       null image,',
'       row_number() over (order by decode(ts.theme_roller_read_only, ''Y'', 1, 2), ts.name) seq,',
'       null li_class',
' from apex_application_theme_styles ts, items i',
'where application_id = i.app_id',
'',
'union all',
'',
'select null node_id,',
'       2 parent_node_id,',
'       ''---'' label, ',
'       ''separator'' target, ',
'       ''NO'' is_current_list_entry,',
'       null image,',
'       count(1) + 0.5 seq,',
'       null li_class',
' from apex_application_theme_styles, items i',
'where application_id         = i.app_id',
'  and theme_roller_read_only = ''Y''',
'',
')',
'',
'start with parent_node_id is null',
'connect by prior node_id = parent_node_id',
'order siblings by seq'))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(977431636688763758)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Install App'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-cloud-download'
,p_list_text_02=>'a-pwaInstall'
,p_list_item_current_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
