
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select hashtag
from "sugar_cosmetics_instagram_analytics"."public"."int_hashtag_array_breakdown"
where hashtag is null



  
  
      
    ) dbt_internal_test