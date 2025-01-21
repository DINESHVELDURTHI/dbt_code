{{ config(materialized='table') }}

WITH tb1 as(
  select
      id AS CUSTOMER_ID,
      first_name,
      last_name
      from {{source('datafeed_shared_schema','RAW_CUSTOMERS')}})
      select * from tb1