
-- Retriving rows where any variable is null
-- SELECT * 
-- FROM raw_orders 
-- WHERE  
--   orderid IS NULL OR 
--   orderdate IS NULL OR 
--   requireddate IS NULL OR 
--   shippeddate IS NULL OR 
--   shipvia IS NULL OR 
--   freight IS NULL OR 
--   shipname IS NULL OR 
--   shipaddress IS NULL OR 
--   shipcity IS NULL OR 
--   shipregion IS NULL OR 
--   shippostalcode IS NULL OR 
--   shipcountry IS NULL;

DELETE FROM raw_orders
WHERE orderid IS NULL;

UPDATE raw_orders
SET Shipregion = CASE WHEN Shipregion = 'NULL' THEN 'No Region' ELSE Shipregion END
WHERE Shipregion = 'NULL';

-- changing null values to a value 30 days after order date as thats the average time taken
-- UPDATE raw_orders
-- SET shippeddate = DATEADD(DAY, 7, orderdate)
-- WHERE shippeddate IS NULL;

-- UPDATE raw_orders
-- SET shippeddate = (
--     SELECT LAG(shippeddate) OVER (ORDER BY orderid)
--     FROM raw_orders AS ro
--     WHERE ro.orderid = raw_orders.orderid
-- )
-- WHERE shippeddate = '2024-01-01 00:00:00.000';