
  
    

  create  table "sugar_cosmetics_instagram_analytics"."public"."fact_monthly_posting_trend__dbt_tmp"
  
  
    as
  
  (
    

SELECT DATE_TRUNC('month', post_date)::date AS month,
       COUNT(*) AS total_posts
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"
GROUP BY month
  );
  