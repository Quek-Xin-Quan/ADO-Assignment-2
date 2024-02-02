-- NOT USING STAGING
{# --{{ config (materialized = 'view')}}

select
--from raw_order
o.orderid,
o.orderdate,
o.requireddate,
o.shippeddate,
o.shipvia,
o.freight,
o.shipname,
o.shipaddress,
o.shipcity,
o.shipregion,
o.shippostalcode,
o.shipcountry,
--from raw_employee
e.employeeid,
lastname,
firstname,
title,
titleofcourtesy,
birthdate,
hiredate,
e.address as employee_address,
e.city,
e.region,
e.postalcode,
e.country,
homephone,
extension,
photo,
notes,
reportsto,
photopath,
--from territory 
t.territoryid,
territorydescription,
--from raw_region
r.regionid,
regiondescription
--from raw_customer
customerid,
c.companyname,
c.contactname,
c.contacttitle,
c.address as customer_address,
c.city as cus_city,
c.region as cus_region,
c.postalcode as cus_postal,
c.country as cus_country,
c.phone as cus_phone,
c.fax as cus_fax,
--from raw_shipper
s.shipperid,
s.companyname,
s.phone,
--from raw_orderdetail
od.unitprice,
od.quantity,
od.discount,
--from raw_supplier
sup.supplierid,
sup.companyname,
sup.contactname,
sup.contacttitle,
sup.address as supplieraddress,
sup.city,
sup.region,
sup.postalcode,
sup.country,
sup.phone,
sup.fax,
homepage,
--from raw_category
cat.categoryid,
categoryname,
description,
--from raw_product
p.productid,
productname,
quantityperunit,
p.unitprice,
unitsinstock,
unitsonorder,
discountinued
from  {{ ref('raw_orders')}} o
LEFT join {{ ref('raw_employee')}} e 
on e.employeeid =  o.employeeid
LEFT join {{ ref('raw_employee_territory')}} et
on e.employeeid = et.employeeid
LEFT join {{ ref('raw_territory')}} as t
on et.territoryid = t.territoryid
LEFT join  {{ ref('raw_region')}} r
on t.regionid = r.regionid
LEFT join  {{ ref('raw_customer')}} c 
on c.customerid = o.customerid
LEFT JOIN  {{ ref('raw_shipper')}} s 
on s.shipperid = o.shipvia
LEFT JOIN  {{ ref('raw_order_detail')}} od
on o.orderid = od.orderid
LEFT JOIN  {{ ref('raw_product')}} p
on od.productid = p.productid
LEFT JOIN  {{ ref('raw_category')}} cat
on p.categoryid = cat.categoryid
LEFT JOIN  {{ ref('raw_supplier')}} sup
on p.supplierid = sup.supplierid #}


      