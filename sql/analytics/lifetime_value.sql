SELECT
    user_id,
    SUM(revenue) AS lifetime_value
FROM `dataset.fct_orders`
GROUP BY user_id
ORDER BY lifetime_value DESC;
