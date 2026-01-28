
  
    

  create  table "sugar_cosmetics_instagram_analytics"."public"."fact_top_10_posts_ranked_by_likes__dbt_tmp"
  
  
    as
  
  (
    

SELECT *
FROM "sugar_cosmetics_instagram_analytics"."public"."int_ranking_posts_by_likes"
WHERE like_rank <= 10
  );
  