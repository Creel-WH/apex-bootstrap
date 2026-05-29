                                                                                     
  CREATE OR REPLACE EDITIONABLE TRIGGER "CHECK_FORM_ITEM_TRIGGER_BEF"     
    before insert                                                                    
    on CHECK_FORM_ITEM                                                               
    for each row                                                                     
declare                                                                              
    v_sort_num number(20);                                                           
begin                                                                                
    select nvl(max(SORT_NUM), 0) + 1                                                 
    into v_sort_num                                                                  
    from CHECK_FORM_ITEM                                                             
    where TENANT_ID = :new.tenant_id                                                 
      and FORM_ID = :new.FORM_ID;                                                    
    :new.SORT_NUM := v_sort_num;                                                     
end;                                                                                 
                                                                                     
                                                                                     
/                                                                                    
ALTER TRIGGER "CHECK_FORM_ITEM_TRIGGER_BEF" ENABLE;                       

