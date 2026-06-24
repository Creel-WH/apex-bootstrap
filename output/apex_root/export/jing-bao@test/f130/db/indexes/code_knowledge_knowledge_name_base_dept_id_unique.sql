                                                                                                                                                                                                                         
  CREATE UNIQUE INDEX "CODE_KNOWLEDGE_KNOWLEDGE_NAME_BASE_DEPT_ID_UNIQUE" ON "CODE_KNOWLEDGE" ("KNOWLEDGE_NAME", "TENANT_ID", "BASE_DEPT_ID", CASE "DEL_FLAG" WHEN 1 THEN "KNOWLEDGE_ID" END )     
  ;                                                                                                                                                                                                                      

