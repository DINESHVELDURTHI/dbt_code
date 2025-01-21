
{{ config(materialized='view')}}

select
  id,
  order_date,
  user_id
 from {{source('datafeed_shared_schema','RAW_ORDERS')}}
