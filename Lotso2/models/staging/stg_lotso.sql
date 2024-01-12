--{{ config (materialized = 'view')}}
select
--from raw_employee
employeeid,
lastname,
firstname,
title,
titleofcourtesy,
birthdate,
hiredate,
address,
city,
region,
postalcode,
country,
homephone,
extension,
photo,
notes,
reportsto,
photopath,
--from raw_employee_territory
employeeterritoryid,
employeeid,
territoryid,
--from territory 
territoryid,
territorydescription,
regionid,
--from raw_region
regionid,
regiondescription
--from raw_order
orderid,
customerid,
employeeid,
orderdate,
requireddate,
shippeddate,
shipvia,
freight,
shipname,
shipaddress,
shipcity,
shipregion,
shippostalcode,
shipcountry,
--from raw_customer
customerid,
companyname,
contactname,
contacttitle,
address,
city,
region,
postalcode,
country,
phone,
fax,
--from raw_shipper
shipperid,
companyname,
phone,
--from raw_orderdetail
orderdetailid,
orderid,
productid,
unitprice,
quantity,
discount,
--from raw_supplier
supplierid,
companyname,
contactname,
contacttitle,
address,
city,
region,
postalcode,
country,
phone,
fax,
homepage,
--from raw_category
categoryid,
categoryname,
description,
--from raw_product
productid,
productname,
supplierid,
categoryid,
quantityperunit,
unitprice,
unitsinstock,
unitsonorder,
reorderlevel,
discontinued

select * 
from  {{ref('raw_orders')}} o
LEFT join {{ref('raw_employee')}} e 
on e.employeeid =  o.employeeid
LEFT join {{ref('raw_employee_territory')}} et
on e.employeeid = et.employeeid
LEFT join {{ref('raw_territory')}} as t
on et.territoryid = t.territoryid
LEFT join  {{ref('raw_region')}} r
on t.regionid = r.regionid
LEFT join  {{ref('raw_customer')}} c 
on c.customerid = o.customerid
LEFT JOIN  {{ref('raw_shipper')}} s 
on s.shipperid = o.shipvia
LEFT JOIN  {{ref('raw_order_detail')}} od
on o.orderid = od.orderid
LEFT JOIN  {{ref('raw_product')}} p
on od.productid = p.productid
LEFT JOIN  {{ref('raw_category')}} cat
on p.categoryid = cat.categoryid
LEFT JOIN  {{ref('raw_supplier')}} sup
on p.supplierid = sup.supplierid


