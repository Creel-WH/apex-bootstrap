                                                                                                                                                                                                                                                                      
  CREATE UNIQUE INDEX "TENANT_FND_AREA_EVENT_CATEGORY_ASSO_MAP_CATEGORY_UNIQUE" ON "TENANT_FND_AREA_EVENT_CATEGORY_ASSO" ("TENANT_ID", "MAP_AREA_X_ID", "EVENT_CATEGORY_ID", CASE "DEL_FLAG" WHEN 1 THEN "FND_AREA_EVENT_CATEGORY_ID" END )     
  ;                                                                                                                                                                                                                                                                   

