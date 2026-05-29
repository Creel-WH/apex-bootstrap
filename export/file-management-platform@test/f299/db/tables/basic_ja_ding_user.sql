                                                                 
  CREATE TABLE "BASIC_JA_DING_USER"                    
   (	"USER_ID" NVARCHAR2(256) NOT NULL ENABLE,                   
	"CREATION_DATE" DATE,                                           
	"UPDATE_DATE" DATE,                                             
	"IS_LEAVE" NUMBER,                                              
	"TENANT_ID" NUMBER(20,0),                                       
	"UNION_ID" NVARCHAR2(64),                                       
	"TITLE" NVARCHAR2(128),                                         
	"NAME" NVARCHAR2(64),                                           
	"AVATAR" NVARCHAR2(512),                                        
	"STATE_CODE" NVARCHAR2(32),                                     
	"MOBILE" NVARCHAR2(32),                                         
	"JOB_NUMBER" NVARCHAR2(32),                                     
	"EMAIL" NVARCHAR2(128),                                         
	"HIRED_DATE" DATE,                                              
	"MANAGER_USER_ID" NVARCHAR2(256),                               
	"DEPT_IDS" NVARCHAR2(1024),                                     
	"LAST_SYNC_DATE" DATE DEFAULT sysdate NOT NULL ENABLE,          
	 PRIMARY KEY ("USER_ID")                                        
  USING INDEX  ENABLE                                            
   ) ;                                                           

