
  create view "dbt_warehouse"."dev_schema"."int_order_metric__dbt_tmp"
    
    
  as (
    select 
    order_id,
    amount,
    amount * 0.1 as tax
from "dbt_warehouse"."dev_schema"."stg_ordes"
  );