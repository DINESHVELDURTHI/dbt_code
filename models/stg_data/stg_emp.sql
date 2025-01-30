
{{ config(materialized='table')}}

select
  EMP_ID,
  FIRST_NAME,
  SALARY,
  TAX_AMOUNT,
  ({{calculate_amount('salary','tax_amount')}}) as total_amount
 from {{source('datafeed_shared_schema','EMPLOYEE_TEMP1')}}
