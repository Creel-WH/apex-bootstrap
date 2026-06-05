                                                                                                                                                                                        
  CREATE UNIQUE INDEX "PM_USER_JOB_NUMBER_TENANT_ID_DEL_FLAG_INDEX" ON "PM_USER" ("JOB_NUMBER", "TENANT_ID", CASE "DEL_FLAG" WHEN 1 THEN "USER_ID" ELSE 1 END )     
  ;                                                                                                                                                                                     

