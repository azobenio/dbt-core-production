
  create view "dbt_warehouse"."dev_schema"."test_connection__dbt_tmp"
    
    
  as (
    SELECT 1 AS connection_test
  );