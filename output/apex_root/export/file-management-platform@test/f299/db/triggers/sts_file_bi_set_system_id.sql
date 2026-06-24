                                                                                  
  CREATE OR REPLACE EDITIONABLE TRIGGER "STS_FILE_BI_SET_SYSTEM_ID"     
before insert on sts_file                                                         
for each row                                                                      
declare                                                                           
    l_system_id number(20,0);                                                     
begin                                                                             
    if :new.system_id is null then                                                
        if :new.parent_folder_id is not null then                                 
            select max(nvl(system_id, 1))                                         
              into l_system_id                                                    
              from sts_file                                                       
             where file_id = :new.parent_folder_id;                               
        elsif :new.root_folder_id is not null then                                
            select max(nvl(system_id, 1))                                         
              into l_system_id                                                    
              from sts_file                                                       
             where file_id = :new.root_folder_id;                                 
        end if;                                                                   
                                                                                  
        :new.system_id := nvl(l_system_id, 1);                                    
    end if;                                                                       
end;                                                                              
                                                                                  
/                                                                                 
ALTER TRIGGER "STS_FILE_BI_SET_SYSTEM_ID" ENABLE;                       

