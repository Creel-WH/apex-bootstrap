                                                                                                                                                                                                                                                                    
  CREATE UNIQUE INDEX "TENANT_EVENT_FOLLOW_USERS_EVENT_ID_EXT_ORG_ID_USER_IDENTITY_UINDEX" ON "TENANT_EVENT_FOLLOW_USERS" ("EVENT_ID", "EXT_ORG_ID", "USER_IDENTITY", CASE "USER_IDENTITY" WHEN U'SECONDARY' THEN "EVENT_FOLLOW_ID" END )     
  ;                                                                                                                                                                                                                                                                 

