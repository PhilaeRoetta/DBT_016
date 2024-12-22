with customers as (
    SELECT DISTINCT
        CUSTOMER_ID,
        CUST_NAME AS CUSTOMER_NAME,
        DOB AS CUSTOMER_BIRTHDATE
    FROM
        {{unit_test(ref('input_orders'),source('DBTD','TBL_ORDERS'))}}
)

SELECT * FROM customers