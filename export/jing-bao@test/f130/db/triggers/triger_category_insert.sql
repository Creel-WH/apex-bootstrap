                                                                                                                 
  CREATE OR REPLACE EDITIONABLE TRIGGER "TRIGER_CATEGORY_INSERT"                                      
    before insert                                                                                                
    on TENANT_EVENT_CATEGORY                                                                                     
    for each row                                                                                                 
DECLARE                                                                                                          
    ch_name varchar2(100);                                                                                       
    l_code  varchar2(10);                                                                                        
    l_msg   varchar2(100);                                                                                       
    l_fullPinyin    varchar2(600);                                                                               
    l_firstPinyin    varchar2(600);                                                                              
    l_clob  CLOB;                                                                                                
    url_name varchar(200);                                                                                       
  begin                                                                                                          
     if (:new.NAME IS NOT NULL) THEN                                                                             
          apex_web_service.g_request_headers(1).name := 'Content-Type';                                          
          apex_web_service.g_request_headers(1).value := 'application/json';                                     
          apex_web_service.g_request_headers(2).name := 'appKey';                                                
          apex_web_service.g_request_headers(2).value := GET_APP_KEY(:new.BASE_DEPT_ID);                         
          apex_web_service.g_request_headers(3).name := 'appSecret';                                             
          apex_web_service.g_request_headers(3).value := GET_APP_SECRET(:new.BASE_DEPT_ID);                      
          url_name:=utl_url.escape(:new.name,true,'UTF8');                                                       
      l_clob := apex_web_service.make_rest_request(                                                              
        p_url => 'http://jingbao_api.ywjasolar.com/apex/pinyin/'||url_name,                                      
        p_http_method => 'GET');                                                                                 
        select code,msg into l_code,l_msg from json_table(l_clob FORMAT JSON, '$'                                
        COLUMNS(                                                                                                 
            code        Number      PATH '$.code',                                                               
            msg         VARCHAR2    PATH '$.msg'                                                                 
        ));                                                                                                      
                                                                                                                 
    if l_code = 200 then                                                                                         
        select fullPinyin,firstPinyin into l_fullPinyin,l_firstPinyin from json_table(l_clob FORMAT JSON, '$'    
        COLUMNS(                                                                                                 
            fullPinyin   VARCHAR2   PATH '$.data.fullPinyin',                                                    
            firstPinyin   VARCHAR2   PATH '$.data.firstPinyin'                                                   
        ));                                                                                                      
        :new.name_pinyin := l_firstPinyin||','||l_fullPinyin;                                                    
    end if;                                                                                                      
       END IF;                                                                                                   
    end;                                                                                                         
/                                                                                                                
ALTER TRIGGER "TRIGER_CATEGORY_INSERT" ENABLE;                                                        

