{{ config(materialized='table') }}

SELECT hashtags,
       likes,
       DENSE_RANK() OVER (ORDER BY likes DESC) AS like_rank
FROM {{ ref('stg_instagram_posts') }}
WHERE hashtags IS NOT NULL