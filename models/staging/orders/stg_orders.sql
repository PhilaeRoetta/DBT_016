with orders as (
    SELECT 
        ORDER_ID,
        AMOUNT AS ORDER_AMOUNT,
        ORDER_TIME,
        CUSTOMER_ID,
        ITEM_ID
    FROM
        DBT.DBT_016.LAND_ORDERS
)
SELECT * FROM orders