                                                                
  CREATE TABLE "DATA_SHARE_TENANT"                    
   (	"TENANT_ID" NUMBER(20,0),                                  
	"CREATED_BY" NUMBER(20,0),                                     
	"CREATED_DATE" DATE DEFAULT sysdate,                           
	"UPDATED_BY" NUMBER(20,0),                                     
	"UPDATED_DATE" DATE DEFAULT sysdate,                           
	"TENANT_NAME" NVARCHAR2(20),                                   
	"IS_SHOW" NUMBER DEFAULT 1,                                    
	 PRIMARY KEY ("TENANT_ID")                                     
  USING INDEX  ENABLE                                           
   ) ;                                                          

