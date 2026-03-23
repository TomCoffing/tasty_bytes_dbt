SELECT
    customer_id,
    customer_name,
    SUM(order_amount) AS total_revenue
FROM {{ ref('int_sales') }}
GROUP BY
    customer_id,
    customer_name;                                          
