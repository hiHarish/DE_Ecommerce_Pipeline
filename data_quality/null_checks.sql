SELECT COUNT(*) AS null_orders
FROM `dataset.fct_orders`
WHERE order_id IS NULL;
