                                                                      
  CREATE TABLE "BASIC_JA_DING_DEPT_USER"                    
   (	"DEPT_USER_ID" NUMBER NOT NULL ENABLE,                           
	"CREATION_DATE" DATE,                                                
	"UPDATE_DATE" DATE,                                                  
	"DEPT_ID" NUMBER(20,0),                                              
	"USER_ID" NVARCHAR2(256),                                            
	"LAST_SYNC_DATE" DATE DEFAULT sysdate,                               
	 PRIMARY KEY ("DEPT_USER_ID")                                        
  USING INDEX  ENABLE                                                 
   ) ;                                                                

