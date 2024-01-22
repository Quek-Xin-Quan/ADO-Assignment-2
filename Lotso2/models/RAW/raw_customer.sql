{{ config (materialized='table')}}

SELECT * FROM
{{ source('Lotso2', 'CUSTOMER') }}

