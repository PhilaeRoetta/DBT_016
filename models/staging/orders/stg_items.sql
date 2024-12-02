with items as (
    SELECT DISTINCT
        ITEM_ID,
        ITEM_NAME
    FROM
        {{source('DBTD','TBL_ORDERS')}}
)

SELECT * FROM items