select 
    order_id,
    amount,
    amount + tax as order_metric
from {{ ref('int_order_metric') }}