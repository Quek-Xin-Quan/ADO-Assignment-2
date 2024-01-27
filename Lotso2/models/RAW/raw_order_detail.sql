{{ config(materialized='incremental') }}

Select* 
FROM {{ ref ('fresh_order_details') }}
{% if is_incremental() %}
WHERE CAST(ORDERID AS BIGINT) > (SELECT MAX(CAST(ORDERID AS BIGINT))  FROM {{this}})
{% endif %}

--{{ config (materialized='table')}}

--Select*
--from
--{{ source('Lotso2', 'ORDERDETAIL') }}