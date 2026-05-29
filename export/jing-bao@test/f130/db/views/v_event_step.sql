                                                                                                                     
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_EVENT_STEP" ("CREATE_DATE", "FAB_NAME", "TENANT_ID") AS     
  select to_char(A.creation_date, 'yyyy-MM-dd') as CREATE_DATE, B.NAME AS FAB_NAME, A.TENANT_ID                      
from tenant_event A                                                                                                  
         left join FND_FAB B ON A.FAB_ID = B.FAB_ID;                                                                 

