{{ config(materialized='incremental', unique_key='ORDERID') }}

Select* 
FROM {{ ref ('fresh_order_details') }}
{% if is_incremental() %}
WHERE CAST(ORDERID AS BIGINT) > (SELECT MAX(CAST(ORDERID AS BIGINT))  FROM {{this}})
{% endif %}

