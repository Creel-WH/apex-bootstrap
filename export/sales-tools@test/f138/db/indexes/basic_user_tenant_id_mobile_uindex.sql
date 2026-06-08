                                                                                                                                                                                          
  CREATE UNIQUE INDEX "BASIC_USER_TENANT_ID_MOBILE_UINDEX" ON "BASIC_USER" ("TENANT_ID", "MOBILE", CASE  WHEN ("IS_LEAVE"=1 OR "DEL_FLAG"=1) THEN "USER_ID" END )     
  ;                                                                                                                                                                                       

