with customers as (
    SELECT DISTINCT
        CUSTOMER_ID,
        CUST_NAME AS CUSTOMER_NAME,
        DOB AS CUSTOMER_BIRTHDATE
    FROM
        {{source('DBTD','TBL_ORDERS')}}
)

SELECT * FROM customers