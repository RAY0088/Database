SQL> SELECT C.customer_name,Pro.Product_Name, SUM(Ord.Quantity) AS total
  2  FROM Customer_Order_Product Ord
  3  Join Customer c ON c.Customer_id=ord.Customer_id
  4  JOIN Order_Item O ON Ord.Order_id = O.Order_id
  5  JOIN Product Pro ON Pro.Product_Code = Ord.Product_Code
  6  GROUP BY Pro.Product_Name,customer_name ORDER BY total DESC;

CUSTOMER_NAME                            PRODUCT_NAME      TOTAL                
---------------------------------------- ------------ ----------                
Santos Katuwal                           Coffee                6                
Santos Katuwal                           Rice                  5                
Bidur Hamal                              Noodles               4                
Santos Katuwal                           oil                   4                
Saroj Karki                              oil                   4                
Saroj Karki                              Coffee                4                
Bidur Hamal                              Dishwasher            2                
Rohit Pandey                             Biscuits              2                
Kusum Tamang                             Dishwasher            1                

9 rows selected.

SQL> spool off;
