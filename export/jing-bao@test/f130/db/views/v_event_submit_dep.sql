                                                                                                                                             
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_EVENT_SUBMIT_DEP" ("EXT_ORG_ID", "EXT_ORG_NAME", "CREATE_DATE", "TENANT_ID") AS     
  SELECT C.ext_org_id, C.ext_org_name, TO_char(A.CREATION_DATE, 'yyyy-MM-dd') CREATE_DATE, A.TENANT_ID                                       
FROM TENANT_EVENT A                                                                                                                          
         INNER JOIN MPF_USER_DEPT_MAIN_ASSO_V C ON A.submit_user_id = C.ext_user_id                                                          
--INNER JOIN TENANT_EXT_USERS_ORG_MAIN_ASSO_V C ON A.submit_user_id = C.ext_user_id                                                          
where (A.STATUS = 'CLOSED' OR A.STATUS = 'RESOLVED');                                                                                        

