                                                                          
  CREATE TABLE "JW_ADMIN"                                  
   (	"APP_ADMIN_ID" NVARCHAR2(32) DEFAULT sys_guid() NOT NULL ENABLE,     
	"TENANT_ID" NUMBER(20,0) DEFAULT 1 NOT NULL ENABLE,                      
	"CREATED_BY" NVARCHAR2(256) NOT NULL ENABLE,                             
	"CREATION_DATE" DATE DEFAULT sysdate NOT NULL ENABLE,                    
	"UPDATED_BY" NVARCHAR2(256) NOT NULL ENABLE,                             
	"UPDATE_DATE" DATE DEFAULT sysdate NOT NULL ENABLE,                      
	"USER_ID" VARCHAR2(255),                                                 
	"REFERENCE_ID" NUMBER(20,0),                                             
	"REFERENCE_TYPE" VARCHAR2(255),                                          
	"IS_CREATOR" NUMBER(1,0),                                                
	"ADMIN_LEVEL" NUMBER DEFAULT 1 NOT NULL ENABLE,                          
	 PRIMARY KEY ("APP_ADMIN_ID")                                            
  USING INDEX  ENABLE                                                     
   ) ;                                                                    

