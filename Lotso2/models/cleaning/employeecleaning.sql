
UPDATE raw_employee
SET Region = CASE WHEN Region = 'NULL' THEN 'No Region' ELSE Region END
WHERE Region = 'NULL';

/* 
getting/checking rows to see if rows are still 'NULL'
SELECT * FROM raw_employee WHERE region ='Null';

getting rows where employeeid is null
SELECT * FROM RAW_EMPLOYEE WHERE EMPLOYEEID IS NULL
*/