{{ config(materialized = 'table') }}

SELECT DATE_TRUNC('month', post_date)::date AS month,
       COUNT(*) AS total_posts
FROM {{ ref('stg_instagram_posts') }}
GROUP BY month