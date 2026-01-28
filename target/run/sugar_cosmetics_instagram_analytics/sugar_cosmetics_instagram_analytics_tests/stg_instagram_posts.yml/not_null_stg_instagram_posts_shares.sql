
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select shares
from "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"
where shares is null



  
  
      
    ) dbt_internal_test