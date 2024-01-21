DELETE FROM raw_orders
WHERE orderid IS NULL;

SELECT *
FROM raw_orders
WHERE SHIPPEDDATE IS NULL;

SELECT orderid, COUNT(*)
FROM raw_order_detail
GROUP BY orderid
HAVING COUNT(*) > 1;

SELECT * fROM raw_order_detail
WHERE orderid IN (
    SELECT orderid,productid
    FROM raw_order_detail
    GROUP BY orderid,productid
    HAVING COUNT(*) > 1
);

SELECT * 
FROM raw_orders 
WHERE  
  orderid IS NULL OR 
  orderdate IS NULL OR 
  requireddate IS NULL OR 
  shippeddate IS NULL OR 
  shipvia IS NULL OR 
  freight IS NULL OR 
  shipname IS NULL OR 
  shipaddress IS NULL OR 
  shipcity IS NULL OR 
  shipregion IS NULL OR 
  shippostalcode IS NULL OR 
  shipcountry IS NULL;

SELECT * FROM raw_orders WHERE employeeid IS NULL;

UPDATE raw_customer
SET Fax = CASE WHEN Fax = 'NULL' THEN 'No Fax' ELSE Fax END
WHERE Fax = 'NULL';

UPDATE raw_customer
SET Region = CASE WHEN Region = 'NULL' THEN 'No Region' ELSE Region END
WHERE Region = 'NULL';

UPDATE raw_employee
SET Region = CASE WHEN Region = 'NULL' THEN 'No Region' ELSE Region END
WHERE Region = 'NULL';

UPDATE raw_supplier
SET Region = CASE WHEN Region = 'NULL' THEN 'No Region' ELSE Region END
WHERE Region = 'NULL';

UPDATE raw_supplier
SET Fax = CASE WHEN Fax = 'NULL' THEN 'No Fax' ELSE Fax END
WHERE Fax = 'NULL';

UPDATE raw_supplier
SET Homepage = CASE WHEN Homepage = 'NULL' THEN 'No Homepage' ELSE Homepage END
WHERE Homepage = 'NULL';

UPDATE raw_orders
SET Shipregion = CASE WHEN Shipregion = 'NULL' THEN 'No Region' ELSE Shipregion END
WHERE Shipregion = 'NULL';
          
UPDATE raw_orders
SET Shippeddate = '2024-01-01 00:00:00' 
WHERE Shippeddate IS NULL;
    
SELECT supplierid, COUNT(*)
FROM raw_product
GROUP BY supplierid
HAVING COUNT(*) > 1;

 DELETE FROM raw_product
WHERE supplierid IN (
    SELECT supplierid
    FROM raw_product
    GROUP BY supplierid
    HAVING COUNT(*) > 1
);          

DELETE FROM raw_customer
WHERE customerid IN (
    SELECT customerid
    FROM raw_customer
    GROUP BY customerid
    HAVING COUNT(*) > 1
);      

SELECT * FROM raw_orders