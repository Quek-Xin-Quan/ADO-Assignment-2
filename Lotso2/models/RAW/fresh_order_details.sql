{{config(materialized='table')}}

SELECT * FROM 
{{ source('Lotso2', 'FRESH_ORDER_DETAILS' )}}