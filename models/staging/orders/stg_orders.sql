with orders as (
    SELECT 
        ORDER_ID,
        AMOUNT AS ORDER_AMOUNT,
        ORDER_TIME,
        CUSTOMER_ID,
        ITEM_ID
    FROM
        {{source('DBTD','TBL_ORDERS')}}
)
SELECT * FROM orders