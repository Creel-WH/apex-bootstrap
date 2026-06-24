                                                                                            
  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "P_TENANT_UNCLOSE_REPORT" is        
    beginDate varchar2(64);                                                                 
    endDate varchar2(64);                                                                   
    function set_begindate(val in varchar2) return varchar2 is                              
    begin                                                                                   
        beginDate := val;                                                                   
        return val;                                                                         
    end;                                                                                    
                                                                                            
    function get_begindate return varchar2 is                                               
    begin                                                                                   
        return beginDate;                                                                   
    end;                                                                                    
                                                                                            
    function set_enddate(val in varchar2) return varchar2 is                                
    begin                                                                                   
        endDate := val;                                                                     
        return val;                                                                         
    end;                                                                                    
                                                                                            
    function get_enddate return varchar2 is                                                 
    begin                                                                                   
        return endDate;                                                                     
    end;                                                                                    
end P_TENANT_UNCLOSE_REPORT;                                                                
/                                                                                           

