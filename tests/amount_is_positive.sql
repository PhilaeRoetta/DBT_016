SELECT
    *
FROM
    {{source('DBTD','TBL_ORDERS')}}
WHERE
    AMOUNT < 0