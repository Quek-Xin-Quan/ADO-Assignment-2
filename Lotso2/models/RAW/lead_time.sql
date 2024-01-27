SELECT *, DATEDIFF(day, OrderDate, ShippedDate) AS LeadTime
FROM {{ ref ('raw_orders') }}