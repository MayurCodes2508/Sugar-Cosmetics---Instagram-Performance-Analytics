
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select follows
from "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"
where follows is null



  
  
      
    ) dbt_internal_test