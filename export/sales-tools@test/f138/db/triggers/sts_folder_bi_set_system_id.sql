create or replace trigger sts_folder_bi_set_system_id
before insert on sts_folder
for each row
declare
    l_system_id number(20,0);
begin
    if :new.system_id is null then
        if :new.folder_lib_id is not null then
            select max(nvl(system_id, 1))
              into l_system_id
              from sts_folder_lib
             where folder_lib_id = :new.folder_lib_id;
        end if;

        :new.system_id := nvl(l_system_id, 1);
    end if;
end;
/
