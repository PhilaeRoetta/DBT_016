with items as (
    SELECT DISTINCT
        ITEM_ID,
        ITEM_NAME
    FROM
        DBT.DBT_016.LAND_ORDERS
)

SELECT * FROM items