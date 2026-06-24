                                                                 
  CREATE TABLE "BASIC_JA_DING_DEPT"                    
   (	"DEPT_ID" NUMBER(20,0) NOT NULL ENABLE,                     
	"CREATION_DATE" DATE NOT NULL ENABLE,                           
	"UPDATE_DATE" DATE NOT NULL ENABLE,                             
	"TENANT_ID" NUMBER(20,0) NOT NULL ENABLE,                       
	"NAME" NVARCHAR2(64),                                           
	"PARENT_DEPT_ID" NUMBER(20,0),                                  
	"SORT_NUM" NUMBER,                                              
	"DEPT_MANAGER_USER_IDS" NVARCHAR2(1024),                        
	"CHAIN_IDS" NVARCHAR2(2000),                                    
	"LAST_SYNC_DATE" DATE DEFAULT sysdate,                          
	"CHAIN_NAMES" VARCHAR2(4000),                                   
	 PRIMARY KEY ("DEPT_ID")                                        
  USING INDEX  ENABLE                                            
   ) ;                                                           

