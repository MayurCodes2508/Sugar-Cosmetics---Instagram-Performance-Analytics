
  
    

  create  table "sugar_cosmetics_instagram_analytics"."public"."int_post_engagement_rate__dbt_tmp"
  
  
    as
  
  (
    

SELECT hashtags,
	   (likes + comments + shares + saves)::float / NULLIF(reach, 0) AS post_engagement_rate
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"
WHERE hashtags IS NOT NULL
  );
  