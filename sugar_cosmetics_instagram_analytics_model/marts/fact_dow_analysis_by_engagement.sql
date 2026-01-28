{{ config(materialized = 'table') }}

SELECT EXTRACT(DOW FROM post_date) AS weekday_num,
	   TRIM(TO_CHAR(post_date, 'Day')) AS weekday,
       AVG(likes + comments + shares + saves) AS avg_engagement
FROM {{ ref('stg_instagram_posts') }}
GROUP BY weekday_num,
         weekday