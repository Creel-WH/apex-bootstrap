                                                                                                                                                                                    
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_DEAL_EVENT_TIME_LO" ("LAST_TIME", "FAB_NAME", "LINE_NAME", "LINEID", "OP_NAME", "OPID", "CREATE_DATE", "TENANT_ID") AS     
  SELECT round((apex_date_to_unix_ts(A.END_TIME) - apex_date_to_unix_ts(A.CREATION_DATE)) / 60, 0) LAST_TIME,                                                                       
       C.fab_name,                                                                                                                                                                  
       C.map_area_y_name                                                                         LINE_NAME,                                                                         
       c.MAP_AREA_Y_ID                                                                           LINEID,                                                                            
       C.map_area_x_name                                                                         OP_NAME,                                                                           
       C.MAP_AREA_X_ID                                                                           OPID,                                                                              
       TO_CHAR(A.CREATION_DATE, 'yyyy-MM-dd')                                                    create_date,                                                                       
       A.TENANT_ID                                                                                                                                                                  
FROM TENANT_EVENT A                                                                                                                                                                 
         LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID                                                                                                                                 
         LEFT JOIN FND_MAPS_AREAS_ASSO_V C ON A.MAP_ID = C.MAP_ID;                                                                                                                  

