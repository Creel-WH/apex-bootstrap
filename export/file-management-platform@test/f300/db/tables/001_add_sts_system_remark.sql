declare
    l_count number;
begin
    select count(*)
      into l_count
      from user_tab_columns
     where table_name = 'STS_SYSTEM'
       and column_name = 'REMARK';

    if l_count = 0 then
        execute immediate 'alter table sts_system add (remark varchar2(500))';
    end if;
end;
/
