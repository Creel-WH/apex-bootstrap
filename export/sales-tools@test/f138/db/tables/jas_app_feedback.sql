                                                               
  CREATE TABLE "JAS_APP_FEEDBACK"                    
   (	"FB_ID" NUMBER NOT NULL ENABLE,                           
	"FB_DATE" DATE,                                               
	"REQUESTOR" VARCHAR2(32 CHAR),                                
	"APP_ID" NUMBER,                                              
	"PAGE_ID" NUMBER,                                             
	"DETAIL" VARCHAR2(4000 CHAR),                                 
	"SEVERITY" VARCHAR2(16 CHAR),                                 
	"ASSIGNEDTO" VARCHAR2(64 CHAR),                               
	"ESTIMATE_DATE" DATE,                                         
	"ACTUAL_DATE" DATE,                                           
	"STATUS" VARCHAR2(16 CHAR) DEFAULT '已提交',                     
	"RESULT" VARCHAR2(4000 CHAR),                                 
	"COMM" VARCHAR2(4000 CHAR),                                   
	"APP_MODULE" NVARCHAR2(100),                                  
	"REQ_TYPE" NVARCHAR2(10),                                     
	"TENANT_ID" NUMBER(10,0) DEFAULT 3,                           
	"CREATED_BY" NUMBER(20,0),                                    
	"CREATED_DATE" DATE DEFAULT sysdate,                          
	" UPDATED_BY" NUMBER(20,0),                                   
	"UPDATED_DATE" DATE DEFAULT sysdate,                          
	"DEL_FLAG" NUMBER(1,0) DEFAULT 0,                             
	"REMARK" NVARCHAR2(500),                                      
	 CONSTRAINT "JAS_APP_FEEDBACK_PK" PRIMARY KEY ("FB_ID")       
  USING INDEX  ENABLE                                          
   ) ;                                                         

