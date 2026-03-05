select 
    order_id,
    amount,
    amount + tax as order_metric
from "dbt_warehouse"."dev_schema"."int_order_metric"