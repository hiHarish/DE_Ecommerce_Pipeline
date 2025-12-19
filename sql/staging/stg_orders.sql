-- stg_orders.sql
-- Cleaned & standardized orders table

WITH source AS (
    SELECT
        order_id,
        user_id,
        status,
        created_at,
        shipped_at,
        delivered_at,
        returned_at,
        sale_price
    FROM `bigquery-public-data.thelook_ecommerce.order_items`
),

cleaned AS (
    SELECT
        CAST(order_id AS INT64)               AS order_id,
        CAST(user_id AS INT64)                AS user_id,
        LOWER(status)                         AS order_status,
        DATE(created_at)                      AS order_date,
        DATE(shipped_at)                      AS shipped_date,
        DATE(delivered_at)                    AS delivered_date,
        DATE(returned_at)                     AS returned_date,
        SAFE_CAST(sale_price AS FLOAT64)      AS sale_price
    FROM source
    WHERE order_id IS NOT NULL
)

SELECT * FROM cleaned;
