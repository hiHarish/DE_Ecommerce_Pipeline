SELECT
    order_id,
    user_id,
    order_date,
    order_status,
    sale_price,
    CASE 
        WHEN order_status = 'returned' THEN 1
        ELSE 0
    END AS is_returned,

    CASE 
        WHEN order_status = 'complete' THEN sale_price
        ELSE 0
    END AS revenue

FROM `dataset.stg_orders`;
