                                                                                                                                                                
  CREATE OR REPLACE EDITIONABLE TRIGGER "JAS_APP_FEEDBACK_TRI"                                                                                        
    after insert                                                                                                                                                
    on JAS_APP_FEEDBACK                                                                                                                                         
    for each row                                                                                                                                                
declare                                                                                                                                                         
    pragma autonomous_transaction ;                                                                                                                             
    v_url        varchar2(2000) := 'http://gateway.ywjasolar.com/notify/apis/ding/chatbot/81/group-chat/async/markdown';                                        
    V_REQUESTOR_NAME  varchar2(100);                                                                                                                            
    V_USER_ID    number(30);                                                                                                                                    
    V_TENANT_ID    number(30);                                                                                                                                  
    V_APP_ID    number(30);                                                                                                                                     
    V_APP_NAME    varchar2(100);                                                                                                                                
    V_APP_CODE    varchar2(100);                                                                                                                                
    V_CONTENT    varchar2(2000);                                                                                                                                
    V_COUNT_1    number(20);                                                                                                                                    
    V_PAGE_NAME    varchar2(200);                                                                                                                               
    V_GROUPCHATIDS varchar2(200);                                                                                                                               
    V_SYSTEM_TXT varchar2(2000);                                                                                                                                
begin                                                                                                                                                           
                                                                                                                                                                
    V_GROUPCHATIDS:='cidMkABT9GgafWCZzGZrTa4+w==';                                                                                                              
    V_APP_ID:=:new.APP_ID;                                                                                                                                      
    -- 制造运营管理工作平台 || 通用项目管理平台                                                                                                                                   
    select count(1) into V_COUNT_1 from JAS_APP_FEEDBACK where APP_ID = V_APP_ID;                                                                               
    if V_APP_ID = 116 then                                                                                                                                      
        V_APP_NAME:='制造运营管理工作平台';                                                                                                                               
        V_APP_CODE:='MOMP_ZZYYGLPT';                                                                                                                            
    else                                                                                                                                                        
        V_APP_NAME:='通用项目管理平台';                                                                                                                                 
        V_APP_CODE:='MOMP_PROJECTS';                                                                                                                            
    end if;                                                                                                                                                     
                                                                                                                                                                
    -- 获取反馈人员                                                                                                                                                   
    SELECT NAME ||'-'||JOB_NUMBER,USER_ID,TENANT_ID into V_REQUESTOR_NAME,V_USER_ID,V_TENANT_ID                                                                 
    FROM JA_USER                                                                                                                                                
    WHERE TENANT_ID = 3 and JOB_NUMBER = :new.REQUESTOR                                                                                                         
      and DEL_FLAG = 0;                                                                                                                                         
                                                                                                                                                                
    V_SYSTEM_TXT:=                                                                                                                                              
            '<b>反馈人员</b>：'|| V_REQUESTOR_NAME ||'\n\n' ||                                                                                                       
            '<b>反馈内容</b>：(ID：'||:new.FB_ID ||')'|| :new.DETAIL ||'\n\n' ||                                                                                      
            '<b>反馈时间</b>：'||TO_CHAR(:new.FB_DATE, 'YYYY-MM-DD');                                                                                                
                                                                                                                                                                
    if V_COUNT_1 <> 0 and V_APP_ID = 116 then                                                                                                                   
        V_SYSTEM_TXT :=                                                                                                                                         
                '{"atDingUserIds":[],"groupChatIds":["'||V_GROUPCHATIDS||'"],"isAtAll":false,"sendInfo":' ||                                                    
                '{"title":"'|| GET_MOMP_APP_MODULE_FUNC(V_APP_ID,:new.APP_MODULE, V_TENANT_ID, V_USER_ID)||'",' ||                                              
                '"text":"<b>反馈系统：'|| GET_MOMP_APP_MODULE_FUNC(V_APP_ID,:new.APP_MODULE, V_TENANT_ID, V_USER_ID)||'</b>\n\n' ||                                  
                '<b>反馈模块</b>：'|| GET_MOMP_APP_MODULE_PAGE_NAME_FUNC(V_APP_ID,:new.APP_MODULE,:new.PAGE_ID, V_TENANT_ID, V_USER_ID)||'\n\n' ||                   
                V_SYSTEM_TXT ||'"} }';                                                                                                                          
        V_SYSTEM_TXT := APEX_HTTP_POST_MOMP(V_URL, V_SYSTEM_TXT);                                                                                               
    else if V_COUNT_1 <> 0 and V_APP_ID = 130 then                                                                                                              
        -- 获取功能页面                                                                                                                                               
        select PAGE_NAME into V_PAGE_NAME from apex_application_pages aale where aale.page_id = :new.page_id and aale.application_id = V_APP_ID;                
                                                                                                                                                                
        V_SYSTEM_TXT :=                                                                                                                                         
                '{"atDingUserIds":[],"groupChatIds":["'||V_GROUPCHATIDS||'"],"isAtAll":false,"sendInfo":' ||                                                    
                '{"title":"通用项目管理平台",' ||                                                                                                                       
                '"text":"<b>反馈系统：通用项目管理平台</b>\n\n' ||                                                                                                           
                '<b>反馈模块</b>：'|| V_PAGE_NAME||'\n\n' || V_SYSTEM_TXT ||'"} }';                                                                                  
        V_SYSTEM_TXT := APEX_HTTP_POST_MOMP(V_URL, V_SYSTEM_TXT);                                                                                               
    else                                                                                                                                                        
        V_SYSTEM_TXT :=                                                                                                                                         
                '{"atDingUserIds":[],"groupChatIds":["'||V_GROUPCHATIDS||'"],"isAtAll":false,"sendInfo":' ||                                                    
                '{"title":"其他",' ||                                                                                                                             
                '"text":"<b>反馈系统：其他</b>\n\n' ||                                                                                                                 
                '<b>反馈模块</b>：其他\n\n' || V_SYSTEM_TXT ||'"} }';                                                                                                  
        V_SYSTEM_TXT := APEX_HTTP_POST_MOMP(V_URL, V_SYSTEM_TXT);                                                                                               
    end if;                                                                                                                                                     
    end if;                                                                                                                                                     
                                                                                                                                                                
    commit;                                                                                                                                                     
                                                                                                                                                                
EXCEPTION                                                                                                                                                       
    WHEN OTHERS THEN                                                                                                                                            
        V_CONTENT := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;                                                                                 
        JA_WRITE_LOG(JA_UTILS_PKG.GET_FN_NAME(), 'ERROR', V_CONTENT, V_USER_ID, V_TENANT_ID,                                                                    
                     V_APP_NAME,V_APP_ID,V_APP_CODE);                                                                                                           
        rollback;                                                                                                                                               
end ;                                                                                                                                                           
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
                                                                                                                                                                
/                                                                                                                                                               
ALTER TRIGGER "JAS_APP_FEEDBACK_TRI" ENABLE;                                                                                                          

