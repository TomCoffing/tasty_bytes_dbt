
  create or replace   view SFTOM.PUBLIC.stg_orders
  
   as (
    SELECT
   ORDER_ID,
   CUSTOMER_ID,
   ITEM_ID,
   ORDER_TS, 
   QUANTITY,
   UNIT_PRICE
FROM SFTOM.PUBLIC.ORDERS_RAW
  );

