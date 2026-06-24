                                                                                                                                                                                                                                 
  CREATE UNIQUE INDEX "TENANT_EVENT_PHENOMENON_CODE_TENANT_ID_BASE_DEPT_ID_UINDEX" ON "TENANT_EVENT_PHENOMENON" ("TENANT_ID", "CODE", "BASE_DEPT_ID", DECODE("DEL_FLAG",1,"PHENOMENON_ID","DEL_FLAG"))     
  ;                                                                                                                                                                                                                              

