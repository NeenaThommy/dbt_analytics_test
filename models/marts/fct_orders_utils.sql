SELECT
    {{ dbt_utils.star(from=ref('stg_orders')) }}
FROM {{ ref('stg_orders') }}