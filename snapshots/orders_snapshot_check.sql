{% snapshot orders_snapshot_check %}

{{
    config(
        target_schema='SNAPSHOTS',
        unique_key='order_id',
        strategy='check',
        check_cols=['AMOUNT']
    )
}}

SELECT
    ORDER_ID,
    CUSTOMER_ID,
    AMOUNT,
    ORDER_DATE,
    UPDATED_AT
FROM {{ ref("stg_orders") }}

{% endsnapshot %}