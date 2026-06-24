                                                                               
  CREATE OR REPLACE EDITIONABLE TRIGGER "INSERT_NAME"               
    before insert                                                              
    on TENANT_USER_GROUP                                                       
    for each row                                                               
declare                                                                        
    name    varchar2(100);                                                     
begin                                                                          
    select value into name from apex_user_group_code where key = :new.CODE;    
    :new.NAME := name;                                                         
end;                                                                           
                                                                               
                                                                               
                                                                               
/                                                                              
ALTER TRIGGER "INSERT_NAME" ENABLE;                                 

