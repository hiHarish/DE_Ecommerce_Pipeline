SELECT *
FROM (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY order_id, user_id
               ORDER BY order_date DESC
           ) AS rn
    FROM `dataset.stg_orders`
)
WHERE rn = 1;
