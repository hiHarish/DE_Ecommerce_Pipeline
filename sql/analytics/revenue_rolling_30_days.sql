SELECT
    order_date,
    SUM(revenue) AS daily_revenue,
    SUM(SUM(revenue)) OVER (
        ORDER BY order_date
        ROWS BETWEEN 29 PRECEDING AND CURRENT ROW
    ) AS rolling_30_day_revenue
FROM `dataset.fct_orders`
GROUP BY order_date
ORDER BY order_date;
