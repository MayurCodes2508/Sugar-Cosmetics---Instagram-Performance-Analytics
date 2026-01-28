
  
    

  create  table "sugar_cosmetics_instagram_analytics"."public"."fact_post_type_performance_comparison__dbt_tmp"
  
  
    as
  
  (
    

SELECT post_type,
       AVG(likes) AS avg_likes,
       AVG(comments) AS avg_comments,
       AVG(saves) AS avg_saves
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"
GROUP BY post_type
  );
  