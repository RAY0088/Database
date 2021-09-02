SQL> SELECT  CS.CUSTOMER_NAME,K.Address_ID, A.Country, A.Zone, A.City,
  2  PR.PRODUCT_NAME,
  3  (SUM(O.QUANTITY)) AS TOTAL
  4  FROM  Customer_Order_Product O
  5  JOIN CUSTOMER CS ON (O.CUSTOMER_ID=CS.CUSTOMER_ID)
  6  JOIN ORDER_ITEM Ord ON (O.ORDER_ID=ORD.ORDER_ID)
  7  JOIN PRODUCT PR ON (PR.PRODUCT_CODE=O.PRODUCT_CODE)
  8  JOIN Customer_Order_Address K ON (K.Order_ID=O.order_ID)
  9  JOIN Address A ON (A.Address_ID=K.Address_ID)
 10  Group BY CS.CUSTOMER_NAME,K.Address_ID, A.Country, A.Zone, A.City,
 11  PR.PRODUCT_NAME HAVING (SUM(O.QUANTITY))>2;

CUSTOMER_NAME                            ADDRESS_ID                             
---------------------------------------- ----------                             
COUNTRY                        ZONE            CITY             PRODUCT_NAME    
------------------------------ --------------- ---------------- ------------    
     TOTAL                                                                      
----------                                                                      
Bidur Hamal                              Add3                                   
Nepal                          Bagmati         Kathmandu        Noodles         
         4                                                                      
                                                                                
Saroj Karki                              Add1                                   
Nepal                          Koshi           Itahari          Coffee          
         4                                                                      

CUSTOMER_NAME                            ADDRESS_ID                             
---------------------------------------- ----------                             
COUNTRY                        ZONE            CITY             PRODUCT_NAME    
------------------------------ --------------- ---------------- ------------    
     TOTAL                                                                      
----------                                                                      
                                                                                
Santos Katuwal                           Add2                                   
Nepal                          Mechi           Jhapa            oil             
         4                                                                      
                                                                                
Bidur Hamal                              Add4                                   
Nepal                          Bagmati         Lalitpur         Noodles         

CUSTOMER_NAME                            ADDRESS_ID                             
---------------------------------------- ----------                             
COUNTRY                        ZONE            CITY             PRODUCT_NAME    
------------------------------ --------------- ---------------- ------------    
     TOTAL                                                                      
----------                                                                      
         4                                                                      
                                                                                
Saroj Karki                              Add1                                   
Nepal                          Koshi           Itahari          oil             
         4                                                                      
                                                                                
Santos Katuwal                           Add2                                   

CUSTOMER_NAME                            ADDRESS_ID                             
---------------------------------------- ----------                             
COUNTRY                        ZONE            CITY             PRODUCT_NAME    
------------------------------ --------------- ---------------- ------------    
     TOTAL                                                                      
----------                                                                      
Nepal                          Mechi           Jhapa            Rice            
         5                                                                      
                                                                                
Santos Katuwal                           Add2                                   
Nepal                          Mechi           Jhapa            Coffee          
         6                                                                      
                                                                                

7 rows selected.

SQL> spool off;
