                                                                                                                                                                                                                        
  CREATE UNIQUE INDEX "TENANT_DISPATCH_CONFIG_BASE_DEPT_ID_IS_GLOBAL_UINDEX" ON "TENANT_DISPATCH_CONFIG" (CASE "IS_GLOBAL" WHEN 1 THEN SYS_OP_C2C("BASE_DEPT_ID")||TO_CHAR("IS_GLOBAL") END )     
  ;                                                                                                                                                                                                                     

