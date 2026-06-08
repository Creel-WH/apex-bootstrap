                                                                                                                         
  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "JA_UTILS_PKG" AS                                                 
    FUNCTION DECRYPT_DEC(P_STR IN VARCHAR2, P_TYPE IN NUMBER DEFAULT 0,                                                  
                         P_KEY IN NVARCHAR2 DEFAULT 'BASECODE') RETURN VARCHAR2                                          
    AS                                                                                                                   
        /**                                                                                                              
        * CREATE BY: JIANG JC                                                                                            
        * CREATE DATE: 2023/8/3 14:21                                                                                    
        * MODIFY BY:                                                                                                     
        * MODIFY DATE:                                                                                                   
        * DESCRIBE: 解密字符串                                                                                                
        */                                                                                                               
        V_ENC_RAW  RAW(2000);                                                                                            
        V_RAW_KEY  RAW(16);                                                                                              
        V_TEMP     VARCHAR2(2000) := P_STR;                                                                              
        V_ENC_STR  VARCHAR2(2000);                                                                                       
        V_ENC_TYPE PLS_INTEGER    :=                                                                                     
                DBMS_CRYPTO.ENCRYPT_DES                                                                                  
                + DBMS_CRYPTO.CHAIN_CBC                                                                                  
                + DBMS_CRYPTO.PAD_PKCS5;                                                                                 
    BEGIN                                                                                                                
        IF P_STR IS NULL                                                                                                 
        THEN                                                                                                             
            RETURN P_STR;                                                                                                
        ELSE                                                                                                             
            -- 解决 "+" 转义                                                                                                 
            IF P_TYPE = 1 THEN                                                                                           
                V_TEMP := REGEXP_REPLACE(P_STR, '%2B', '+');                                                             
            END IF;                                                                                                      
            V_RAW_KEY := UTL_RAW.CAST_TO_RAW(P_KEY);                                                                     
            -- 解析BASE64                                                                                                  
            V_ENC_RAW := UTL_ENCODE.BASE64_DECODE(UTL_RAW.CAST_TO_RAW(V_TEMP));                                          
            -- 将解析第一次的数据，进行真正的解密                                                                                         
            V_ENC_STR := DBMS_CRYPTO.DECRYPT(HEXTORAW(V_ENC_RAW), V_ENC_TYPE, V_RAW_KEY);                                
            -- 将结果转成字符串                                                                                                  
            V_ENC_STR := UTL_RAW.CAST_TO_VARCHAR2(V_ENC_STR);                                                            
                                                                                                                         
            RETURN V_ENC_STR;                                                                                            
        END IF;                                                                                                          
    EXCEPTION                                                                                                            
        WHEN OTHERS THEN                                                                                                 
            RETURN NULL;                                                                                                 
    END ;                                                                                                                
                                                                                                                         
                                                                                                                         
    FUNCTION ENCRYPT_ENC(P_STR VARCHAR2, P_TYPE IN NUMBER DEFAULT 0,                                                     
                         P_KEY IN NVARCHAR2 DEFAULT 'BASECODE') RETURN VARCHAR2                                          
    AS                                                                                                                   
        /**                                                                                                              
        * CREATE BY: JIANG JC                                                                                            
        * CREATE DATE: 2023/8/3 13:54                                                                                    
        * MODIFY BY:                                                                                                     
        * MODIFY DATE:                                                                                                   
        * DESCRIBE: 加密字符串                                                                                                
        */                                                                                                               
        V_ENC_STR  VARCHAR2(2000);                                                                                       
        V_RAW_KEY  RAW(16);                                                                                              
        V_ENC_RAW  RAW(1024);                                                                                            
        V_ENC_TYPE PLS_INTEGER := --  加密类型                                                                               
                DBMS_CRYPTO.ENCRYPT_DES -- DES加密模式                                                                       
                + DBMS_CRYPTO.CHAIN_CBC -- 加密块链模式：CBC,每次加密的密文长度为64位(8个字节)                                                
                + DBMS_CRYPTO.PAD_PKCS5;-- 填充方式：PKCS5，当数据位数不足的时候要采用的数据补齐方式                                               
    BEGIN                                                                                                                
        IF P_STR IS NULL                                                                                                 
        THEN                                                                                                             
            RETURN P_STR;                                                                                                
        ELSE                                                                                                             
                                                                                                                         
            V_RAW_KEY := UTL_RAW.CAST_TO_RAW(P_KEY);                                                                     
            -- 将原始数据进行加密                                                                                                 
            V_ENC_RAW := DBMS_CRYPTO.ENCRYPT(UTL_RAW.CAST_TO_RAW(P_STR), V_ENC_TYPE, V_RAW_KEY);                         
            -- 替换掉回车和换行为空，将加密数据转成BASE64,再转成字符串                                                                           
            V_ENC_STR := UTL_RAW.CAST_TO_VARCHAR2(REPLACE(UTL_ENCODE.BASE64_ENCODE(V_ENC_RAW), '0D0A', ''));             
            -- 解决 "+" 转义                                                                                                 
            IF P_TYPE = 1 THEN                                                                                           
                V_ENC_STR := REGEXP_REPLACE(V_ENC_STR, '\+', '%2B');                                                     
            END IF;                                                                                                      
            RETURN V_ENC_STR;                                                                                            
        END IF;                                                                                                          
    EXCEPTION                                                                                                            
        WHEN OTHERS THEN                                                                                                 
            RETURN NULL;                                                                                                 
    END ;                                                                                                                
                                                                                                                         
