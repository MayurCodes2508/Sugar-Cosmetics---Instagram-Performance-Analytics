
    
    

select
    week_start as unique_field,
    count(*) as n_records

from "ecommerce_orders_analytics"."analytics"."fact_order_weekly_growth"
where week_start is not null
group by week_start
having count(*) > 1


