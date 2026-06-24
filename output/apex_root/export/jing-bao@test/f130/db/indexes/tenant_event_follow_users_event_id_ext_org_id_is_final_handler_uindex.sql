                                                                                                                                                                                                                                                                  
  CREATE UNIQUE INDEX "TENANT_EVENT_FOLLOW_USERS_EVENT_ID_EXT_ORG_ID_IS_FINAL_HANDLER_UINDEX" ON "TENANT_EVENT_FOLLOW_USERS" ("EVENT_ID", "EXT_ORG_ID", "IS_FINAL_HANDLER", CASE "IS_FINAL_HANDLER" WHEN 0 THEN "EVENT_FOLLOW_ID" END )     
  ;                                                                                                                                                                                                                                                               

