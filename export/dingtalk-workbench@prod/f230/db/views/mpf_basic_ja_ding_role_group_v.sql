                                                                                                                                                                                                 
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MPF_BASIC_JA_DING_ROLE_GROUP_V" ("ROLE_GROUP_ID", "TENANT_ID", "CREATION_DATE", "UPDATE_DATE", "LAST_SYNC_DATE", "GROUP_NAME") AS     
  select "ROLE_GROUP_ID","TENANT_ID","CREATION_DATE","UPDATE_DATE","LAST_SYNC_DATE","GROUP_NAME"                                                                                                 
from MPF.SHARE_BASIC_JA_DING_ROLE_GROUP_V@MPF_PROD_DBLINK;                                                                                                                                       

