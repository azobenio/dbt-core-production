select 
    order_id,
    amount,
    amount * 0.1 as tax
from "dbt_warehouse"."dev_schema"."stg_ordes"