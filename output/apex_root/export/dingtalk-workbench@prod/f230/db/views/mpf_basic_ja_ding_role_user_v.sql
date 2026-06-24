                                                                                                                                                                                                                                     
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "MPF_BASIC_JA_DING_ROLE_USER_V" ("ROLE_USER_ID", "TENANT_ID", "CREATION_DATE", "UPDATE_DATE", "LAST_SYNC_DATE", "ROLE_ID", "USER_ID", "USER_NAME", "MANAGE_SCOPES") AS     
  select "ROLE_USER_ID","TENANT_ID","CREATION_DATE","UPDATE_DATE","LAST_SYNC_DATE","ROLE_ID","USER_ID","USER_NAME","MANAGE_SCOPES"                                                                                                   
from MPF.SHARE_BASIC_JA_DING_ROLE_USER_V@MPF_PROD_DBLINK;                                                                                                                                                                            

