
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        consistency_score_flag as value_field,
        count(*) as n_records

    from "ecommerce_orders_analytics"."analytics"."fact_order_revenue_consistency"
    group by consistency_score_flag

)

select *
from all_values
where value_field not in (
    'Insufficient Data','Volatile','Consistent','Stable'
)



  
  
      
    ) dbt_internal_test