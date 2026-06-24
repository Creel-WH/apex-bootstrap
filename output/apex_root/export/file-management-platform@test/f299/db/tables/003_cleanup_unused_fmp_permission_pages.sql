DELETE FROM fmp_permission
 WHERE tenant_id = 3
   AND permission_type = 0
   AND page_id IN (2, 4, 10, 13, 15, 130, 138, 200, 201, 203, 905, 99999);
/
