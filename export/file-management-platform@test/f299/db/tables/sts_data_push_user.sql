                                                                                                                                                                                                       
  CREATE TABLE "STS_DATA_PUSH_USER"                                                                                                                                                          
   (	"USER_ID" NUMBER(20,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE,     
	"USER_NAME" VARCHAR2(32),                                                                                                                                                                             
	"JOB_NUMBER" VARCHAR2(32),                                                                                                                                                                            
	"MPF_USER_ID" VARCHAR2(100),                                                                                                                                                                          
	"IS_LEAVE" NUMBER(20,0) DEFAULT 0,                                                                                                                                                                    
	"TENANT_ID" NUMBER(20,0) DEFAULT 3,                                                                                                                                                                   
	"REMARK" VARCHAR2(500),                                                                                                                                                                               
	"CREATED_BY" NUMBER(32,0),                                                                                                                                                                            
	"CREATION_DATE" DATE DEFAULT sysdate,                                                                                                                                                                 
	"UPDATED_BY" NUMBER(20,0),                                                                                                                                                                            
	"UPDATE_DATE" DATE DEFAULT sysdate,                                                                                                                                                                   
	"DEL_FLAG" NUMBER(1,0) DEFAULT 0,                                                                                                                                                                     
	 PRIMARY KEY ("USER_ID")                                                                                                                                                                              
  USING INDEX  ENABLE                                                                                                                                                                                  
   ) ;                                                                                                                                                                                                 

