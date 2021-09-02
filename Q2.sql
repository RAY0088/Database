SQL> SELECT Pro.Product_name "Product Name", SUM (POC.quantity) "No of Products"
  2  FROM Product Pro
  3  JOIN Customer_Order_Product POC ON POC.Product_Code = Pro.Product_Code
  4  GROUP BY Pro.Product_name;

Product Name No of Products                                                     
------------ --------------                                                     
Coffee                   10                                                     
oil                       8                                                     
Noodles                   4                                                     
Rice                      5                                                     
Dishwasher                3                                                     
Biscuits                  2                                                     

6 rows selected.

SQL> spool off
