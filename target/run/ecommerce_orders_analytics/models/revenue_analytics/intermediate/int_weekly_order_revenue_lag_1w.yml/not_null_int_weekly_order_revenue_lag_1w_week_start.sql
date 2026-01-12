
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select week_start
from "ecommerce_orders_analytics"."analytics"."int_weekly_order_revenue_lag_1w"
where week_start is null



  
  
      
    ) dbt_internal_test