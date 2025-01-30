{{ config( materialized="table",
        pre_hook="TRUNCATE TABLE {{ this }}",
        post_hook="TRUNCATE TABLE {{ ref('fact_orders')}}"

    ) }}

WITH tb1 as(
 select 
 *
 from {{ ref('fact_orders')}})
select * from tb1