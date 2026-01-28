
  
    

  create  table "sugar_cosmetics_instagram_analytics"."public"."fact_top_10_posts_ranked_by_post_engagement_rate__dbt_tmp"
  
  
    as
  
  (
    

SELECT *
FROM "sugar_cosmetics_instagram_analytics"."public"."int_ranking_posts_by_post_engagement_rate"
WHERE post_engagement_rate_rank <= 10
  );
  