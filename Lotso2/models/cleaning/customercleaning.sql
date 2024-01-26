-- --Changing the naming convention of missing values
-- UPDATE raw_customer
-- SET Fax = CASE WHEN Fax = 'NULL' THEN 'No Fax' ELSE Fax END
-- WHERE Fax = 'NULL';

-- UPDATE raw_customer
-- SET Region = CASE WHEN Region = 'NULL' THEN 'No Region' ELSE Region END
-- WHERE Region = 'NULL';

-- DELETE FROM raw_customer
-- WHERE customerid IN (
--     SELECT customerid
--     FROM raw_customer
--     GROUP BY customerid
--     HAVING COUNT(*) > 1
-- );      

