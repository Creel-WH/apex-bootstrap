                                                                                                                                                                                                   
  CREATE TABLE "CHECK_CHANGE_IMPACT_TIME_PRESET"                                                                                                                                        
   (	"PRESET_ID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE,     
	"AREA_ID" NUMBER(20,0),                                                                                                                                                                           
	"BASE_DEPT_ID" NVARCHAR2(36),                                                                                                                                                                     
	"CREATED_BY" NUMBER(20,0),                                                                                                                                                                        
	"IMPACT_TIME" NUMBER(20,0) DEFAULT 0,                                                                                                                                                             
	"CREATION_DATE" DATE DEFAULT sysdate,                                                                                                                                                             
	"UPDATED_BY" NUMBER(20,0),                                                                                                                                                                        
	"UPDATE_DATE" DATE DEFAULT sysdate,                                                                                                                                                               
	"REMARK" NVARCHAR2(512),                                                                                                                                                                          
	"DEL_FLAG" NUMBER DEFAULT 0 NOT NULL ENABLE,                                                                                                                                                      
	"TENANT_ID" NUMBER(20,0) DEFAULT 3 NOT NULL ENABLE,                                                                                                                                               
	"AREA_NAME" VARCHAR2(200),                                                                                                                                                                        
	 PRIMARY KEY ("PRESET_ID")                                                                                                                                                                        
  USING INDEX  ENABLE                                                                                                                                                                              
   ) ;                                                                                                                                                                                             

