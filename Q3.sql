SQL> 
SQL> UPDATE customer
  2     SET Customer_name = 'Bidur Hamal'
  3    WHERE Customer_id = 'C4';

1 row updated.

SQL> 
SQL> select * from Customer;

CUSTOMER_ID          CUSTOMER_NAME                                              
-------------------- ----------------------------------------                   
C1                   Saroj Karki                                                
C2                   Rohit Pandey                                               
C3                   Santos Katuwal                                             
C4                   Bidur Hamal                                                
C5                   Kusum Tamang                                               

SQL> spool off
