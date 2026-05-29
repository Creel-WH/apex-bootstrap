                                                                                                                                                  
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_EVENT_CALSS" ("FIRST_EVENT_CODE", "NAME", "CREATE_DATE", "FAB_NAME", "TENANT_ID") AS     
  SELECT A.FIRST_EVENT_CODE,                                                                                                                      
       B.NAME,                                                                                                                                    
       TO_CHAR(A.CREATION_DATE, 'yyyy-mm-dd') CREATE_DATE,                                                                                        
       C.NAME                                 FAB_NAME,                                                                                           
       A.TENANT_ID                                                                                                                                
FROM TENANT_EVENT A                                                                                                                               
         INNER JOIN TENANT_EVENT_CATEGORY B ON A.FIRST_EVENT_CODE = B.CODE                                                                        
         LEFT JOIN FND_FAB C ON A.FAB_ID = C.FAB_ID                                                                                               
WHERE (A.STATUS = 'CLOSED' OR A.STATUS = 'RESOLVED');                                                                                             

