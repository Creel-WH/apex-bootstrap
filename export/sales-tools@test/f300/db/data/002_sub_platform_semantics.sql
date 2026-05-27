prompt -- db/data/002_sub_platform_semantics.sql
declare
begin
    update sts_sys_config
       set config_name = unistr('\5B50\5E73\53F0\7C7B'),
           updated_by  = -1,
           update_date = sysdate
     where config_type = 30
       and config_code = 'SYSTEM'
       and nvl(del_flag, 0) = 0
       and nvl(config_name, 'x') <> unistr('\5B50\5E73\53F0\7C7B');

    update sts_system
       set system_name = replace(system_name, unistr('\4E1A\52A1\7CFB\7EDF'), unistr('\5B50\5E73\53F0')),
           updated_by  = -1,
           update_date = sysdate
     where instr(system_name, unistr('\4E1A\52A1\7CFB\7EDF')) > 0
       and nvl(del_flag, 0) = 0;

    commit;
end;
/
