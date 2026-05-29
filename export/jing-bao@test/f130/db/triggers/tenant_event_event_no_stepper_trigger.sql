                                                                                               
  CREATE OR REPLACE EDITIONABLE TRIGGER "TENANT_EVENT_EVENT_NO_STEPPER_TRIGGER"     
    before insert                                                                              
    on TENANT_EVENT                                                                            
    for each row                                                                               
begin                                                                                          
    :new.EVENT_SERIAL_NO := GET_SERIAL_EVENT_NO(:new.tenant_id);                               
end;                                                                                           
                                                                                               
                                                                                               
                                                                                               
/                                                                                              
ALTER TRIGGER "TENANT_EVENT_EVENT_NO_STEPPER_TRIGGER" ENABLE;                       

