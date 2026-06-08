                                                                                                                            
  CREATE OR REPLACE EDITIONABLE PACKAGE "JA_UTILS_PKG" AS                                                         
                                                                                                                            
                                                                                                                            
    TYPE STR_RECORD IS RECORD (DATA_VAL VARCHAR2(4000));                                                                    
    TYPE STR_TABLE IS TABLE OF STR_RECORD;                                                                                  
                                                                                                                            
    FUNCTION DECRYPT_DEC(P_STR IN VARCHAR2, P_TYPE IN NUMBER DEFAULT 0,                                                     
                         P_KEY IN NVARCHAR2 DEFAULT 'BASECODE') RETURN VARCHAR2;                                            
                                                                                                                            
    FUNCTION ENCRYPT_ENC(P_STR VARCHAR2, P_TYPE IN NUMBER DEFAULT 0,                                                        
                         P_KEY IN NVARCHAR2 DEFAULT 'BASECODE') RETURN VARCHAR2;                                            
                                                                                                                            
    FUNCTION DECRYPT_DEC_AES256(P_STR IN VARCHAR2, P_KEY IN VARCHAR2 DEFAULT 'kiARn9kMJRCgARKMoUyXYDN6NIL77Rrf',            
                                P_IV IN VARCHAR2 DEFAULT '0o0Zp5JqWWInhDgX') RETURN VARCHAR2;                               
                                                                                                                            
    FUNCTION ENCRYPT_ENC_AES256(P_STR VARCHAR2, P_KEY IN VARCHAR2 DEFAULT 'kiARn9kMJRCgARKMoUyXYDN6NIL77Rrf',               
                                P_IV IN VARCHAR2 DEFAULT '0o0Zp5JqWWInhDgX') RETURN VARCHAR2;                               
                                                                                                                            
    FUNCTION GET_FN_NAME RETURN VARCHAR2;                                                                                   
                                                                                                                            
                                                                                                                            
    FUNCTION SUBSTRING_INSTR2(P_STR IN NVARCHAR2, P_SPLIT_STR IN NVARCHAR2, P_SHOW_TIME_1 IN NUMBER,                        
                              P_SHOW_TIME_2 IN NUMBER) RETURN NVARCHAR2;                                                    
                                                                                                                            
    FUNCTION SPLIT_STR(P_STRING IN CLOB, P_DELIMITER IN VARCHAR2) RETURN STR_TABLE PIPELINED;                               
                                                                                                                            
                                                                                                                            
    FUNCTION CHECK_PASSWORD_STRENGTH(P_PASSWORD IN VARCHAR2) RETURN NVARCHAR2;                                              
                                                                                                                            
END JA_UTILS_PKG;                                                                                                           
/                                                                                                                           

