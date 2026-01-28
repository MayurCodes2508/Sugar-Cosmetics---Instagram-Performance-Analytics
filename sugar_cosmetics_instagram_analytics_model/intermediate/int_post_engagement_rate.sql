{{ config(materialized = 'table') }}

SELECT hashtags,
	   (likes + comments + shares + saves)::float / NULLIF(reach, 0) AS post_engagement_rate
FROM {{ ref('stg_instagram_posts') }}
WHERE hashtags IS NOT NULL