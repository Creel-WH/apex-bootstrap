                                                                      
  CREATE TABLE "JW_SCOPE"                              
   (	"SCOPE_ID" NVARCHAR2(32) DEFAULT sys_guid() NOT NULL ENABLE,     
	"TENANT_ID" NUMBER(20,0) DEFAULT 1 NOT NULL ENABLE,                  
	"CREATED_BY" NVARCHAR2(256) NOT NULL ENABLE,                         
	"CREATION_DATE" DATE DEFAULT sysdate NOT NULL ENABLE,                
	"UPDATED_BY" NVARCHAR2(256) NOT NULL ENABLE,                         
	"UPDATE_DATE" DATE DEFAULT sysdate NOT NULL ENABLE,                  
	"ENTITY_TYPE" VARCHAR2(64) NOT NULL ENABLE,                          
	"ENTITY_ID" VARCHAR2(256),                                           
	"REFERENCE_ID" NUMBER(20,0),                                         
	"REFERENCE_TYPE" VARCHAR2(255),                                      
	 PRIMARY KEY ("SCOPE_ID")                                            
  USING INDEX  ENABLE                                                 
   ) ;                                                                

