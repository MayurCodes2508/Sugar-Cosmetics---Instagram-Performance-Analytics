
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select profile_visits
from "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"
where profile_visits is null



  
  
      
    ) dbt_internal_test