                                                                                                                                                                                                                                            
  CREATE UNIQUE INDEX "TENANT_DISPATCH_CONFIG_ASSO_DISPATCH_CONFIG_ID_TENANT_ID_CODE_UINDEX" ON "TENANT_DISPATCH_CONFIG_ASSO" (SYS_OP_C2C(TO_CHAR("DISPATCH_CONFIG_ID")||','||TO_CHAR("TENANT_ID")||',')||"CODE")     
  ;                                                                                                                                                                                                                                         

