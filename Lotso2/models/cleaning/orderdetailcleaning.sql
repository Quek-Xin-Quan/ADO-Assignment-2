-- acceptable for orderid to have more than one occurance due to different products within each order
-- SELECT orderid, COUNT(*)
-- FROM raw_order_detail
-- GROUP BY orderid
-- HAVING COUNT(*) > 1;


-- SELECT *
-- FROM raw_order_detail
-- WHERE raw_order_detail.orderid IN (
--     SELECT ro.orderid
--     FROM RAW_ORDER_DETAIL ro
--     GROUP BY ro.orderid, ro.productid
--     HAVING COUNT(*) > 1
-- );



