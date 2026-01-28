
  
    

  create  table "sugar_cosmetics_instagram_analytics"."public"."fact_engagement_funnel__dbt_tmp"
  
  
    as
  
  (
    

SELECT 'impressions' AS stage, SUM(impressions) AS value
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"

UNION ALL
SELECT 'reach', SUM(reach)
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"

UNION ALL
SELECT 'likes', SUM(likes)
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"

UNION ALL
SELECT 'comments', SUM(comments)
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"

UNION ALL
SELECT 'shares', SUM(shares)
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"

UNION ALL
SELECT 'saves', SUM(saves)
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"
  );
  