prompt --application/shared_components/security/authorizations/系统需求编辑权限_查询角色等级（返回布尔值）
begin
--   Manifest
--     SECURITY SCHEME: 系统需求编辑权限-查询角色等级（返回布尔值）
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(3744780162691948477)
,p_name=>unistr('\7CFB\7EDF\9700\6C42\7F16\8F91\6743\9650-\67E5\8BE2\89D2\8272\7B49\7EA7\FF08\8FD4\56DE\5E03\5C14\503C\FF09')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
unistr('  -- \76F4\63A5\6839\636E\5F53\524D\4F1A\8BDD\89D2\8272\7B49\7EA7\5224\65AD'),
'  IF NVL(:ROLE_LEVEL, 0) <> 85 THEN',
'    RETURN TRUE;',
'  ELSE',
'    RETURN FALSE;',
'  END IF;',
'END;'))
,p_version_scn=>1
,p_caching=>'NOCACHE'
);
wwv_flow_imp.component_end;
end;
/
