                                                                                                                                                                                      
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MPF_SHARE_DEPT_V" ("EXT_ORG_ID", "DEL_FLAG", "NAME", "TENANT_ID", "PARENT_ID", "SORT_NUM", "BASE_DEPT_ID", "DEPT_TYPE") AS     
  select DEPT_ID        as EXT_ORG_ID,                                                                                                                                                
       DEL_FLAG,                                                                                                                                                                      
       NAME,                                                                                                                                                                          
       TENANT_ID,                                                                                                                                                                     
       PARENT_DEPT_ID as PARENT_ID,                                                                                                                                                   
       SORT_NUM,                                                                                                                                                                      
       BASE_DEPT_ID,                                                                                                                                                                  
       DEPT_TYPE                                                                                                                                                                      
from MPF.SHARE_OPS_DEPT_V where DEPT_TYPE='DEPT';                                                                                                                                     

