
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select weekly_revenue
from "ecommerce_orders_analytics"."analytics"."int_weekly_order_revenue"
where weekly_revenue is null



  
  
      
    ) dbt_internal_test