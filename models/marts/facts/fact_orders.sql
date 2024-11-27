with fact_orders as (
    SELECT
        C.CUSTOMER_ID,
        I.ITEM_ID,
        COUNT(DISTINCT O.ORDER_ID) AS NB_ORDER,
        SUM(O.ORDER_AMOUNT) AM_ORDER
    FROM
        {{ref('stg_customer')}} C
    LEFT JOIN
        {{ref('stg_orders')}} O 
    ON
        C.CUSTOMER_ID = O.CUSTOMER_ID
    LEFT JOIN
        {{ref('stg_items')}} I 
    ON
        O.ITEM_ID = I.ITEM_ID
    GROUP BY
        C.CUSTOMER_ID,
        I.ITEM_ID        
)

SELECT * FROM fact_orders