

SELECT hashtag,
       COUNT(*) AS post_count,
       AVG((likes + comments + shares + saves)::float / NULLIF(reach,0)) AS avg_engagement_rate,
       AVG(reach) AS avg_reach
FROM "sugar_cosmetics_instagram_analytics"."public"."int_hashtag_array_breakdown"
GROUP BY hashtag