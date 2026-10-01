{% snapshot orders_snapshot %}

{{
    config(
        target_schema='SNAPSHOTS',
        unique_key='order_id',
        strategy='timestamp',
        updated_at='updated_at'
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