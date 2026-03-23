SELECT
    o.order_id,
    o.customer_id,
    c.customer_name,
    o.order_date,
    o.order_amount
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_customers') }} c
  ON o.customer_id = c.customer_id;                                              
