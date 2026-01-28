
  
    

  create  table "sugar_cosmetics_instagram_analytics"."public"."fact_kpi_overview__dbt_tmp"
  
  
    as
  
  (
    

SELECT COUNT(*) AS total_posts,
       SUM(likes) AS total_likes,
	   SUM(comments) AS total_comments,
	   SUM(reach) AS total_reach,
	   AVG((likes + comments + shares + saves)::float / NULLIF(reach, 0)) AS avg_engagement_rate
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"
  );
  