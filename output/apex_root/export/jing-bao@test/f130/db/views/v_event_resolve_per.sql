                                                                                                                                      
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_EVENT_RESOLVE_PER" ("CREATE_DATE", "STATUS", "FAB_NAME", "TENANT_ID") AS     
  SELECT TO_CHAR(A.CREATION_DATE, 'yyyy-mm-dd') CREATE_DATE, A.STATUS, B.NAME FAB_NAME, A.TENANT_ID                                   
FROM TENANT_EVENT A                                                                                                                   
         LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID;                                                                                  

