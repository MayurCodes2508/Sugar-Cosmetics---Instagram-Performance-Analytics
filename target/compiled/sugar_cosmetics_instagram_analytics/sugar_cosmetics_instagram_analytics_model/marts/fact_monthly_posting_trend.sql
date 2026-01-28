

SELECT DATE_TRUNC('month', post_date)::date AS month,
       COUNT(*) AS total_posts
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"
GROUP BY month