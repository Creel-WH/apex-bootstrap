                                                                                                                                             
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_EVENT_FOLLOW_DEP" ("EXT_ORG_ID", "EXT_ORG_NAME", "CREATE_DATE", "TENANT_ID") AS     
  SELECT C.ext_org_id, C.ext_org_name, TO_char(A.CREATION_DATE, 'yyyy-mm-dd') create_date, A.TENANT_ID                                       
FROM TENANT_EVENT A                                                                                                                          
         INNER JOIN TENANT_EVENT_FOLLOW_USERS B ON A.EVENT_ID = B.EVENT_ID                                                                   
         INNER JOIN MPF_USER_DEPT_MAIN_ASSO_V C ON B.EXT_USER_ID = C.ext_user_id                                                             
--INNER JOIN TENANT_EXT_USERS_ORG_MAIN_ASSO_V C ON B.EXT_USER_ID = C.ext_user_id                                                             
where (A.STATUS = 'CLOSED' OR A.STATUS = 'RESOLVED');                                                                                        

