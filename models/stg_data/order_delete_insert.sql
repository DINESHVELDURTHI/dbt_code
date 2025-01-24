{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert",
         
) }}

select * from DI_DEV.CUSTOMER.RAW_ORDERS
