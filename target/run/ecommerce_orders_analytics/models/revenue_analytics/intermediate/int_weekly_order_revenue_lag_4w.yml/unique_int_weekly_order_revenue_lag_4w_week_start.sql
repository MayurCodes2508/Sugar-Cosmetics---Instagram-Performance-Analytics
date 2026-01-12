
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    week_start as unique_field,
    count(*) as n_records

from "ecommerce_orders_analytics"."analytics"."int_weekly_order_revenue_lag_4w"
where week_start is not null
group by week_start
having count(*) > 1



  
  
      
    ) dbt_internal_test