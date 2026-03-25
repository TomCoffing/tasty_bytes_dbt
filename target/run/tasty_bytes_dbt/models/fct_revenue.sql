
  create or replace   view SFTOM.PUBLIC.fct_revenue
  
   as (
    SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    SUM(QUANTITY * UNIT_PRICE) AS TOTAL_REVENUE
FROM SFTOM.PUBLIC.int_sales
GROUP BY
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME
  );

