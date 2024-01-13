{{config(materialized='table')}}

SELECT * FROM 
{{source('Lotso2', 'ORDER_DETAIL_FRESH')}}