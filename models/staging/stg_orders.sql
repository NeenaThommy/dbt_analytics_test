SELECT
    ORDER_ID,
    CUSTOMER_ID,
    AMOUNT,
    ORDER_DATE,
    UPDATED_AT
FROM {{ source('raw', 'RAW_ORDERS') }}