                                                                                                     
  CREATE OR REPLACE EDITIONABLE TRIGGER "TRG_STS_FILE_SORT_NUM"                            
FOR INSERT ON "STS_FILE"                                                                             
COMPOUND TRIGGER                                                                                     
  BEFORE EACH ROW IS                                                                                 
  BEGIN                                                                                              
    IF :NEW.SORT_NUM IS NULL OR :NEW.SORT_NUM = 1 THEN                                               
      :NEW.SORT_NUM := -1;                                                                           
    END IF;                                                                                          
  END BEFORE EACH ROW;                                                                               
                                                                                                     
  AFTER STATEMENT IS                                                                                 
  BEGIN                                                                                              
    MERGE INTO STS_FILE T                                                                            
    USING (                                                                                          
      WITH N AS (                                                                                    
        SELECT ROWID RID,                                                                            
               TENANT_ID,                                                                            
               NVL(ROOT_FOLDER_ID, 0) ROOT_GROUP_ID,                                                 
               NVL(PARENT_FOLDER_ID, 0) PARENT_GROUP_ID,                                             
               ROW_NUMBER() OVER (                                                                   
                 PARTITION BY TENANT_ID, NVL(ROOT_FOLDER_ID, 0), NVL(PARENT_FOLDER_ID, 0)            
                 ORDER BY NVL(CREATION_DATE, DATE '1970-01-01'), FILE_ID                             
               ) RN                                                                                  
          FROM STS_FILE                                                                              
         WHERE SORT_NUM = -1                                                                         
           AND NVL(DEL_FLAG, 0) = 0                                                                  
      ),                                                                                             
      M AS (                                                                                         
        SELECT TENANT_ID,                                                                            
               NVL(ROOT_FOLDER_ID, 0) ROOT_GROUP_ID,                                                 
               NVL(PARENT_FOLDER_ID, 0) PARENT_GROUP_ID,                                             
               NVL(MAX(SORT_NUM), 0) MAX_SORT                                                        
          FROM STS_FILE                                                                              
         WHERE SORT_NUM <> -1                                                                        
           AND NVL(DEL_FLAG, 0) = 0                                                                  
         GROUP BY TENANT_ID, NVL(ROOT_FOLDER_ID, 0), NVL(PARENT_FOLDER_ID, 0)                        
      )                                                                                              
      SELECT N.RID,                                                                                  
             NVL(M.MAX_SORT, 0) + N.RN NEW_SORT                                                      
        FROM N                                                                                       
        LEFT JOIN M                                                                                  
          ON M.TENANT_ID = N.TENANT_ID                                                               
         AND M.ROOT_GROUP_ID = N.ROOT_GROUP_ID                                                       
         AND M.PARENT_GROUP_ID = N.PARENT_GROUP_ID                                                   
    ) S                                                                                              
    ON (T.ROWID = S.RID)                                                                             
    WHEN MATCHED THEN                                                                                
      UPDATE SET T.SORT_NUM = S.NEW_SORT;                                                            
  END AFTER STATEMENT;                                                                               
END;                                                                                                 
                                                                                                     
                                                                                                     
                                                                                                     
/                                                                                                    
ALTER TRIGGER "TRG_STS_FILE_SORT_NUM" ENABLE;                                              

