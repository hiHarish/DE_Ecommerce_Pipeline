SELECT
    order_id,
    COUNT(*) AS cnt
FROM `dataset.fct_orders`
GROUP BY order_id
HAVING COUNT(*) > 1;
