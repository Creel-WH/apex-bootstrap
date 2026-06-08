DECLARE
    l_source_menu_id AUTH_MENU.MENU_ID%TYPE;
    l_menu_id AUTH_MENU.MENU_ID%TYPE;
    l_parent_id AUTH_MENU.PARENT_ID%TYPE;
    l_tenant_id AUTH_MENU.TENANT_ID%TYPE;
    l_base_dept_id AUTH_MENU.BASE_DEPT_ID%TYPE;
    l_app_id AUTH_MENU.APP_ID%TYPE;
    l_app_code AUTH_MENU.APP_CODE%TYPE;
    l_user_id AUTH_MENU.UPDATED_BY%TYPE;
BEGIN
    SELECT MENU_ID,
           PARENT_ID,
           TENANT_ID,
           BASE_DEPT_ID,
           APP_ID,
           APP_CODE,
           NVL(UPDATED_BY, CREATED_BY)
      INTO l_source_menu_id,
           l_parent_id,
           l_tenant_id,
           l_base_dept_id,
           l_app_id,
           l_app_code,
           l_user_id
      FROM AUTH_MENU
     WHERE PAGE_ID = 141
       AND DEL_FLAG = 0
       AND ROWNUM = 1;

    BEGIN
        SELECT MENU_ID
          INTO l_menu_id
          FROM AUTH_MENU
         WHERE PAGE_ID = 304
           AND TENANT_ID = l_tenant_id
           AND BASE_DEPT_ID = l_base_dept_id
           AND DEL_FLAG = 0
           AND ROWNUM = 1;

        UPDATE AUTH_MENU
           SET UPDATED_BY = l_user_id,
               UPDATE_DATE = SYSDATE,
               PARENT_ID = l_parent_id,
               NAME = unistr('\4E8B\4EF6\539F\56E0\5173\8054'),
               URL = 'f?p=130:304:&APP_SESSION.::&DEBUG.:::',
               ICON = 'fa-server-link',
               SORT_NO = 850,
               APP_ID = l_app_id,
               APP_CODE = l_app_code,
               IS_ACTIVE = 'Y',
               IS_HIDE = 0,
               DEL_FLAG = 0
         WHERE MENU_ID = l_menu_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            INSERT INTO AUTH_MENU (
                CREATED_BY,
                CREATION_DATE,
                UPDATED_BY,
                UPDATE_DATE,
                REMARK,
                DEL_FLAG,
                TENANT_ID,
                IS_HIDE,
                PARENT_ID,
                NAME,
                URL,
                ICON,
                SORT_NO,
                APP_ID,
                IS_ACTIVE,
                AUTH_LEVEL,
                PAGE_ID,
                APP_CODE,
                BASE_DEPT_ID
            ) VALUES (
                l_user_id,
                SYSDATE,
                l_user_id,
                SYSDATE,
                unistr('\4E8B\4EF6\539F\56E0\5173\8054'),
                0,
                l_tenant_id,
                0,
                l_parent_id,
                unistr('\4E8B\4EF6\539F\56E0\5173\8054'),
                'f?p=130:304:&APP_SESSION.::&DEBUG.:::',
                'fa-server-link',
                850,
                l_app_id,
                'Y',
                0,
                304,
                l_app_code,
                l_base_dept_id
            )
            RETURNING MENU_ID INTO l_menu_id;
    END;

    FOR rec IN (
        SELECT ROLE_ID,
               BINSERT,
               BDELETE,
               BUPDATE
          FROM AUTH_ROLE_MENU_ASSO
         WHERE MENU_ID = l_source_menu_id
    ) LOOP
        MERGE INTO AUTH_ROLE_MENU_ASSO a
        USING (
            SELECT rec.ROLE_ID ROLE_ID,
                   l_menu_id MENU_ID,
                   rec.BINSERT BINSERT,
                   rec.BDELETE BDELETE,
                   rec.BUPDATE BUPDATE
              FROM DUAL
        ) b
           ON (a.ROLE_ID = b.ROLE_ID AND a.MENU_ID = b.MENU_ID)
        WHEN NOT MATCHED THEN
            INSERT (ROLE_ID, MENU_ID, BINSERT, BDELETE, BUPDATE)
            VALUES (b.ROLE_ID, b.MENU_ID, b.BINSERT, b.BDELETE, b.BUPDATE);
    END LOOP;
END;
/
