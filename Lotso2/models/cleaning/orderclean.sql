select customerid, count(customerid)
from raw_customer
group by customerid,productid
having count(customerid) >1


select * from raw_customer where customerid = 'ALFKI'

SELECT *

select orderid, productid, count(orderid)
from raw_order_detail
group by orderid,productid
having count(orderid) >1

select * from raw_order_detail

select supplierid,count(supplierid) from raw_supplier
group by supplierid
having count(supplierid) >1


select * from raw_orders