
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"

where not(follows >= 0)


  
  
      
    ) dbt_internal_test