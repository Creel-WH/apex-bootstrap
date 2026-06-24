                                                                                                                                                                                                                             
  CREATE UNIQUE INDEX "CODE_DEVICE_DEVICE_CODE_TENANT_ID_DEL_FLAG_BASE_DEPT_ID_UINDEX" ON "CODE_DEVICE" ("DEVICE_CODE", "TENANT_ID", "BASE_DEPT_ID", CASE "DEL_FLAG" WHEN 1 THEN "DEVICE_ID" END )     
  ;                                                                                                                                                                                                                          

