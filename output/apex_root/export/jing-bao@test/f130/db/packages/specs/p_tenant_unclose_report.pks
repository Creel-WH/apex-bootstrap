                                                                                       
  CREATE OR REPLACE EDITIONABLE PACKAGE "P_TENANT_UNCLOSE_REPORT" IS        
    function set_begindate(val varchar2) return varchar2;                              
    function get_begindate return varchar2;                                            
    function set_enddate(val in varchar2) return varchar2;                             
    function get_enddate return varchar2;                                              
end P_TENANT_UNCLOSE_REPORT;                                                           
/                                                                                      

