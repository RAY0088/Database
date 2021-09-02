SQL> SELECT Pro.PRODUCT_CODE,Pro.PRODUCT_NAME,
  2  SUM(O.QUANTITY)*Pro.UNIT_PRICE AS TOTAL_SALES
  3  FROM PRODUCT Pro JOIN Customer_Order_Product O ON (O.PRODUCT_CODE=Pro.PRODUCT_CODE)
  4  GROUP BY Pro.PRODUCT_CODE,Pro.PRODUCT_NAME,Pro.UNIT_PRICE;

PRODUCT_CODE PRODUCT_NAME TOTAL_SALES                                           
------------ ------------ -----------                                           
P2           Rice                4500                                           
P1           Noodles              120                                           
P5           Biscuits             120                                           
P6           Dishwasher           270                                           
P3           Coffee              4000                                           
P4           oil                 1600                                           

6 rows selected.

SQL> spool off
