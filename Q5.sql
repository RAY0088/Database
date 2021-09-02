SQL> ELECT * FROM
SP2-0734: unknown command beginning "ELECT * FR..." - rest of line ignored.
SQL> (SELECT per.Product_Name, SUM(POC.Quantity) AS total
  2  FROM Product per
  3  JOIN Customer_Order_Product POC ON per.Product_Code = POC.Product_Code
  4  GROUP BY per.Product_Name ORDER BY total DESC) WHERE rownum <= 1;
GROUP BY per.Product_Name ORDER BY total DESC) WHERE rownum <= 1
                          *
ERROR at line 4:
ORA-00907: missing right parenthesis 


SQL> SELECT * FROM
  2  (SELECT per.Product_Name, SUM(POC.Quantity) AS total
  3  FROM Product per
  4  JOIN Customer_Order_Product POC ON per.Product_Code = POC.Product_Code
  5  GROUP BY per.Product_Name ORDER BY total DESC) WHERE rownum <= 1;

PRODUCT_NAME      TOTAL                                                         
------------ ----------                                                         
Coffee               10                                                         

SQL> spool off
