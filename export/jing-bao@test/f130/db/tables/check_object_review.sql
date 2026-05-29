                                                                                                                                                                                                          
  CREATE TABLE "CHECK_OBJECT_REVIEW"                                                                                                                                                           
   (	"OBJECT_REVIEW_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE,     
	"OBJECT_ID" NUMBER(20,0),                                                                                                                                                                                
	"CREATED_BY" NUMBER(20,0),                                                                                                                                                                               
	"CREATION_DATE" DATE DEFAULT sysdate NOT NULL ENABLE,                                                                                                                                                    
	"UPDATED_BY" NUMBER(20,0),                                                                                                                                                                               
	"UPDATED_DATE" DATE DEFAULT sysdate,                                                                                                                                                                     
	"TENANT_ID" NUMBER(20,0) DEFAULT 3 NOT NULL ENABLE,                                                                                                                                                      
	"DEL_FLAG" NUMBER(1,0) DEFAULT 0 NOT NULL ENABLE,                                                                                                                                                        
	"BASE_DEPT_ID" NVARCHAR2(36),                                                                                                                                                                            
	"REMARK" NVARCHAR2(512),                                                                                                                                                                                 
	"REVIEW_TYPE" NUMBER(3,0) DEFAULT 0,                                                                                                                                                                     
	"REVIEW_USERS" NVARCHAR2(1000),                                                                                                                                                                          
	"REVIEW_GROUP" NVARCHAR2(512),                                                                                                                                                                           
	"AUDIT_METHOD" NVARCHAR2(200),                                                                                                                                                                           
	"IS_SAVE" NUMBER(1,0) DEFAULT 0,                                                                                                                                                                         
	 PRIMARY KEY ("OBJECT_REVIEW_ID")                                                                                                                                                                        
  USING INDEX  ENABLE                                                                                                                                                                                     
   ) ;                                                                                                                                                                                                    

