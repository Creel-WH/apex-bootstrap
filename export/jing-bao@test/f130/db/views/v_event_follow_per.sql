                                                                                                                                                
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_EVENT_FOLLOW_PER" ("CREATE_DATE", "EVENT_ID", "FAB_NAME", "COUNT", "TENANT_ID") AS     
  SELECT CREATE_DATE, EVENT_ID, FAB_NAME, COUNT(*) COUNT, TENANT_ID                                                                             
FROM (                                                                                                                                          
         SELECT TO_CHAR(A.CREATION_DATE, 'yyyy-MM-dd') CREATE_DATE, A.EVENT_ID, C.NAME FAB_NAME, A.TENANT_ID                                    
         FROM TENANT_EVENT A                                                                                                                    
                  LEFT JOIN TENANT_EVENT_FOLLOW_USERS B ON A.EVENT_ID = B.EVENT_ID                                                              
                  LEFT JOIN FND_FAB C ON A.FAB_ID = C.FAB_ID)                                                                                   
GROUP BY CREATE_DATE, EVENT_ID, FAB_NAME, TENANT_ID;                                                                                            

