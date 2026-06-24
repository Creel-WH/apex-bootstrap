                                                               
  CREATE TABLE "BAO_USER_EXPAND"                    
   (	"USER_ID" NUMBER(20,0),                                   
	"CREATED_BY" NUMBER(20,0),                                    
	"CREATION_DATE" DATE DEFAULT sysdate,                         
	"UPDATED_BY" NUMBER(20,0),                                    
	"UPDATE_DATE" DATE DEFAULT sysdate,                           
	"REMARK" NVARCHAR2(512),                                      
	"TENANT_ID" NUMBER(20,0) DEFAULT 3 NOT NULL ENABLE,           
	"GENDER" VARCHAR2(20) DEFAULT null,                           
	"LAST_LOGIN_DATE" DATE,                                       
	"PASSWORD" NVARCHAR2(256),                                    
	"IS_MAIN_WORKER" NUMBER DEFAULT 0 NOT NULL ENABLE,            
	"BASE_DEPT_ID" NVARCHAR2(36)                                  
   ) ;                                                         

