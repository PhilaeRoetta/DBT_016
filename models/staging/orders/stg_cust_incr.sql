 {{ config(
    materialized='incremental',
    unique_key = 'CUST_ID'
)}}

SELECT * FROM {{source('DBTD','INCR')}}
{% if is_incremental() %}
WHERE DATE_VALUE > (SELECT MAX(DATE_VALUE) FROM {{this}})
{% endif %}