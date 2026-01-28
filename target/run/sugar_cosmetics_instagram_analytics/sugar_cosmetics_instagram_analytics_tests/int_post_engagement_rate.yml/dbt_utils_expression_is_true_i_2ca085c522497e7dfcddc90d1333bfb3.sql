
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "sugar_cosmetics_instagram_analytics"."public"."int_post_engagement_rate"

where not(post_engagement_rate >= 0 AND post_engagement_rate <= 1)


  
  
      
    ) dbt_internal_test