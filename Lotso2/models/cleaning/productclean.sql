select * from raw_orders where employeeid = ' '

-- data cleaning to be done:

-- employee:
-- replacing null values found within employees: region with the region numbers within employee_territory
--          DATA CLEANING not feature engineering
-- should i get rid of photoPath since it doesnt help cause the values repeat for diff employees

-- order (updated)
-- shippeddate contains missing values.

update order 
set shippeddate

SELECT * FROM orders where shippeddate is null

UPDATE raw_orders
SET shippeddate = (
    SELECT LAG(shippeddate) OVER (ORDER BY orderid)
    FROM raw_orders AS ro
    WHERE ro.orderid = raw_orders.orderid
)
WHERE shippeddate = '2024-01-01 00:00:00.000';

select *  from raw_orders
update raw_orders set orderid as '11064'
where orderid = ' 11064'