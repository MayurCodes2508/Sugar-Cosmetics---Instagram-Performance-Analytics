
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "sugar_cosmetics_instagram_analytics"."public"."fact_hashtags_by_top_used"

where not(avg_engagement_rate >= 0 AND avg_engagement_rate <= 1)


  
  
      
    ) dbt_internal_test