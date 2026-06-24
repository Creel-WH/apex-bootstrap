                                                                                                                                                                                                     
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MPF_BASIC_JA_DING_ROLE_V" ("ROLE_ID", "TENANT_ID", "CREATION_DATE", "UPDATE_DATE", "LAST_SYNC_DATE", "ROLE_NAME", "ROLE_GROUP_ID") AS     
  select "ROLE_ID","TENANT_ID","CREATION_DATE","UPDATE_DATE","LAST_SYNC_DATE","ROLE_NAME","ROLE_GROUP_ID"                                                                                            
from SHARE_BASIC_JA_DING_ROLE_V@MPF_PROD_DBLINK;                                                                                                                                                     

