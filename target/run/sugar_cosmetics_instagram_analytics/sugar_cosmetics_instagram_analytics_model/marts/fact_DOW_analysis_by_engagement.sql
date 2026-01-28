
  
    

  create  table "sugar_cosmetics_instagram_analytics"."public"."fact_dow_analysis_by_engagement__dbt_tmp"
  
  
    as
  
  (
    

SELECT EXTRACT(DOW FROM post_date) AS weekday_num,
	   TRIM(TO_CHAR(post_date, 'Day')) AS weekday,
       AVG(likes + comments + shares + saves) AS avg_engagement
FROM "sugar_cosmetics_instagram_analytics"."public"."stg_instagram_posts"
GROUP BY weekday_num,
         weekday
  );
  