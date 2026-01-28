
  
    

  create  table "sugar_cosmetics_instagram_analytics"."public"."int_ranking_posts_by_post_engagement_rate__dbt_tmp"
  
  
    as
  
  (
    

SELECT post_date,
       post_type,
	   hashtags,
	   post_engagement_rate,
	   DENSE_RANK() OVER(ORDER BY post_engagement_rate DESC) AS post_engagement_rate_rank
FROM "sugar_cosmetics_instagram_analytics"."public"."int_post_engagement_rate"
  );
  