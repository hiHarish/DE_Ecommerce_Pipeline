SELECT
    user_id,
    COUNT(*) AS txn_count,
    MIN(order_date) AS window_start,
    MAX(order_date) AS window_end
FROM `dataset.fct_orders`
GROUP BY
    user_id,
    TIMESTAMP_TRUNC(TIMESTAMP(order_date), MINUTE)
HAVING COUNT(*) >= 3;
