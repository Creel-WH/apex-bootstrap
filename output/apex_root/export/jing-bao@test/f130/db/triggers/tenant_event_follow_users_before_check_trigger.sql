                                                                                                                       
  CREATE OR REPLACE EDITIONABLE TRIGGER "TENANT_EVENT_FOLLOW_USERS_BEFORE_CHECK_TRIGGER"                    
    before insert or update                                                                                            
    on TENANT_EVENT_FOLLOW_USERS                                                                                       
    for each row                                                                                                       
DECLARE -----定义异常                                                                                                      
    c int;                                                                                                             
begin                                                                                                                  
    select count(*)                                                                                                    
    into c                                                                                                             
    from TENANT_EVENT_COORDINATE_USERS a                                                                               
    where a.EXT_USER_ID = :new.EXT_USER_ID                                                                             
      and a.EVENT_ID = :new.EVENT_ID;                                                                                  
    IF c > 0 THEN                                                                                                      
        RAISE_APPLICATION_ERROR('-20030', '同一个人同一工单无法同时存在TENANT_EVENT_COORDINATE_USERS和TENANT_EVENT_FOLLOW_USERS');    
    END IF;                                                                                                            
END;                                                                                                                   
                                                                                                                       
                                                                                                                       
                                                                                                                       
/                                                                                                                      
ALTER TRIGGER "TENANT_EVENT_FOLLOW_USERS_BEFORE_CHECK_TRIGGER" ENABLE;                                      

