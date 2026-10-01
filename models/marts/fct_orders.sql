{{ config(
    pre_hook="CREATE TABLE IF NOT EXISTS {{ target.database }}.{{ target.schema }}.AUDIT_LOG (MESSAGE VARCHAR)",
    post_hook="INSERT INTO {{ target.database }}.{{ target.schema }}.AUDIT_LOG VALUES ('fct_orders completed')"
) }}

SELECT
    ORDER_ID,
    CUSTOMER_ID,
    AMOUNT,
    {{ amount_in_thousands('AMOUNT') }} as AMOUNT_IN_THOUSANDS,
    ORDER_DATE
FROM
{{ ref("stg_orders") }}