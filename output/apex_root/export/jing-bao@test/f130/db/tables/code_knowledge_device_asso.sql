                                                                                                                                                                                                                  
  CREATE TABLE "CODE_KNOWLEDGE_DEVICE_ASSO"                                                                                                                                                            
   (	"KNOWLEDGE_DEVICE_ASSO_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 2 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE,     
	"CREATED_BY" NUMBER(20,0),                                                                                                                                                                                       
	"CREATION_DATE" DATE,                                                                                                                                                                                            
	"UPDATED_BY" NUMBER(20,0),                                                                                                                                                                                       
	"UPDATED_DATE" DATE,                                                                                                                                                                                             
	"TENANT_ID" NUMBER(20,0) DEFAULT 3 NOT NULL ENABLE,                                                                                                                                                              
	"REMARK" NVARCHAR2(255),                                                                                                                                                                                         
	"DEVICE_ID" NUMBER(20,0),                                                                                                                                                                                        
	"KNOWLEDGE_ID" NVARCHAR2(255),                                                                                                                                                                                   
	 PRIMARY KEY ("KNOWLEDGE_DEVICE_ASSO_ID")                                                                                                                                                                        
  USING INDEX  ENABLE                                                                                                                                                                                             
   ) ;                                                                                                                                                                                                            

