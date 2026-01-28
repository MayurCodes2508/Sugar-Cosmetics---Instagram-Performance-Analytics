{{ config(materialized = 'table') }}

SELECT hashtags,
	   post_engagement_rate,
	   DENSE_RANK() OVER(ORDER BY post_engagement_rate DESC) AS post_engagement_rate_rank
FROM {{ ref('int_post_engagement_rate') }}