                                                                                                                                                                                                       
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "REPORT_USER_REQUEST_V" ("LOG_ID", "USER_ID", "USERNAME", "DEP_NAME", "MOBILE", "USER_IP", "URL", "PAGE_NAME", "METHOD", "CREATION_DATE") AS     
  SELECT A.LOG_ID,                                                                                                                                                                                     
       A.EXT_USER_ID                             USER_ID,                                                                                                                                              
       B.NAME                                 AS USERNAME,                                                                                                                                             
       B.EXT_ORG_NAME                         AS DEP_NAME,                                                                                                                                             
       B.MOBILE                               AS MOBILE,                                                                                                                                               
       A.IP                                   AS USER_IP,                                                                                                                                              
       A.URL,                                                                                                                                                                                          
       C.PAGENAME                             AS PAGE_NAME,                                                                                                                                            
       A.METHOD,                                                                                                                                                                                       
       TO_CHAR(A.CREATION_DATE, 'YYYY/MM/DD') AS CREATION_DATE                                                                                                                                         
FROM TENANT_REQUEST_LOGS A                                                                                                                                                                             
         LEFT JOIN MPF_USER_DEPT_MAIN_ASSO_V B ON A.EXT_USER_ID = B.EXT_USER_ID                                                                                                                        
--LEFT JOIN TENANT_EXT_USERS_ORG_MAIN_ASSO_V  B ON A.EXT_USER_ID = B.EXT_USER_ID                                                                                                                       
         LEFT JOIN TENANT_URL_PAGE C ON REGEXP_REPLACE(A.URL, '/[0-9]+', '') = C.URL                                                                                                                   
WHERE A.CREATION_DATE > (SYSDATE - 2)                                                                                                                                                                  
ORDER BY A.CREATION_DATE DESC;                                                                                                                                                                         

