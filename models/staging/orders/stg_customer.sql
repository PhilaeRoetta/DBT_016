with customers as (
    SELECT DISTINCT
        CUSTOMER_ID,
        CUST_NAME AS CUSTOMER_NAME,
        DOB AS CUSTOMER_BIRTHDATE
    FROM
        DBT.DBT_016.LAND_ORDERS
)

SELECT * FROM customers