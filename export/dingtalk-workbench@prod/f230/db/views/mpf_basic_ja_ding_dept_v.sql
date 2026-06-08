                                                                                                                                                                                                                                 
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MPF_BASIC_JA_DING_DEPT_V" ("DEPT_ID", "CREATION_DATE", "UPDATE_DATE", "TENANT_ID", "NAME", "PARENT_DEPT_ID", "SORT_NUM", "DEPT_MANAGER_USER_IDS", "CHAIN_IDS") AS     
  select "DEPT_ID","CREATION_DATE","UPDATE_DATE",1 as TENANT_ID,"NAME","PARENT_DEPT_ID","SORT_NUM","DEPT_MANAGER_USER_IDS","CHAIN_IDS"                                                                                           
from MPF.SHARE_BASIC_JA_DING_DEPT_V@MPF_PROD_DBLINK;                                                                                                                                                                             

