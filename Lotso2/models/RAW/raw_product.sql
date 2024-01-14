{{ config (materialized='table')}}

select*
from
{{ source('Lotso2', 'PRODUCT') }}