{{ config(materialized = 'table') }}

SELECT post_type,
       AVG(likes) AS avg_likes,
       AVG(comments) AS avg_comments,
       AVG(saves) AS avg_saves
FROM {{ ref('stg_instagram_posts') }}
GROUP BY post_type