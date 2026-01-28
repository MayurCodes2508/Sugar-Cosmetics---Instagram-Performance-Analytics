

SELECT hashtags,
       likes,
       DENSE_RANK() OVER (ORDER BY likes DESC) AS like_rank
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"