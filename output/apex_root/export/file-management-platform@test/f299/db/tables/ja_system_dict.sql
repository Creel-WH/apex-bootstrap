                                                                                                                                                                                                                
  CREATE TABLE "JA_SYSTEM_DICT"                                                                                                                                                                       
   (	"SYSTEM_DICT_ID" NUMBER(20,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 136 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE,     
	"APP_ID" NUMBER(20,0),                                                                                                                                                                                         
	"SYS_CODE" VARCHAR2(128),                                                                                                                                                                                      
	"DICT_CODE" VARCHAR2(64),                                                                                                                                                                                      
	"CODE_VALUE" VARCHAR2(512),                                                                                                                                                                                    
	"CREATED_BY" NUMBER(20,0),                                                                                                                                                                                     
	"CREATION_DATE" DATE DEFAULT SYSDATE,                                                                                                                                                                          
	"UPDATED_BY" NUMBER(20,0),                                                                                                                                                                                     
	"UPDATE_DATE" DATE,                                                                                                                                                                                            
	"TENANT_ID" NUMBER(20,0) DEFAULT -1,                                                                                                                                                                           
	"DICT_TYPE" VARCHAR2(64),                                                                                                                                                                                      
	 PRIMARY KEY ("SYSTEM_DICT_ID")                                                                                                                                                                                
  USING INDEX  ENABLE                                                                                                                                                                                           
   ) ;                                                                                                                                                                                                          

