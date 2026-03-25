
  create or replace   view SFTOM.PUBLIC.stg_customers
  
   as (
    SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    CITY,
    STATE,
    COUNTRY
FROM SFTOM.PUBLIC.CUSTOMERS_RAW
  );

