                                                                                                                     
  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "JA_UTILS_PKG" AS                                            
    FUNCTION DECRYPT_DEC(P_STR IN VARCHAR2, P_TYPE IN NUMBER DEFAULT 0,                                              
                         P_KEY IN NVARCHAR2 DEFAULT 'BASECODE') RETURN VARCHAR2                                      
    AS                                                                                                               
                                                                                                                     
    BEGIN                                                                                                            
        return UTILS_PKG.DECRYPT_DEC(P_STR, P_TYPE, P_KEY);                                                          
    EXCEPTION                                                                                                        
        WHEN OTHERS THEN                                                                                             
            RETURN NULL;                                                                                             
    END ;                                                                                                            
                                                                                                                     
                                                                                                                     
    FUNCTION ENCRYPT_ENC(P_STR VARCHAR2, P_TYPE IN NUMBER DEFAULT 0,                                                 
                         P_KEY IN NVARCHAR2 DEFAULT 'BASECODE') RETURN VARCHAR2                                      
    AS                                                                                                               
                                                                                                                     
    BEGIN                                                                                                            
        return UTILS_PKG.ENCRYPT_ENC(P_STR, P_TYPE, P_KEY);                                                          
    EXCEPTION                                                                                                        
        WHEN OTHERS THEN                                                                                             
            RETURN NULL;                                                                                             
    END ;                                                                                                            
                                                                                                                     
    FUNCTION DECRYPT_DEC_AES256(P_STR VARCHAR2, P_KEY IN VARCHAR2 DEFAULT 'kiARn9kMJRCgARKMoUyXYDN6NIL77Rrf',        
                                P_IV IN VARCHAR2 DEFAULT '0o0Zp5JqWWInhDgX') RETURN VARCHAR2                         
    AS                                                                                                               
                                                                                                                     
    BEGIN                                                                                                            
        return UTILS_PKG.DECRYPT_DEC_AES256(P_STR, P_KEY, P_IV);                                                     
    EXCEPTION                                                                                                        
        WHEN OTHERS THEN                                                                                             
            RETURN NULL;                                                                                             
    END ;                                                                                                            
                                                                                                                     
    FUNCTION ENCRYPT_ENC_AES256(P_STR VARCHAR2, P_KEY IN VARCHAR2 DEFAULT 'kiARn9kMJRCgARKMoUyXYDN6NIL77Rrf',        
                                P_IV IN VARCHAR2 DEFAULT '0o0Zp5JqWWInhDgX') RETURN VARCHAR2                         
    AS                                                                                                               
                                                                                                                     
    BEGIN                                                                                                            
        return UTILS_PKG.ENCRYPT_ENC_AES256(P_STR, P_KEY, P_IV);                                                     
    EXCEPTION                                                                                                        
        WHEN OTHERS THEN                                                                                             
            RETURN NULL;                                                                                             
    END ;                                                                                                            
                                                                                                                     
    FUNCTION GET_FN_NAME                                                                                             
        RETURN VARCHAR2                                                                                              
    AS                                                                                                               
        V_OWNER VARCHAR2(64);                                                                                        
        V_NAME  VARCHAR2(256);                                                                                       
        V_LINE  NUMBER;                                                                                              
        V_TYPE  VARCHAR2(64);                                                                                        
    BEGIN                                                                                                            
        OWA_UTIL.WHO_CALLED_ME(V_OWNER, V_NAME, V_LINE, V_TYPE);                                                     
        IF V_NAME IS NULL THEN                                                                                       
            V_NAME := V_TYPE ;                                                                                       
        ELSE                                                                                                         
            V_NAME := V_NAME || '()';                                                                                
        END IF;                                                                                                      
                                                                                                                     
        RETURN V_NAME;                                                                                               
    END;                                                                                                             
                                                                                                                     
    FUNCTION SUBSTRING_INSTR2(P_STR IN NVARCHAR2, P_SPLIT_STR IN NVARCHAR2, P_SHOW_TIME_1 IN NUMBER,                 
                              P_SHOW_TIME_2 IN NUMBER) RETURN NVARCHAR2                                              
    AS                                                                                                               
                                                                                                                     
    BEGIN                                                                                                            
        RETURN UTILS_PKG.SUBSTRING_INSTR2(P_STR, P_SPLIT_STR, P_SHOW_TIME_1, P_SHOW_TIME_2);                         
                                                                                                                     
    EXCEPTION                                                                                                        
        WHEN OTHERS THEN                                                                                             
            RETURN '出现错误';                                                                                           
    END;                                                                                                             
                                                                                                                     
                                                                                                                     
    FUNCTION SPLIT_STR(P_STRING IN CLOB, P_DELIMITER IN VARCHAR2)                                                    
        RETURN STR_TABLE                                                                                             
        PIPELINED                                                                                                    
        -- 按照分隔符分割字符串,结果将返回table                                                                                     
    AS                                                                                                               
        V_RESULT STR_RECORD;                                                                                         
        V_LENGTH NUMBER := LENGTH(P_STRING);                                                                         
        V_START  NUMBER := 1;                                                                                        
        V_INDEX  NUMBER;                                                                                             
    BEGIN                                                                                                            
        WHILE(V_START <= V_LENGTH)                                                                                   
            LOOP                                                                                                     
                V_INDEX := INSTR(P_STRING, P_DELIMITER, V_START);                                                    
                IF V_INDEX = 0                                                                                       
                THEN                                                                                                 
                    V_RESULT.DATA_VAL := SUBSTR(P_STRING, V_START);                                                  
                    PIPE ROW (V_RESULT);                                                                             
                    V_START := V_LENGTH + 1;                                                                         
                ELSE                                                                                                 
                    V_RESULT.DATA_VAL := SUBSTR(P_STRING, V_START, V_INDEX - V_START);                               
                    PIPE ROW (V_RESULT);                                                                             
                    V_START := V_INDEX + 1;                                                                          
                END IF;                                                                                              
            END LOOP;                                                                                                
                                                                                                                     
                                                                                                                     
    END SPLIT_STR;                                                                                                   
                                                                                                                     
    function check_password_strength(p_password in varchar2)                                                         
        return nvarchar2                                                                                             
        -- 校验密码强度,返回字符串 'TRUE':表示验证通过                                                                                
    AS                                                                                                               
    BEGIN                                                                                                            
                                                                                                                     
        RETURN UTILS_PKG.check_password_strength(p_password);                                                        
    END check_password_strength;                                                                                     
                                                                                                                     
                                                                                                                     
END JA_UTILS_PKG;                                                                                                    
/                                                                                                                    

