                                                                    
  CREATE TABLE "BAO_USER_DEPT_EXPAND"                    
   (	"USER_ID" NUMBER(20,0) NOT NULL ENABLE,                        
	"DEPT_ID" NUMBER(20,0) NOT NULL ENABLE,                            
	"CREATED_BY" NUMBER(20,0),                                         
	"CREATION_DATE" DATE DEFAULT sysdate,                              
	"UPDATED_BY" NUMBER(20,0),                                         
	"UPDATE_DATE" DATE DEFAULT sysdate,                                
	"REMARK" NVARCHAR2(512),                                           
	"TENANT_ID" NUMBER(20,0) DEFAULT 3 NOT NULL ENABLE,                
	"IS_MAIN_ORG" NUMBER DEFAULT 0 NOT NULL ENABLE,                    
	"RELATED_TYPE" NVARCHAR2(20) DEFAULT 'MAIN' NOT NULL ENABLE,       
	"JOB_LEVEL" NVARCHAR2(20) DEFAULT null,                            
	"JOB_LEVEL_CODE" NUMBER,                                           
	"BASE_DEPT_ID" NVARCHAR2(36)                                       
   ) ;                                                              

