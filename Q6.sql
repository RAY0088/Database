SQL> SELECT a.PRODUCT_NAME,d.ORDER_DATE,c.CUSTOMER_ID,c.CUSTOMER_NAME
  2  FROM CUSTOMER c
  3  JOIN Customer_Order_Product b ON (c.CUSTOMER_ID=b.CUSTOMER_ID)
  4  JOIN Order_Item d ON (b.ORDER_ID=d.ORDER_ID)
  5  JOIN PRODUCT a ON (a.PRODUCT_CODE=b.PRODUCT_CODE)
  6  WHERE d.ORDER_DATE='25-JUN-20';

PRODUCT_NAME ORDER_DAT CUSTOMER_ID                                              
------------ --------- --------------------                                     
CUSTOMER_NAME                                                                   
----------------------------------------                                        
Noodles      25-JUN-20 C4                                                       
Bidur Hamal                                                                     
                                                                                
Dishwasher   25-JUN-20 C4                                                       
Bidur Hamal                                                                     
                                                                                

SQL> spool off
