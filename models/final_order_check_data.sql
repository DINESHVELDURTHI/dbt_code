{{ config(materialized='table') }}


select * from {{ref('SNAP_ORDERS_CHECKS')}} where DBT_VALID_TO is null

