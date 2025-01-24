{% snapshot  snap_customers_timestamp %}

{{
 config(
     strategy='timestamp',
     unique_key='id',
     updated_at='load_at'
)
}}
select id, full_name, email,phone,spent,load_at
from {{source('datafeed_shared_schema','customers')}}

{% endsnapshot %}