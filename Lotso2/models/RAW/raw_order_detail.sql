{{ config (materialized='table')}}

Select*
from
{{ source('Lotso2', 'ORDERDETAIL') }}
