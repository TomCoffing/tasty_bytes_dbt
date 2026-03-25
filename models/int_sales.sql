SELECT
    o.ORDER_ID,
    o.CUSTOMER_ID,
    c.FIRST_NAME,
    c.LAST_NAME,
    o.ORDER_TS,
    o.QUANTITY,
    o.UNIT_PRICE
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_customers') }} c
  ON o.CUSTOMER_ID = c.CUSTOMER_ID                                  