FUNCTION DECRYPT_DEC_AES256(P_STR VARCHAR2, P_KEY IN VARCHAR2 DEFAULT 'kiARn9kMJRCgARKMoUyXYDN6NIL77Rrf',                
                                P_IV IN VARCHAR2 DEFAULT '0o0Zp5JqWWInhDgX') RETURN VARCHAR2                             
    AS                                                                                                                   
        /**                                                                                                              
        * create by: dul                                                                                                 
        * create date: 2024/1/4 13:43                                                                                    
        * modify by:                                                                                                     
        * modify date:                                                                                                   
        * description: 解密字符串                                                                                             
        */                                                                                                               
        V_DEC_STR         VARCHAR2(2000); -- stores decrypted binary text                                                
        V_KEY_BYTES_RAW   RAW(32); -- stores 256-bit encryption key                                                      
        V_IV_RAW          RAW(16);                                                                                       
        V_ENC_TYPE        PLS_INTEGER := --  加密类型                                                                        
                DBMS_CRYPTO.ENCRYPT_AES256 -- AES256位加密模式                                                                
                + DBMS_CRYPTO.CHAIN_CBC -- 加密块链模式：CBC,每次加密的密文长度为64位(8个字节)                                                
                + DBMS_CRYPTO.PAD_PKCS5;-- 填充方式：PKCS5，当数据位数不足的时候要采用的数据补齐方式                                               
    BEGIN                                                                                                                
        IF P_STR IS NULL                                                                                                 
        THEN                                                                                                             
            RETURN P_STR;                                                                                                
        ELSE                                                                                                             
            -- stores 256-bit encryption key                                                                             
            V_KEY_BYTES_RAW := UTL_RAW.CAST_TO_RAW(P_KEY);                                                               
            -- 偏移量                                                                                                       
            V_IV_RAW := UTL_RAW.CAST_TO_RAW(P_IV);                                                                       
                                                                                                                         
            -- 解密操作                                                                                                      
            V_DEC_STR := DBMS_CRYPTO.DECRYPT                                                                             
                (                                                                                                        
                    src=> P_STR,                                                                                         
                    typ=> V_ENC_TYPE,                                                                                    
                    key=> V_KEY_BYTES_RAW,                                                                               
                    iv=> V_IV_RAW                                                                                        
                );                                                                                                       
            RETURN UTL_RAW.CAST_TO_VARCHAR2(V_DEC_STR);                                                                  
        END IF;                                                                                                          
    EXCEPTION                                                                                                            
        WHEN OTHERS THEN                                                                                                 
            RETURN NULL;                                                                                                 
    END ;                                                                                                                
                                                                                                                         
    FUNCTION ENCRYPT_ENC_AES256(P_STR VARCHAR2, P_KEY IN VARCHAR2 DEFAULT 'kiARn9kMJRCgARKMoUyXYDN6NIL77Rrf',            
                                P_IV IN VARCHAR2 DEFAULT '0o0Zp5JqWWInhDgX') RETURN VARCHAR2                             
    AS                                                                                                                   
        /**                                                                                                              
        * create by: dul                                                                                                 
        * create date: 2024/1/4 13:43                                                                                    
        * modify by:                                                                                                     
        * modify date:                                                                                                   
        * description: 加密字符串                                                                                             
        */                                                                                                               
        V_ENC_STR       VARCHAR2(2000); -- stores encrypted binary text                                                  
        V_KEY_BYTES_RAW RAW(32); -- stores 256-bit encryption key                                                        
        V_IV_RAW        RAW(16);                                                                                         
        V_ENC_TYPE      PLS_INTEGER := --  加密类型                                                                          
                DBMS_CRYPTO.ENCRYPT_AES256 -- AES256位加密模式                                                                
                + DBMS_CRYPTO.CHAIN_CBC -- 加密块链模式：CBC,每次加密的密文长度为64位(8个字节)                                                
                + DBMS_CRYPTO.PAD_PKCS5;-- 填充方式：PKCS5，当数据位数不足的时候要采用的数据补齐方式                                               
    BEGIN                                                                                                                
        IF P_STR IS NULL                                                                                                 
        THEN                                                                                                             
            RETURN P_STR;                                                                                                
        ELSE                                                                                                             
            -- stores 256-bit encryption key                                                                             
            V_KEY_BYTES_RAW := UTL_RAW.CAST_TO_RAW(P_KEY);                                                               
            -- 偏移量                                                                                                       
            V_IV_RAW := UTL_RAW.CAST_TO_RAW(P_IV);                                                                       
                                                                                                                         
            -- 加密操作                                                                                                      
            V_ENC_STR := DBMS_CRYPTO.ENCRYPT                                                                             
                (                                                                                                        
                    src=> UTL_RAW.CAST_TO_RAW(P_STR),                                                                    
                    typ=> V_ENC_TYPE,                                                                                    
                    key=> V_KEY_BYTES_RAW,                                                                               
                    iv=> V_IV_RAW                                                                                        
                );                                                                                                       
            RETURN lower(V_ENC_STR);                                                                                     
        END IF;                                                                                                          
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
        --  从P_STR截取 分割符P_SPLIT_STR 第SHOW_TIME_1次 到SHOW_TIME_2次 之间的内容                                                    
        --  P_STR: 要处理的字符                                                                                                
        --  P_SPLIT_STR: 分割符                                                                                             
        --  P_SHOW_TIME_1: 从第SHOW_TIME_1次出现分割符开始截取,参数小于1时,默认赋值0                                                          
        --  P_SHOW_TIME_2: 从第SHOW_TIME_2次出现分割符结束截取,参数小于1时,默认赋值1                                                          
    AS                                                                                                                   
        V_NEW_STR     NVARCHAR2(4000);                                                                                   
        V_NOW_STR     NVARCHAR2(4000);                                                                                   
        V_NUMBER_1    NUMBER(5);                                                                                         
        V_NUMBER_2    NUMBER(5);                                                                                         
        V_IS_HAVE_STR NVARCHAR2(256);                                                                                    
                                                                                                                         
    BEGIN                                                                                                                
                                                                                                                         
        -- 是否以分割符结尾                                                                                                      
        SELECT SUBSTR(P_STR, -LENGTH(P_SPLIT_STR)) INTO V_IS_HAVE_STR FROM DUAL;                                         
        SELECT DECODE(P_SPLIT_STR, V_IS_HAVE_STR, 1, 0) INTO V_NUMBER_1 FROM DUAL;                                       
        IF V_NUMBER_1 = 0 THEN                                                                                           
            V_NOW_STR := P_STR || P_SPLIT_STR;                                                                           
        ELSE                                                                                                             
            V_NOW_STR := P_STR ;                                                                                         
        END IF;                                                                                                          
                                                                                                                         
        -- 参数是否正确                                                                                                        
        IF P_SHOW_TIME_1 < 0 THEN                                                                                        
            V_NUMBER_1 := 0;                                                                                             
        ELSE                                                                                                             
            V_NUMBER_1 := P_SHOW_TIME_1;                                                                                 
        END IF;                                                                                                          
                                                                                                                         
        -- 参数是否正确                                                                                                        
        IF P_SHOW_TIME_2 < 0 THEN                                                                                        
            V_NUMBER_2 := 1;                                                                                             
        ELSE                                                                                                             
            V_NUMBER_2 := P_SHOW_TIME_2;                                                                                 
        END IF;                                                                                                          
                                                                                                                         
        IF V_NUMBER_1 = 0 THEN                                                                                           
                                                                                                                         
            SELECT SUBSTR(V_NOW_STR, 0, (                                                                                
                    INSTR(V_NOW_STR, P_SPLIT_STR, 1, V_NUMBER_2) - 1                                                     
                ))                                                                                                       
            INTO V_NEW_STR                                                                                               
            FROM DUAL;                                                                                                   
                                                                                                                         
        ELSIF V_NUMBER_1 > 0 THEN                                                                                        
                                                                                                                         
            SELECT SUBSTR(V_NOW_STR, (INSTR(V_NOW_STR, P_SPLIT_STR, 1, V_NUMBER_1) + LENGTH(P_SPLIT_STR)), (             
                    INSTR(V_NOW_STR, P_SPLIT_STR, 1, V_NUMBER_2) - LENGTH(P_SPLIT_STR) -                                 
                    INSTR(V_NOW_STR, P_SPLIT_STR, 1, V_NUMBER_1)                                                         
                ))                                                                                                       
            INTO V_NEW_STR                                                                                               
            FROM DUAL;                                                                                                   
                                                                                                                         
        END IF;                                                                                                          
                                                                                                                         
        RETURN V_NEW_STR;                                                                                                
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
                                                                                                                         
        IF LENGTH(p_password) < 8 or p_password is null                                                                  
        then                                                                                                             
            return '密码长度必须大于8个字符';                                                                                       
        else                                                                                                             
            IF LENGTH(p_password) > 16 then                                                                              
                return '密码长度必须小于16个字符';                                                                                  
            else                                                                                                         
                if not REGEXP_LIKE(p_password, '^.*[A-Z]', 'c') then                                                     
                    return '密码未包含大写字符';                                                                                  
                else                                                                                                     
                    if not REGEXP_LIKE(p_password, '^.*[a-z]', 'c') then                                                 
                        return '密码未包含小写字符';                                                                              
                    else                                                                                                 
                        if not REGEXP_LIKE(p_password, '^.*[a-zA-Z]', 'c') then                                          
                            return '密码未包含字母';                                                                            
                        else                                                                                             
                            if not REGEXP_LIKE(p_password, '^.*[0-9]', 'c') then                                         
                                return '密码未包含数字';                                                                        
                            else                                                                                         
                                if not REGEXP_LIKE(p_password, '[^a-zA-Z0-9]') then                                      
                                    return '密码未包含特殊字符';                                                                  
                                else                                                                                     
                                    if REGEXP_LIKE(p_password, UNISTR('[\4E00-\9FA5]')) or                               
                                       REGEXP_LIKE(p_password, ' ') then                                                 
                                        return '密码不支持中文和空格';                                                             
                                    else                                                                                 
                                        if REGEXP_LIKE(p_password, '012|123|234|345|456|567|678|789') or                 
                                           REGEXP_LIKE(p_password, '987|876|765|654|543|432|321|210') then               
                                            return '密码不支持连续递增、递减三个及以上的数字出现';                                             
                                        else                                                                             
                                            if REGEXP_LIKE(p_password, '(\d)\1{2,}') then                                
                                                return '密码不支持连续三个及以上的相同数字出现';                                            
                                            else                                                                         
                                                return 'TRUE';                                                           
                                            end if;                                                                      
                                        end if;                                                                          
                                    end if;                                                                              
                                end if;                                                                                  
                            end if;                                                                                      
                        end if;                                                                                          
                    end if;                                                                                              
                end if;                                                                                                  
            end if;                                                                                                      
        end if;                                                                                                          
    END check_password_strength;                                                                                         
                                                                                                                         
                                                                                                                         
END JA_UTILS_PKG;                                                                                                        
/                                                                                                                        

