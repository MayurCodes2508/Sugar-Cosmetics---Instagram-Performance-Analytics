{{ config(materialized = 'table') }}

SELECT COUNT(*) AS total_posts,
       SUM(likes) AS total_likes,
	   SUM(comments) AS total_comments,
	   SUM(reach) AS total_reach,
	   AVG((likes + comments + shares + saves)::float / NULLIF(reach, 0)) AS avg_engagement_rate
FROM {{ ref('stg_instagram_posts') }}