SQL> SELECT Ord.Order_id, Ord.Order_date, Cus.Customer_name, Pro.Product_name
  2  FROM Order_Item Ord
  3  JOIN Customer_Order_Product POC ON Ord.Order_id = POC.Order_id
  4  JOIN Product Pro ON Pro.Product_Code = POC.Product_Code
  5  JOIN Customer Cus ON Cus.Customer_id = POC.Customer_id;

ORDER_ID    ORDER_DAT CUSTOMER_NAME                            PRODUCT_NAME     
----------- --------- ---------------------------------------- ------------     
ord1        20-JAN-20 Saroj Karki                              oil              
ord1        20-JAN-20 Saroj Karki                              Coffee           
ord1        20-JAN-20 Saroj Karki                              Coffee           
ord2        05-APR-20 Rohit Pandey                             Biscuits         
ord3        05-APR-20 Santos Katuwal                           oil              
ord3        05-APR-20 Santos Katuwal                           Coffee           
ord3        05-APR-20 Santos Katuwal                           Rice             
ord4        25-JUN-20 Bidur Hamal                              Dishwasher       
ord4        25-JUN-20 Bidur Hamal                              Noodles          
ord5        21-JUL-20 Kusum Tamang                             Dishwasher       

10 rows selected.

SQL> 
SQL> spool off
