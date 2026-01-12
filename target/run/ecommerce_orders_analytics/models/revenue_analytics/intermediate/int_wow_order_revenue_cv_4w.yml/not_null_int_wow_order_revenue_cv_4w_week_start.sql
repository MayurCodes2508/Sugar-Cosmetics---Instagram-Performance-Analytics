
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select week_start
from "ecommerce_orders_analytics"."analytics"."int_wow_order_revenue_cv_4w"
where week_start is null



  
  
      
    ) dbt_internal_test