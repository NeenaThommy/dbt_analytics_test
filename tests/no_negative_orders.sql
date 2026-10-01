SELECT *
FROM {{ ref('fct_orders') }}
WHERE AMOUNT < 0