                                                                         
  CREATE TABLE "JW_APP_TAG_ASSO"                          
   (	"TAG_ASSO_ID" NVARCHAR2(32) DEFAULT sys_guid() NOT NULL ENABLE,     
	"CREATED_BY" NVARCHAR2(256),                                            
	"CREATION_DATE" DATE DEFAULT sysdate NOT NULL ENABLE,                   
	"TENANT_ID" NUMBER(20,0) DEFAULT 1 NOT NULL ENABLE,                     
	"REMARK" VARCHAR2(200),                                                 
	"APP_TAG_ID" NUMBER(20,0) NOT NULL ENABLE,                              
	"APP_ID" NUMBER(20,0) DEFAULT 0 NOT NULL ENABLE,                        
	"DEL_FLAG" NUMBER(1,0) DEFAULT 0 NOT NULL ENABLE,                       
	 PRIMARY KEY ("TAG_ASSO_ID")                                            
  USING INDEX  ENABLE                                                    
   ) ;                                                                   

