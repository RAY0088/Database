SQL> ALTER Table Address ADD District VARCHAR (40);
ALTER Table Address ADD District VARCHAR (40)
                        *
ERROR at line 1:
ORA-01430: column being added already exists in table 


SQL> UPDATE Address
  2  SET District =
  3  case Address_id
  4  WHEN 'Add1' THEN 'Sunsari'
  5  WHEN 'Add2' THEN 'Jhapa'
  6  WHEN 'Add3' THEN 'Kathmandu'
  7  WHEN 'Add4' THEN 'Lalitpur'
  8  WHEN 'Add5' THEN 'Sunsari'
  9  END
 10  where Address_id in ('Add1', 'Add2','Add3', 'Add4', 'Add5');

5 rows updated.

SQL> select * from Address;

ADDRESS_ID COUNTRY                        ZONE            CITY                  
---------- ------------------------------ --------------- ----------------      
DISTRICT                                                                        
----------------------------------------                                        
Add1       Nepal                          Koshi           Itahari               
Sunsari                                                                         
                                                                                
Add2       Nepal                          Mechi           Jhapa                 
Jhapa                                                                           
                                                                                
Add3       Nepal                          Bagmati         Kathmandu             
Kathmandu                                                                       
                                                                                

ADDRESS_ID COUNTRY                        ZONE            CITY                  
---------- ------------------------------ --------------- ----------------      
DISTRICT                                                                        
----------------------------------------                                        
Add4       Nepal                          Bagmati         Lalitpur              
Lalitpur                                                                        
                                                                                
Add5       Nepal                          Koshi           Dharan                
Sunsari                                                                         
                                                                                

SQL> spool off
