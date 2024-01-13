{{config(materialized='table')}}

select * from
{{source('Lotso2', 'ORDER_FRESH')}}