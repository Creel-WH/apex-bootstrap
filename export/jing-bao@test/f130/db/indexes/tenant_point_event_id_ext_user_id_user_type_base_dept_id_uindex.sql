                                                                                                                                                                                                                                                             
  CREATE UNIQUE INDEX "TENANT_POINT_EVENT_ID_EXT_USER_ID_USER_TYPE_BASE_DEPT_ID_UINDEX" ON "TENANT_POINT" ("EVENT_ID", "EXT_USER_ID", "USER_TYPE", "TENANT_ID", "BASE_DEPT_ID", CASE "OPERATION" WHEN '人工核销' THEN "POINT_ID" END )     
  ;                                                                                                                                                                                                                                                          

