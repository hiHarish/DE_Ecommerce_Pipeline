WITH last_order AS (
    SELECT
        user_id,
        MAX(order_date) AS last_order_date
    FROM `dataset.fct_orders`
    GROUP BY user_id
)

SELECT
    user_id,
    last_order_date,
    DATE_DIFF(CURRENT_DATE(), last_order_date, DAY) AS days_since_last_order,
    CASE
        WHEN DATE_DIFF(CURRENT_DATE(), last_order_date, DAY) > 90 THEN 'churned'
        ELSE 'active'
    END AS churn_status
FROM last_order;
