
  create view "dbt_warehouse"."dev_schema"."stg_ordes__dbt_tmp"
    
    
  as (
    SELECT 1 AS order_id,
       100 as amount
  );