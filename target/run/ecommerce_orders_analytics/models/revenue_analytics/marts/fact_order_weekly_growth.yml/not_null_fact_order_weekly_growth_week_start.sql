
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select week_start
from "ecommerce_orders_analytics"."analytics"."fact_order_weekly_growth"
where week_start is null



  
  
      
    ) dbt_internal_test