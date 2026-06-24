prompt --application/shared_components/security/authorizations/系统需求编辑权限_查询角色code（返回布尔值）
begin
--   Manifest
--     SECURITY SCHEME: 系统需求编辑权限-查询角色CODE（返回布尔值）
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(3716605794028521953)
,p_name=>unistr('\7CFB\7EDF\9700\6C42\7F16\8F91\6743\9650-\67E5\8BE2\89D2\8272CODE\FF08\8FD4\56DE\5E03\5C14\503C\FF09')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('  L_AUTH NUMBER; -- \53BB\6389\957F\5EA6\9650\5236\FF0C\907F\514D\6EA2\51FA'),
'BEGIN',
unistr('  -- \67E5\8BE2\7528\6237\5F53\524D\89D2\8272CODE\662F\5426\4E3AVIEW_REPORT'),
'  SELECT COUNT(1)',
'    INTO L_AUTH',
'    FROM FMP_USER_ROLE UR',
'    LEFT JOIN FMP_ROLE R ON UR.ROLE_ID = R.ROLE_ID',
unistr('   WHERE R.ROLE_TYPE <> ''VIEW_REPORT'' -- \67E5\8BE2\89D2\8272CODE\4E0D\4E3AVIEW_REPORT\7684\6570\91CF'),
'     AND UR.USER_ID = :MPF_USER_ID',
'     AND UR.DEL_FLAG = 0',
'     AND UR.TENANT_ID = :USER_TENANT',
'     AND R.DEL_FLAG = 0',
'     AND R.ROLE_ID = :ROLE_ID;',
'',
unistr('  -- \6839\636E\67E5\8BE2\7ED3\679C\8FD4\56DE TRUE \6216 FALSE'),
'  IF L_AUTH >= 1 THEN',
unistr('    RETURN TRUE; -- \7528\6237\5F53\524D\89D2\8272CODE\4E0D\4E3AVIEW_REPORT\FF0C\8FD4\56DE TRUE'),
'  ELSE',
unistr('    RETURN FALSE; -- \7528\6237\5F53\524D\89D2\8272CODE\4E3AVIEW_REPORT\FF0C\8FD4\56DE FALSE'),
'  END IF;',
'END;'))
,p_version_scn=>1
,p_caching=>'NOCACHE'
);
wwv_flow_imp.component_end;
end;
/
