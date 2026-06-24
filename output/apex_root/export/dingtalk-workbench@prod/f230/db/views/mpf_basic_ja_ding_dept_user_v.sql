                                                                                                                                                                        
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MPF_BASIC_JA_DING_DEPT_USER_V" ("DEPT_USER_ID", "CREATION_DATE", "UPDATE_DATE", "DEPT_ID", "USER_ID") AS     
  select "DEPT_USER_ID","CREATION_DATE","UPDATE_DATE","DEPT_ID","USER_ID"                                                                                               
from MPF.SHARE_BASIC_JA_DING_DEPT_USER_V@MPF_PROD_DBLINK;                                                                                                               

