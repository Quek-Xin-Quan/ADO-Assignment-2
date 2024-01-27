-- -- changing naming convention of null values
-- UPDATE raw_supplier
-- SET Region = CASE WHEN Region = 'NULL' THEN 'No Region' ELSE Region END
-- WHERE Region = 'NULL';

-- UPDATE raw_supplier
-- SET Fax = CASE WHEN Fax = 'NULL' THEN 'No Fax' ELSE Fax END
-- WHERE Fax = 'NULL';

-- UPDATE raw_supplier
-- SET Homepage = CASE WHEN Homepage = 'NULL' THEN 'No Homepage' ELSE Homepage END
-- WHERE Homepage = 'NULL';

-- SELECT * FROM RAW_SUPPLIER 
-- WHERE RAW_SUPPLIER.HOMEPAGE = 'NULL' 
-- OR RAW_SUPPLIER.Fax ='NULL'
-- OR RAW_SUPPLIER.REGION = 'NULL';

-- SELECT supplierid, COUNT(*)
-- FROM raw_product
-- GROUP BY supplierid
-- HAVING COUNT(*) > 1;

-- DELETE FROM raw_product
-- WHERE supplierid IN (
--     SELECT supplierid
--     FROM raw_product
--     GROUP BY supplierid
--     HAVING COUNT(*) > 1
-- );    

    